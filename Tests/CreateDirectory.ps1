# param(
#     [string]$path,
#     [string]$dirName
# )

$path = '.'
$dirName = 'TestDir'

New-Item -Name $dirName -Path $path

if ($path -ne '.') {
    Write-Error "Path is not correct. Should be '.'"
}

if ($dirName -ne 'TestDir') {
    Write-Error "Directory name is not correct. Should be 'TestDir'"
}