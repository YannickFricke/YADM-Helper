##########################################
# Requirements:                          #
# - Installed packages                   #
#   - cUrl                               #
#   - jq                                 #
##########################################

# Usage: getLatestGitHubReleaseUrlWithSpecificFileExtension UsernameOrOrganization/Reponame fileExtension
# Example: getLatestGitHubReleaseUrlWithSpecificFileExtension "toggl/toggldesktop" ".tar.gz"
function getLatestGitHubReleaseUrlWithSpecificFileExtension {
	curl --silent "https://api.github.com/repos/$1/releases" | jq -r "first(.[] | .assets[] | select(.name | endswith(\"$2\"))).browser_download_url"
}
