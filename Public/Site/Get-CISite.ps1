function Get-CISite(){
    <#
    .SYNOPSIS
    Returns the Local Cloud Director site.

    .DESCRIPTION
    Returns the Local Cloud Director site.

    .EXAMPLE
    Get-CISite
    Returns the Cloud Director site object.

	.NOTES
    AUTHOR: Adrian Begg
    LASTEDIT: 2023-06-20
    VERSION: 1.1
    #>
    # Next we need to retireve the Site Name for the local site
    [Hashtable] $ImportRequestParameters = @{
        URI = "$($global:DefaultCIServers.ServiceUri)site"
        Method = "Get"
        APIVersion = 37.2
        APIType = "Legacy"
    }
    [xml] $LocalSiteXML = (Invoke-CICloudAPIRequest @ImportRequestParameters).RawData
    return $LocalSiteXML.Site
}
