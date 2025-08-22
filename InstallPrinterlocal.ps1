$printerPath = "\\ensb02-prnt1\Blue_Ash_AR_2_UB"
$existingPrinter = Get-Printer -Name $printerPath -ErrorAction SilentlyContinue
if (-not $existingPrinter) {   
    Add-Printer -ConnectionName $printerPath
    Write-Output "Printer Installed"
} else {
    Write-Output "Printer exists."
}
