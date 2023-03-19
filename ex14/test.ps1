function Eval-DeadFish {
  param (
      [Parameter(Mandatory)]
      [string]$data
  )
  $value = 0
  $result = @()
  $data.ToCharArray() | ForEach-Object {
    switch ($_) {
      'o' { $result += $value }
      'i' { $value++ }
      'd' { $value-- }
      's' { $value = [math]::pow($value,2)}
    }
  } 
  $result 
}

Eval-DeadFish -Data "isoisoiso"

