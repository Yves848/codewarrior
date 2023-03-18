function step($g, $m, $n) {
  $primes = @()
  $pair = @()
  $Numbers = $m..$n
  foreach ($Number in $Numbers) {
    $i = 2
    $Prime = $true
    if ($Number -lt 2) {
      $Prime = $false
    }
    if ($n -eq 2) {
      $Prime = $true
    }
    while ($i -lt $Number) {
      if (!($Number % $i)) {
        $Prime = $false
      }
      $i++
    }
    if ($Prime) {
      $Primes += $Number 
      if ($Primes.contains($Number - $g)) {
        $pair += @(($Number - $g), $Number)
        break
      }  # your code
    }
  }
  if ($pair -ne "") {
    "($($pair[0]) $($pair[1])))"
  }
  else {
    ""
  }
}
step 11 30000 30100
