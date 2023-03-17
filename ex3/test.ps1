function race($v1, $v2, $g) {
  $result = @()
  if ($v1 -ge $v2) {
    return @(-1, -1, -1)
  }
  
  <# 
   $v1 = 720 km/ 60m
   $v2 = 850 km/ 60m
   $g = 70km = 5.8m
  #>
  

}

race -v1 720 -v2 850 -g 70