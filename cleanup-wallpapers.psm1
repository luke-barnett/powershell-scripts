Add-Type -Assembly System.Drawing

function Clean-Wallpapers {
  if($env:WallpapersDirectory -eq $null)
  {
    write-output 'No wallpapers directory set defaulting'
    $env:WallpapersDirectory = 'E:\Dropbox\Dropbox\IFTTT\reddit\wallpapers'
  }

  write-output ('Cleaning wallpaper directory: ' + $env:WallpapersDirectory)

  $wallpapers = get-childitem -path $env:WallpapersDirectory

  $currentDateTime = get-date

  foreach($wallpaper in $wallpapers)
  {
    if($wallpaper.Length -le 1000000)
    {
      remove-item $wallpaper.FullName
      continue
    }

    $writeDateTime = [datetime]$wallpaper.LastWriteTime
    $timespan = $currentDateTime - $writeDateTime

    if($timespan.TotalDays -ge 30)
    {
      remove-item $wallpaper.FullName
      continue
    }

    $image = [Drawing.Image]::FromFile($wallpaper.FullName)

    if($image.Width -lt 1920 -or $image.Height -lt 1080)
    {
      $image.Dispose()
      remove-item $wallpaper.FullName
      continue
    }
    $image.Dispose()
  }
}

export-modulemember -function Clean-Wallpapers
