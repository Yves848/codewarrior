function meeting($s) {
  # your code
  $invites = $s.split(';')
  $expected = @()
  ([string[]]$invites | ForEach-Object {
    $item = $_.ToUpper().split(":")
    $expected += @{"Lastname" = $item[1]
                   "FirstName" = $item[0]}
  })
  ($expected | Sort-Object -Property @{Expression="Lastname"; Descending=$false},
                                    @{Expression="FirstName"; Descending=$false} | Select-Object -property Lastname,FirstName | ForEach-Object {"($($_.Lastname), $($_.FirstName))"}) -join ""
}

$a = "Alexis:Wahl;John:Bell;Victoria:Schwarz;Abba:Dorny;Grace:Meta;Ann:Arno;Madison:STAN;Alex:Cornwell;Lewis:Kern;Megan:Stan;Alex:Korn"
meeting $a