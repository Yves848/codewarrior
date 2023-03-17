function rank($st, $we, $n)
{
  if ($([string]$st).Trim() -eq '') {
    return "No participants"
  }
  [string[]]$names = $st -split ','
  if ($n -gt $names.length) {
    return "Not enough participants"
  }

  $winners = [ordered]@{}
  $i = 0
  $we | ForEach-Object {
    if ($i -lt $names.Length) {
    $weight = ($names[$i].Length + (($names[$i].tolower().ToCharArray() | ForEach-Object {[convert]::ToByte($_)-96}) | Measure-Object -Sum).sum) * $_
    $winners.add($names[$i],$weight)
    $i++
    }
  }
  $win = ($winners.GetEnumerator() | Sort-object Value -Descending)[$n-1].Value
  (($winners.GetEnumerator() | Where-Object {$_.Value -eq $win}) | Sort-Object key)[0].Name
}

rank "Addison,Jayden,Sofia,Michael,Andrew,Lily,Benjamin" @(4, 2, 1, 4, 3, 1, 2) 4
#rank "Addison,Jayden,Sofia,Michael,Andrew,Lily,Benjamin" @(4, 2, 1, 4, 3, 1, 2) 8
#rank "" @(4, 2, 1, 4, 3, 1, 2) 4
rank "Addison,Willima,William,Jayden" @(3, 5, 5,6) 1