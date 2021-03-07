echo 'Hello from .zshrc'

# ### items needing to be installed and various pre-req commands ###
#   install exa, batcat, fd-find
#
# ------------
## sim link creations (so i don't have to remember) ##
##  ln -s <abs/relative path to real/src file/> <absolute or relative path to the fake, false, target item/> 
#   ln -s ~/.dotfiles/zshrc ~/.zshrc
#
# ------------

# # set variables #
#Command-line tools - Fail-safe command aliases
#• $AGENT[x] environment variable use with other commands:
export AGENT1="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36"
export AGENT2="Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)"
export AGENT="$AGENT1"
alias curl="curl -A '$AGENT'"
alias wget="wget -U '$AGENT'"
alias nmap="nmap --script-args=\"http.useragent='$AGENT'\""
##additionl example for wpscan
##wpscan --ua "$AGENT" --url 127.0.0.1


# # change ZSH options #


# # Create Aliases #
# to use original command if alias overwrites the name use `command <ls>` to invoke the original ls
alias ls='exa -halF --group-directories-first --sort extension'
alias rsrc="source ~/.zshrc"
alias esrc="vim ~/.zshrc"


# # customize prompt(s) #
# %L shows the $SHLVL (shell level) to help know how deep within shells one might be
# %n == username
# %m == machine name
PROMPT='
%1~ %L  %#>> '

#RPROMPT='%*'


# # Add locations to $PATH Variables #


# # Write Handy Functions #
function mkcd() {
    mkdir -p "$@" && cd "$_";
}



# # Use ZSH Plugins #


# # ... and other surprises #


