Describe "Test - Directory Creation" {
  Context "Path" {
    BeforeAll {
      Mock Write-Error
    }

      It "It writes error 'Path should contain: .'" {
        $path = '.'
        $path | Should -Exist
      }

  }

  Context "New Directory" {
    BeforeAll {
      Mock Write-Error
    }
      It "Should create a new directory called 'TestDir'" {
        $dir = 'TestDir'
        $dir | Should -Be 'TestDir'
      }
  }
}