function accum($s)
{
  $i = 1
  (([string]$s).ToCharArray() | ForEach-Object {
   $([string]$_.ToString().ToUpper()).PadRight($i,$_)
   
    $i++
  }) -join "-"
}


accum -s "abcd"