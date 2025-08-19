
# Define the printer path
$printerPath = "\\ensb02-prnt1\Blue_Ash_AR_2_UB"

# Check if the printer already exists
$existingPrinter = Get-Printer -Name $printerPath -ErrorAction SilentlyContinue

if (-not $existingPrinter) {
    # Add the network printer for all users on the machine
    Add-Printer -ConnectionName $printerPath
    Write-Output "Printer $printerPath has been added successfully."
} else {
    Write-Output "Printer $printerPath already exists."
}
