# ----------------------------------------------------------------------------
# Shell Configuration Aliases
# ----------------------------------------------------------------------------
alias customs='code ~/.zshrc'      # Open this file in VS Code for editing
alias refresh='source ~/.zshrc'    # Reload .zshrc without restarting terminal


# ----------------------------------------------------------------------------
# Custom Prompt Configuration
# ----------------------------------------------------------------------------

autoload -Uz colors && colors
setopt PROMPT_SUBST

git_branch() {
  local branch
  branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
  if [[ -n "$branch" ]]; then
    echo "🌿 $branch"
  fi
}

PROMPT=$'%F{blue}📁 %~ %F{cyan}$(git_branch)%f\n➜ '

# ----------------------------------------------------------------------------
# Git Aliases - Shortcuts for common git operations
# ----------------------------------------------------------------------------
alias pull='git pull'                          # Pull latest changes from remote
alias push='git push'                          # Push commits to remote
alias abort='git merge --abort'                # Abort a merge in progress
alias main='git checkout main && git pull'     # Switch to main branch and pull latest
