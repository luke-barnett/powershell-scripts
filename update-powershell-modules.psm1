function Update-Powershell-Modules {
  if(test-path $env:PowerShellModules\.git)
  {
    $cwd = $pwd
    cd $env:PowerShellModules
    git fetch origin
    git reset --hard origin/master
    cd $cwd
  }
}

export-modulemember -function Update-Powershell-Modules
