function Get-SumOfMultiples($Value)
{
	if ($Value -lt 0) {
    return 0
  }
  $Number = $Value -1
  $Sum = 0
  while ($Number -ge 3) {
    if (($Number % 3 -eq 0) -or ($Number % 5 -eq 0)){
      $Sum += $Number
    }
    $Number--
  }
  return $Sum
}

Get-SumOfMultiples(20)