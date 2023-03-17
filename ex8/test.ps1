function in-array
{
    [OutputType([string[]])]
    Param ([string[]]$a1, [string[]]$a2)

  [string[]]$result = @()
  foreach($a in $a1) {
    $a2 | Where-Object {$_.Contains($a)} | ForEach-Object { 
      if (-not $result.Contains($a)) {
      $result += $a
      }
    }
  }  # your code
  $result | Sort-Object
}

in-array @("arp", "mice", "bull")  @("lively", "alive", "harp", "sharp", "armstrong")