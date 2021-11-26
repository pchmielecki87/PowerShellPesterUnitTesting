function New-FictionalFile {
    [CmdletBinding()]
    param(
        [Parameter()]
        [string]$FilePath
    )
    if (-not (Test-Path -Path $FilePath)) {
        $null = New-Item -Path $FilePath -ItemType File
    }
}