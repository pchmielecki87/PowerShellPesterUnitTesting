describe 'New-FictionalFile' {
    ## This ensures New-Item will never run. It's just being used as a 
    ## flag to test if it attempts to execute
    mock 'New-Item'

    context 'when the file path does not exist' {
        ## This ensures Test-Path always returns $false "mimicking" the file does not exist
        mock 'Test-Path' { $false }
        
        $null = New-FictionalFile -FilePath '~\file.txt'

        it 'creates the file' {
            ## This checks to see if New-Item attempted to run. If so, we know the script did what we expected
            $assMParams = @{
                CommandName = 'New-Item'
                Times = 1
                Exactly = $true
            }
            Assert-MockCalled @assMParams
        }
    }
    
    context 'when the file path already exists' {
        ## This ensures Test-Path always returns $true "mimicking" the file does not exist
        mock 'Test-Path' { $true }

        $null = New-FictionalFile -FilePath '~\file.txt'

        it 'does not attempt to create a file' {
            ## This checks to see if New-Item did not attempt to run (Times = 0). If it did not
            ## that means that it did not attempt to create the file
            $assMParams = @{
                CommandName = 'New-Item'
                Times = 0
                Exactly = $true
            }
            Assert-MockCalled @assMParams
        }
    }
}