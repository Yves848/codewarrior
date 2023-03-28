function step($g, $m, $n) {
  [System.Collections.ArrayList]$primes = @()
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
        $i1 = $Primes.IndexOf($Number)
        $i2 = $Primes.IndexOf($number - $g) + 1
        if ($i1 -eq $i2) {
        $pair += @(($Number - $g), $Number)
        break
        }
      }  # your code
    }
  }
  if ($pair.Length -gt 0) {
    @($pair[0], $pair[1])
  }
  else {
    @()
  }
}
step 2 100 110 
step 4 100 110 
step 6 100 110 
