# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/cain/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# zsh parameter completion for the dotnet CLI

_dotnet_zsh_complete()
{
  local completions=("$(dotnet complete "$words")")

  reply=( "${(ps:\n:)completions}" )
}

compctl -K _dotnet_zsh_complete dotnet

# load zgenom
source "${HOME}/.zgenom/zgenom.zsh"

zgenom ohmyzsh

zgenom ohmyzsh plugins/git
zgenom load zsh-users/zsh-syntax-highlighting
zgenom load chrissicool/zsh-256color
zgenom load zsh-users/zsh-history-substring-search
zgenom load romkatv/powerlevel10k powerlevel10k

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

eval $(thefuck --alias)


alias windows-update="yay ; sudo apt update ; sudo apt upgrade ; sudo brl update"
alias windows-fucking-update="yay -Syu --noconfirm ; sudo apt update ; sudo apt upgrade -y ; sudo brl update"

alias nf="neofetch | lolcat"
alias archfetch="neofetch --ascii_distro arch"
alias endfetch="neofetch --ascii_distro endeavouros"
alias debfetch="neofetch --ascii_distro debian"
alias arcofetch="neofetch --ascii_distro arcolinux"
alias rainbowarco="arcofetch | lolcat"
alias tumblefetch="neofetch --ascii_distro opensuse_tumbleweed"
alias rainbowweed="tumblefetch | lolcat"

alias pfpfetch="neofetch --kitty ~/Pictures/pfp.png --size 25% --colors #fff"