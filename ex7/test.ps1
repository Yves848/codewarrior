function New-PhoneNumber([int[]]$numbers)
{
	"$($numbers[0..2] -join '') $($numbers[3..5] -join '')-$($numbers[6..10] -join '')"
}

New-PhoneNumber(@(1, 2, 3, 4, 5, 6, 7, 8, 9, 0))