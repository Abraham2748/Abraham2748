# ============================================================================
# Git Bash Configuration
# ============================================================================

# ----------------------------------------------------------------------------
# Git Aliases - Shortcuts for common git operations
# ----------------------------------------------------------------------------
alias pull='git pull'                          # Pull latest changes from remote
alias push='git push'                          # Push commits to remote
alias abort='git merge --abort'                # Abort a merge in progress
alias main='git checkout main && git pull'     # Switch to main branch and pull latest

# ----------------------------------------------------------------------------
# Shell Configuration Aliases
# ----------------------------------------------------------------------------
alias customs='code ~/.bashrc'                 # Open this file in VS Code for editing
alias refresh='source ~/.bashrc'               # Reload .bashrc without restarting terminal

# ----------------------------------------------------------------------------
# Project Shortcuts - TerraDotta Development
# ----------------------------------------------------------------------------
# Next Gen Program Discovery
alias pd='cd /c/TerraDotta/tds-next-gen-admin-shell/sa/frontend/program-discovery && npm run local'

# TDS Angular - Management Tool
alias mt='cd /c/TerraDotta/tds-core/frontend/tds-angular && npm run mt'
alias mt-clean='cd /c/TerraDotta/tds-core/frontend/tds-angular && npm run mt-clean'

# ----------------------------------------------------------------------------
# Node Version Manager (NVM) - Quick version switching
# ----------------------------------------------------------------------------
alias node14='nvm use 14'                      # Switch to Node.js v14.x.x
alias node18='nvm use 18'                      # Switch to Node.js v18.x.x
alias node22='nvm use 22'                      # Switch to Node.js v22.x.x

# ----------------------------------------------------------------------------
# Custom Prompt Configuration
# ----------------------------------------------------------------------------
# Enhanced prompt with:
# - 📁 Folder icon and current working directory
# - 🌿 Git branch indicator
# - ➜ Arrow prompt on new line for better readability
PS1='\[\033[1;34m\]📁 \w \[\033[0;36m\]🌿`__git_ps1 " (%s)"`\[\033[0m\]\n➜  '

# ----------------------------------------------------------------------------
# Angular CLI Autocompletion
# ----------------------------------------------------------------------------
# Load Angular CLI autocompletion only if Angular CLI v20 is installed
# This provides tab completion for ng commands
if command -v ng &> /dev/null; then
  if ng version 2>/dev/null | grep -q "Angular CLI: 20"; then
    source <(ng completion script)
  fi
fi
