##########################################
# Requirements:                          #
# - Commands:                            #
#   - tempfile                           #
# - Scripts                              #
#   - installer.sh                       #
#   - services/github.sh                 #
##########################################

function installToggl {
    InstallSubstep Fetching latest Toggl release

    latestRelease=$(getLatestGitHubReleaseUrlWithSpecificFileExtension "toggl/toggldesktop" ".tar.gz")
    
    InstallSubstep Downloading Toggl

    togglFile=`tempfile`
    curl --silent -L -o $togglFile $latestRelease

    InstallSubstep Unpacking Toggl

    tar xzf $togglFile

    InstallSubstep Removing downloaded file

    rm $togglFile

    InstallSubstep Moving Toggl to the right directory

    sudo mv toggldesktop /opt/

    InstallSubstep Installing Toggl
    
    ln -s /opt/toggldesktop/TogglDesktop $HOME/Schreibtisch/Toggl
}