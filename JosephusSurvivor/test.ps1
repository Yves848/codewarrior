function JosephusSurvivor([int] $n, [int] $k) {
 [System.Collections.ArrayList]$a = 1..$n | ForEach-Object {
  $_
}
 $i = $k
 while ($a.Count -gt 1) {
  $a.RemoveAt($i-1)
  if ($k -gt $a.count) {
    $k = $a.count
  }
  $i += ($k -1)
  if ($i -gt $a.count) {
    $i = $i - $a.count
  }
 } # your code here
 $a
}

JosephusSurvivor 7 3