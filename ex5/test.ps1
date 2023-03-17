function Get-HighestScoringWord([string]$s)
{
  $max = 0
  $result = ""
  $s -split " " | ForEach-Object {
    $score = 0
    $_.ToCharArray() |ForEach-Object {
      $score += [System.Convert]::ToByte($_) - 96
    }
    if ($score -gt $max) {
      $max = $score
      $result = $_
    }
  }
  $result
}

Get-HighestScoringWord -s "man i need a taxi up to ubud"