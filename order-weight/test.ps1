function order-weight($s)
{
  $a = @()
  $s -split " " | ForEach-Object {
    $val = $_
   #$a +=  ([string]$_).ToCharArray() | ForEach-Object {[System.Int16]::Parse($_) } | Measure-Object -sum | ForEach-Object {@($_.sum,$val)}
   
   $s = (([string]$_).ToCharArray() | ForEach-Object {[System.Int16]::Parse($_) } | Measure-Object -sum).sum
   #Write-Host "----$($_) : $($s)----"
   $a += [PSCustomObject]@{
    name = $_
    weight = [int]$s
   }
  }
  $($a | Sort-Object -Property weight,name | Select-Object -expandProperty name) -join " "  
}

order-weight -s "103 123 4444 99 2000"