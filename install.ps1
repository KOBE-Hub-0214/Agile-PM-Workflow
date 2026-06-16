<#
  Agile PM Workflow - one-shot installer (Windows PowerShell)
  Usage:  .\install.ps1 [-Target <key|path>]
    Target: claude | kiro | trae | cursor | gemini  OR an explicit skills dir path
    Default: claude  ->  ~\.claude\skills
#>
param([string]$Target = "claude")

$ErrorActionPreference = "Stop"
$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path

switch ($Target) {
  { $_ -in "claude","kiro" } { $SkillsDir = Join-Path $HOME ".claude\skills" }
  "trae"   { $SkillsDir = Join-Path $HOME ".trae\skills" }
  "cursor" { $SkillsDir = Join-Path $HOME ".cursor\skills" }
  "gemini" { $SkillsDir = Join-Path $HOME ".gemini\skills" }
  default  { $SkillsDir = $Target }   # treat as an explicit path
}

$ImpeccableSubdirs = @("impeccable","arrange","typeset","colorize","delight","polish","critique")

Write-Host "==> Installing Agile PM Workflow into: $SkillsDir"
New-Item -ItemType Directory -Force -Path $SkillsDir | Out-Null

# 1) main workflow skill -> skills\agile-pm-workflow
Write-Host "    - agile-pm-workflow"
$dest = Join-Path $SkillsDir "agile-pm-workflow"
if (Test-Path $dest) { Remove-Item -Recurse -Force $dest }
Copy-Item -Recurse -Force (Join-Path $ScriptDir "agile-pm-workflow_skill") $dest

# 2) bundled Impeccable skills -> skills\<name>
foreach ($d in $ImpeccableSubdirs) {
  Write-Host "    - $d"
  $target = Join-Path $SkillsDir $d
  if (Test-Path $target) { Remove-Item -Recurse -Force $target }
  Copy-Item -Recurse -Force (Join-Path $ScriptDir "impeccable_skill\$d") $target
}

# 3) attribution files travel with the impeccable hub (Apache 2.0 requirement)
Copy-Item -Force (Join-Path $ScriptDir "impeccable_skill\LICENSE")   (Join-Path $SkillsDir "impeccable\LICENSE")
Copy-Item -Force (Join-Path $ScriptDir "impeccable_skill\NOTICE.md") (Join-Path $SkillsDir "impeccable\NOTICE.md")

Write-Host ""
Write-Host "==> Done. Installed 1 workflow skill + $($ImpeccableSubdirs.Count) Impeccable skills."
Write-Host "    Restart your AI IDE, then type  /agile-pm-workflow  to start."
Write-Host ""
Write-Host "    Optional: UI/UX Pro Max (external, MIT) is NOT bundled."
Write-Host "    Install separately for the full design-system stage:"
Write-Host "      https://github.com/nextlevelbuilder/ui-ux-pro-max-skill"
