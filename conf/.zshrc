# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# fpath=( ~/.zshell/completion "${fpath[@]}" )

export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

autoload -Uz compinit && compinit -i
autoload bashcompinit && bashcompinit

for conf_file  in $(ls .zsh_conf.d); do
    source ~/.zsh_conf.d/${conf_file}
done


# User configuration

alias dckclean='docker kill $(docker ps -q) && docker rm $(docker ps -a -q)'

mkans() {
  mkdir -p $1/{files,templates,tasks,handlers,vars,defaults,meta}
}

export EDITOR=vim
export PATH=$PATH:${HOME}/bin

