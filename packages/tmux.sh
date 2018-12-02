##########################################
# Requirements:                          #
# - Installed packages                   #
#   - git                                #
# - Set variables                        #
#   - HOME (mostly set by your shell)    #
##########################################

function installTPM {
    if [ ! -d "$HOME/.tmux/plugins/tpm" ]; then
        echo "${RED}tmux plugin manager is not installed. Installing it${RESET}"
        git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm
        echo "${GREEN}tmux plugin manager installed${RESET}"
    else
        echo "${YELLOW}tmux plugin manager is already installed${RESET}"
    fi
}
