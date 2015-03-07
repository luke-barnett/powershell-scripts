$rootUrl = 'https://raw.githubusercontent.com/luke-barnett/boxstarter-scripts/master/'

function RunBoxstarter($scriptName) {
  Install-BoxstarterPackage -PackageName ($rootUrl + $scriptName) -DisableReboots
}

function Install-Boxstarter-All {
  RunBoxstarter 'boxstarter.ps1'
}

function Install-Boxstarter-Atom {
  RunBoxstarter 'atom-profile.ps1'
}

function Install-Boxstarter-DevTools {
  RunBoxstarter 'dev-tools.ps1'
}

function Install-Boxstarter-Essentials {
  RunBoxstarter 'essentials.ps1'
}

function Install-Boxstarter-Git {
  RunBoxstarter 'git-tools.ps1'
}

function Install-Boxstarter-Utilities {
  RunBoxstarter 'utilities.ps1'
}

function Install-Boxstarter-PersonalUtilities {
  RunBoxstarter 'personal-utilities.ps1'
}

function Install-Boxstarter-VisualStudio {
  RunBoxstarter 'visualstudio.ps1'
}

export-modulemember -function Install-*
