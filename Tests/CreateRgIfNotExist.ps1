param (
    $rsgName,
    $regionName
)

$rsgExists = az group exists -n $rsgName

if ($rsgExists -eq 'false') {
    az group create -l $regionName -n $rsgName
}