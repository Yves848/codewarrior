function AddLetters([char[]] $letters) {
  if ($letters.Length -eq 0) {
    return 'z'
  }
  $sum = 0
  $letters | ForEach-Object {
    $sum += ([System.Convert]::ToByte($_) - 96)
  }
  if ($sum -gt 26) {
    $sum = (($sum % 26) -eq 0 ? 26 : ($sum % 26))
  }
  [char]($sum+96)
  
}

AddLetters(@('y', 'c', 'b','y', 'c', 'b','z', 'c', 'b'))