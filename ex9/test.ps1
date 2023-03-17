function rank($st, $we, $n)
{
  if ($([string]$st).Trim() -eq '') {
    return "No participants"
  }


}

#rank "Addison,Jayden,Sofia,Michael,Andrew,Lily,Benjamin" @(4, 2, 1, 4, 3, 1, 2) 4
rank "Addison,Jayden,Sofia,Michael,Andrew,Lily,Benjamin" @(4, 2, 1, 4, 3, 1, 2) 8
#rank "" @(4, 2, 1, 4, 3, 1, 2) 4