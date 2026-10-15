<#
Zet de bestanden van claude-code-starter in een klantrepo, zonder dat ze in git terechtkomen.

Gebruik, vanuit de map van de klantrepo:
    & <pad naar claude-code-starter>\install.ps1

Of met een doelmap:
    & <pad naar claude-code-starter>\install.ps1 -Target <pad naar klantrepo>

Wat het doet:
- CLAUDE.local.md met je werkregels in de root (een bestaande wordt niet overschreven)
- de skills omgevingsscan en loop in .claude/skills (worden bijgewerkt)
- al deze paden in .git/info/exclude, zodat git ze negeert zonder dat .gitignore verandert
#>
param(
    [string]$Target = (Get-Location).Path
)

$ErrorActionPreference = 'Stop'
$source = Join-Path $PSScriptRoot 'bestanden'
$Target = (Resolve-Path $Target).Path

# De git-map van de klantrepo, ook als het een worktree is
$gitDir = & git -C $Target rev-parse --git-common-dir 2>$null
if ($LASTEXITCODE -ne 0 -or -not $gitDir) {
    throw "$Target is geen git-repo. Start dit script vanuit de map van je klantrepo."
}
if (-not [System.IO.Path]::IsPathRooted($gitDir)) { $gitDir = Join-Path $Target $gitDir }

# Werkregels: nooit een bestaand bestand overschrijven, daar staan jouw geleerde regels in
$localMd = Join-Path $Target 'CLAUDE.local.md'
if (Test-Path $localMd) {
    Write-Host 'CLAUDE.local.md bestaat al, laat ik staan.'
} else {
    Copy-Item (Join-Path $source 'CLAUDE.local.md') $localMd
    Write-Host 'CLAUDE.local.md met werkregels toegevoegd.'
}

# Heeft het team een AGENTS.md en geen CLAUDE.md, dan laat CLAUDE.local.md hem meeladen.
# Zonder die regel leest Claude Code AGENTS.md niet zodra er een CLAUDE.local.md is.
$hasAgents = Test-Path (Join-Path $Target 'AGENTS.md')
$hasClaude = (Test-Path (Join-Path $Target 'CLAUDE.md')) -or (Test-Path (Join-Path $Target '.claude\CLAUDE.md'))
if ($hasAgents -and -not $hasClaude) {
    $content = Get-Content $localMd -Raw
    if ($content -notmatch '(?m)^@AGENTS\.md\s*$') {
        [System.IO.File]::WriteAllText($localMd, "@AGENTS.md`r`n`r`n" + $content, (New-Object System.Text.UTF8Encoding $false))
        Write-Host '@AGENTS.md bovenaan CLAUDE.local.md gezet, zodat de teamregels meeladen.'
    }
}

# Skills: altijd de nieuwste versie
$skills = @('omgevingsscan', 'loop')
foreach ($skill in $skills) {
    $dest = Join-Path $Target ".claude\skills\$skill"
    New-Item -ItemType Directory -Force $dest | Out-Null
    Copy-Item (Join-Path $source ".claude\skills\$skill\*") $dest -Recurse -Force
    Write-Host "Skill /$skill geplaatst."
}

# Lokaal negeren via .git/info/exclude
$exclude = Join-Path $gitDir 'info\exclude'
New-Item -ItemType Directory -Force (Split-Path $exclude) | Out-Null
if (-not (Test-Path $exclude)) { New-Item -ItemType File $exclude | Out-Null }
$existing = Get-Content $exclude
$lines = @('CLAUDE.local.md') + ($skills | ForEach-Object { ".claude/skills/$_/" })
$added = @()
foreach ($line in $lines) {
    if ($existing -notcontains $line) { $added += $line }
}
if ($added.Count -gt 0) {
    $text = "`r`n# claude-code-starter: lokaal, niet in git`r`n" + ($added -join "`r`n") + "`r`n"
    [System.IO.File]::AppendAllText($exclude, $text, (New-Object System.Text.UTF8Encoding $false))
}
Write-Host 'Bestanden staan in .git/info/exclude en gaan niet mee naar git.'
Write-Host ''
Write-Host 'Klaar. Start Claude Code in deze map en typ /omgevingsscan.'
