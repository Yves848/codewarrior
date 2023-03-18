function perimeter($n) 
{
   $f = @()
   $i = 0
   while ($f.Length -lt $n+1) {
      # f(n) = f(n-1) + f(n-2)
      if ($i -in 0..1) {
        $f += 1
        $i++
        continue
      }
    $f += ($f[$i-1] + $f[$i-2])
    $i++
   }
   ($f | Measure-Object -sum).Sum * 4
    # your code
}

perimeter 7