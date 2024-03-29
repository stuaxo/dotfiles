# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /usr/share/zsh-antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle pip
antigen bundle command-not-found

antigen bundle dirhistory
antigen bundle fzf
antigen bundle per-directory-history
antigen bundle virtualenv
antigen bundle virtualenvwrapper
antigen bundle zsh-autosuggestions
antigen bundle zsh-interactive-cd

#  plugins=(autojump adb aws command-not-found celery copypath direnv dirhistory fzf git per-directory-history virtualenv virtualenvwrapper zsh-autosuggestions zsh-interactive-cd zsh-syntax-highlighting)

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme romkatv/powerlevel10k

# Tell Antigen that you're done.
antigen apply

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi

export PATH=$PATH:~/.local/bin

alias wine32='WINEARCH=win32 WINEPREFIX=~/.wine32 wine'
alias wine64='WINEARCH=win64 WINEPREFIX=~/.wine64 wine'
alias winetricks32='WINEARCH=win32 WINEPREFIX=~/.wine32 winetricks'
alias winetricks64='WINEARCH=win64 WINEPREFIX=~/.wine64 winetricks'

win32() {
    export WINEARCH=win32
    export WINEPREFIX=~/.wine32
}
win64() {
    export WINEARCH=win64
    export WINEPREFIX=~/.wine64
}
