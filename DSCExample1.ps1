get-dscresource
configuration DemoDSCConfiguration {
    param($Value)
       
    node 'localhost' {
        Environment 'EnvironmentResource' {
            Name = 'Demo'
            Value = $Value
            }
        }
    }

    DemoDSCConfiguration -Value 'DemoValue'

    #Test Configuration
    Test-DSCConfiguration -Path DemoDSCConfiguration

    #Apply Configuration
    Start-DSCConfiguration -Path DemoDSCConfiguration