$rootUrl = 'https://raw.githubusercontent.com/luke-barnett/boxstarter-scripts/master/'

function RunBoxstarter($scriptName) {
  Install-BoxstarterPackage -PackageName ($rootUrl + $scriptName) -DisableReboots
}

function Install-Boxstarter-ALl {
  RunBoxstarter 'boxstarter.ps1'
}

function Install-Atom {
  RunBoxstarter 'atom-profile.ps1'
}

function Install-DevTools {
  RunBoxstarter 'dev-tools.ps1'
}

function Install-Essentials {
  RunBoxstarter 'essentials.ps1'
}

function Install-Git {
  RunBoxstarter 'git-tools.ps1'
}

function Install-Utilities {
  RunBoxstarter 'utilities.ps1'
}

function Install-PersonalUtilities {
  RunBoxstarter 'personal-utilities.ps1'
}

function Install-VisualStudio {
  RunBoxstarter 'visualstudio.ps1'
}

export-modulemember -function Install-*
