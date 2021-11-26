Describe "Create Rg If Not Exist Unit Tests" {
    BeforeAll {
        Mock az {}
    }

    Context "When the context is not available" {

        It "It gets resource id xxxxxxxx" {
            Should -Invoke -CommandName "az" -ParameterFilter {
                $Args[0] -eq "group" -and
                $Args[1] -eq "exist" -and
                $Args[2] -eq "list" -and
                $Args[3] -eq "create" -and
                $Args[4] -eq "Microsoft Graph" -and
                $Args[5] -eq "-n" -and
                $Args[6] -eq "[0].objectId" -and
                $Args[7] -eq "-l"
            }
        }
    }

    Context "When the context is available" {
        
        It "It gets resource id xxxxxxx" {
            Should -Invoke -CommandName "az" -ParameterFilter {
                $Args[0] -eq "group" -and
                $Args[1] -eq "exist" -and
                $Args[2] -eq "list" -and
                $Args[3] -eq "create" -and
                $Args[4] -eq "Microsoft Graph" -and
                $Args[5] -eq "-n" -and
                $Args[6] -eq "[0].objectId" -and
                $Args[7] -eq "-l"
            }
        }
    }

}
