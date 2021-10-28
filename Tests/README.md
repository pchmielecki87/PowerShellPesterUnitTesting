# Overview
This folder contains tests for particular scripts. Tests got **.Tests.ps1** extension close to the script itself.

# Execute tests

To run tests locally go to test files location and execute commands:

```powershell
Install-Module -Name Pester -Force
Invoke-Pester
```

Or run automatically by YAML pipeline.

# Tests
| TestCase Name | Description |
| :------ | :--------- |
| CreateRgIfNotExist.Tests | Check syntax of the Azure RG creation script |
| New-FictionalFile.Tests | Check syntax of the file existence check script. Based on [example](https://adamtheautomator.com/pester-mock/) | 
| Create-Dir.Tests | Check syntax of the file existence check script. Based on [example](https://octopus.com/blog/testing-powershell-code-with-pester) | 
