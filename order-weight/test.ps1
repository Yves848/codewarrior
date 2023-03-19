function order-weight($s)
{
  $s -split " " | ForEach-Object {
    ([string]$_).ToCharArray() | ForEach-Object {[convert]::ToInt16($_) } | Measure-Object -sum | ForEach-Object {[System.Math]::floor($_.sum)}
  }
}

order-weight -s "103 123 4444 99 2000"