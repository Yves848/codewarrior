function Convert-StringToCamelCase($String)
{
  #TODO code solution
  
  $words = ($String -split "[_-]") | ForEach-Object {
    $word = [string]$_
    $word.Replace($word[0],$word[0].toString().ToUpper())
  }
  $result = $words -join ""
  return $result
}

Convert-StringToCamelCase("the_stealth_warrior")