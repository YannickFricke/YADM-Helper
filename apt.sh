##########################################
# Requirements:                          #
# - Installed packages:                  #
#   - sudo                               #
#   - dpkg-query                         #
# - Scripts:                             #
#   - colors.sh                          #
##########################################

declare -a aptPackages

function addAptPackages {
    aptPackages+=($@)
}

function installAptPackages {
    for package in ${aptPackages[*]}
    do
        if [ $(dpkg-query -W -f='${Status}' $package 2>/dev/null | grep -c "ok installed") -eq 0 ];
        then
            echo "${RED}$package is not installed${RESET}"
            sudo apt-get install -y -qq $package > /dev/null;
            echo "${GREEN}$package is now installed${RESET}"
        else
            echo "${YELLOW}$package is already installed${RESET}"
        fi
    done
}

function updateAPTSources {
    sudo apt-get update -qq 2>&1
}
