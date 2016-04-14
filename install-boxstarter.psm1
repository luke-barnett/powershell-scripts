$rootUrl = 'https://raw.githubusercontent.com/luke-barnett/boxstarter-scripts/master/'

function RunBoxstarter($scriptName) {
  Install-BoxstarterPackage -PackageName ($rootUrl + $scriptName) -DisableReboots
}

function Install-Boxstarter-All {
  RunBoxstarter 'boxstarter.ps1'
}

function Install-VisualStudio-Extensions {
  RunBoxstarter 'visualstudio-extensions.ps1'
}

export-modulemember -function Install-*
