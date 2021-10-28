Describe "Directory Creation" {
  Context 'Path' {
      It 'should contain: path_that_you_used_for_the_function'
      $path = 'path_that_you_used_for_the_function'
      $path | Should -Exist
  }

  Context "New Directory" {
      It 'Should create a new directory called TestDir'
      $dir = 'TestDir'
      $dir | Should -Be 'TestDir'
  }
}