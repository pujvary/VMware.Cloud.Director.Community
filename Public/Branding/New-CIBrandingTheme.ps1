function New-CIBrandingTheme(){
    <#
    .SYNOPSIS
    Creates a new (custom) theme for vCloud Director.

    .DESCRIPTION
    Creates a new (custom) theme for vCloud Director.

    .PARAMETER ThemeName
    A name for the custom theme

    .EXAMPLE
    New-CIBrandingTheme -ThemeName Example -CssFile "CSSFile.css"
    Create a new vCloud Theme named "Example" in the currently connected installation using the CSS File "CSSFile.css".

    .NOTES
    These cmdlets were refactored based on the original work of Jon Waite. The original implementation is available from https://raw.githubusercontent.com/jondwaite/vcd-h5-themes/master/vcd-h5-themes.psm1

    Per-tenant branding requires functionality first introduced in vCloud Director 9.7 (API Version 32.0) and will *NOT* work with any prior release.
    #>
    Param(
        [Parameter(Mandatory=$True)]
            [ValidateNotNullorEmpty()]  [string] $ThemeName,
        [Parameter(Mandatory=$True)]
            [ValidateNotNullorEmpty()]  [string] $CssFile
    )
    # Always check if we are connected first
    Test-CIServerConnection | Out-Null

    # Check if the theme exists
    if((Get-CIBrandingThemes -ThemeName $ThemeName).Count -gt 0){
        throw "A Theme with the name $ThemeName already exists in the currently connected environment. Use the Set-CIBrandingTheme to adjust the configuration."
    }
    [PSCustomObject] $Data = @{
        themeType = "CUSTOM"
        name = $ThemeName
    }
    # Define basic request properties for the API call
    [Hashtable] $RequestParameters = @{
        URI = "$($global:DefaultCIServers.CloudAPIServiceURI)/branding/themes"
        Method = "Post"
        APIVersion = 37.2
        Data = ($Data | ConvertTo-Json)
    }

    # Make the API call and return the result
    $Response = (Invoke-CICloudAPIRequest @RequestParameters).JSONData
    if($Response){
        return (Set-CIBrandingTheme -ThemeName $ThemeName -CssFile $CssFile)
    } else {
        throw "An error occurred during the Theme creation."
    }

}