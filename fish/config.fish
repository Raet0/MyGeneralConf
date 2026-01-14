#Configuracion de fish:
# --- OH MY POSH (Mantén tu línea aquí si la tienes) ---
oh-my-posh init fish --config https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/catppuccin_frappe.omp.json | source
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
# 1. Quitar el mensaje de bienvenida
set -g fish_greeting ""

# 2. Configuración avanzada de EZA (ls con esteroides)
if type -q eza
    set -l eza_params --icons --group-directories-first --git
    alias ls="eza $eza_params"
    alias ll="eza $eza_params --long --header --no-user"
    alias la="eza $eza_params --long --header --all"
    alias lt="eza $eza_params --tree --level=2"
    alias lta="eza $eza_params --tree --level=2 --all"
end

# 3. Configuración de BAT (cat con esteroides)
# Debian instala bat como 'batcat', esto lo unifica:
if type -q batcat
    alias bat="batcat"
end

# Solo aplicar si bat (o el alias) existe
if type -q bat
    # Reemplazar cat clásico por bat
    alias cat="bat"

    # Usar bat para colorear las páginas del manual (man)
    set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"
end
fnm env --use-on-cd | source

# pnpm
set -gx PNPM_HOME "/home/Rafael/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

# zellij
if set -q ZELLIJ
else
    zellij
end
