# Variables
$pwshdir = Join-Path $HOME -ChildPath "Documents/PowerShell/"
$nvimdir = Join-Path $env:LOCALAPPDATA -ChildPath "nvim/lua"
$lvimdir = Join-Path $env:LOCALAPPDATA -ChildPath "lvim"
$dotfiles = Join-Path $HOME -ChildPath "dotfiles"

# Aliases
Set-Alias vim 'C:\Users\isaac\.local\bin\lvim.ps1'
function Invoke-Dotfiles { & git --git-dir=$HOME/dotfiles/ --work-tree=$HOME $args }
Set-Alias dotfiles Invoke-Dotfiles

# Better completion
Set-PSReadLineOption -PredictionViewStyle ListView

# Prompt
oh-my-posh init pwsh --config "$pwshdir/posh.omp.json" | Invoke-Expression
