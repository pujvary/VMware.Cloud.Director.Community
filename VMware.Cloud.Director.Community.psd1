#
# Module manifest for module 'VMware.Cloud.Director.Community'
#
# Generated by: Adrian Begg
#
# Generated on: 9/12/2020
#

@{

# Script module or binary module file associated with this manifest.
# RootModule = ''

# Version number of this module.
ModuleVersion = '0.1'

# Supported PSEditions
CompatiblePSEditions = 'Desktop', 'Core'

# ID used to uniquely identify this module
GUID = '2e18e719-41c0-4339-916e-ee1ea217cbee'

# Author of this module
Author = 'Adrian Begg'

# Company or vendor of this module
CompanyName = 'Unknown'

# Copyright statement for this module
Copyright = '2020 Adrian Begg. All rights reserved.'

# Description of the functionality provided by this module
Description = 'Yet another community PowerShell modules to expose REST API functions for VMware Cloud Director 10.X functions as PowerShell cmdlets.'

# Minimum version of the PowerShell engine required by this module
PowerShellVersion = '7.1'

# Name of the PowerShell host required by this module
# PowerShellHostName = ''

# Minimum version of the PowerShell host required by this module
# PowerShellHostVersion = ''

# Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# DotNetFrameworkVersion = ''

# Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# ClrVersion = ''

# Processor architecture (None, X86, Amd64) required by this module
# ProcessorArchitecture = ''

# Modules that must be imported into the global environment prior to importing this module
RequiredModules = @('VMware.VimAutomation.Cloud')

# Assemblies that must be loaded prior to importing this module
# RequiredAssemblies = @()

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
# FormatsToProcess = @()

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
NestedModules = @('Private\Get-WinHttpProxy.ps1', 
               'Private\Invoke-CICloudAPIRequest.ps1', 
               'Private\Test-CIServerConnection.ps1', 
               'Public\AccessControl\Get-CIRights.ps1', 
               'Public\AccessControl\Get-CIRightsBundle.ps1', 
               'Public\AccessControl\Get-CIRightsCategory.ps1', 
               'Public\AccessControl\Get-CIRole.ps1', 
               'Public\AccessControl\New-CIRightsBundle.ps1', 
               'Public\AccessControl\New-CIRole.ps1', 
               'Public\AccessControl\New-CISAMLGroup.ps1', 
               'Public\AccessControl\New-CIUser.ps1', 
               'Public\AccessControl\Remove-CIRole.ps1', 
               'Public\AccessControl\Set-CIRightsBundleRights.ps1', 
               'Public\AccessControl\Set-CIRoleRights.ps1', 
               'Public\Administration\Get-CIAuditTrail.ps1', 
               'Public\Administration\Set-CIEmailSettings.ps1', 
               'Public\Administration\Set-CIPasswordPolicy.ps1', 
               'Public\Administration\Set-CISystemSettings.ps1', 
               'Public\Branding\Get-CIBrandingIcon.ps1', 
               'Public\Branding\Get-CIBrandingPolicy.ps1', 
               'Public\Branding\Get-CIBrandingThemes.ps1', 
               'Public\Branding\New-CIBrandingTheme.ps1', 
               'Public\Branding\Publish-CIBrandingIcon.ps1', 
               'Public\Branding\Publish-CIBrandingLogo.ps1', 
               'Public\Branding\Remove-CIBrandingTheme.ps1', 
               'Public\Branding\Set-CIBrandingPolicy.ps1', 
               'Public\Branding\Set-CIBrandingTheme.ps1', 
               'Public\ComputePVDCPolicies\Get-CIPVDCComputePolicy.ps1', 
               'Public\ComputePVDCPolicies\New-CIPVDCComputePolicy.ps1', 
               'Public\ComputePVDCPolicies\Remove-CIPVDCComputePolicy.ps1', 
               'Public\ComputeVDCPolicies\Get-CIVDCComputePolicy.ps1', 
               'Public\ComputeVDCPolicies\Get-CIVMGroups.ps1', 
               'Public\ComputeVDCPolicies\New-CIVMSizingPolicy.ps1', 
               'Public\ExternalNetworks\Get-CIExternalNetwork.ps1', 
               'Public\ExternalNetworks\New-CIExternalNetworkSpecification.ps1', 
               'Public\ExternalNetworks\Remove-CIExternalNetworkSpecification.ps1', 
               'Public\ExternalNetworks\Set-CIExternalNetwork.ps1', 
               'Public\LogicalVMGroups\Get-CILogicalVMGroup.ps1', 
               'Public\LogicalVMGroups\New-CILogicalVMGroup.ps1', 
               'Public\NSXTResources\Get-CINSXTManager.ps1', 
               'Public\NSXTResources\Get-CINSXTNetworkPools.ps1', 
               'Public\ProviderVDC\Get-CIProviderVC.ps1', 
               'Public\ProviderVDC\Get-CIPVDC.ps1', 
               'Public\ProviderVDC\Import-CIProvicerVCVM.ps1', 
               'Public\ProviderVDC\New-CIPVDC.ps1', 
               'Public\Site\Get-CISite.ps1', 
               'Public\Site\Set-CISite.ps1', 
               'Public\SupportFunctions\ConvertTo-HashTable.ps1', 
               'Public\SupportFunctions\Format-FIQL.ps1')

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = 'Get-CIRights', 'Get-CIRightsBundle', 'Get-CIRightsCategory', 
               'Get-CIRole', 'New-CIRightsBundle', 'New-CIRole', 'New-CISAMLGroup', 
               'New-CIUser', 'Remove-CIRole', 'Set-CIRightsBundleRights', 
               'Set-CIRoleRights', 'Get-CIAuditTrail', 'Set-CIEmailSettings', 
               'Set-CIPasswordPolicy', 'Set-CISystemSettings', 'Get-CIBrandingIcon', 
               'Get-CIBrandingPolicy', 'Get-CIBrandingThemes', 'New-CIBrandingTheme', 
               'Publish-CIBrandingIcon', 'Publish-CIBrandingLogo', 
               'Remove-CIBrandingTheme', 'Set-CIBrandingPolicy', 
               'Set-CIBrandingTheme', 'Get-CIPVDCComputePolicy', 
               'New-CIPVDCComputePolicy', 'Remove-CIPVDCComputePolicy', 
               'Get-CIVDCComputePolicy', 'Get-CIVMGroups', 'New-CIVMSizingPolicy', 
               'Get-CIExternalNetwork', 'New-CIExternalNetworkSpecification', 
               'Remove-CIExternalNetworkSpecification', 'Set-CIExternalNetwork', 
               'Get-CILogicalVMGroup', 'New-CILogicalVMGroup', 'Get-CINSXTManager', 
               'Get-CINSXTNetworkPools', 'Get-CIProviderVC', 'Get-CIPVDC', 
               'Import-CIProvicerVCVM', 'New-CIPVDC', 'Get-CISite', 'Set-CISite', 
               'ConvertTo-HashTable', 'Format-FIQL'

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
CmdletsToExport = '*'

# Variables to export from this module
VariablesToExport = '*'

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
AliasesToExport = '*'

# DSC resources to export from this module
# DscResourcesToExport = @()

# List of all modules packaged with this module
# ModuleList = @()

# List of all files packaged with this module
# FileList = @()

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
        # Tags = @()

        # A URL to the license for this module.
        LicenseUri = 'https://raw.githubusercontent.com/AdrianBegg/VMware.Cloud.Director.Community/master/LICENSE'

        # A URL to the main website for this project.
        ProjectUri = 'https://github.com/AdrianBegg/VMware.Cloud.Director.Community'

        # A URL to an icon representing this module.
        # IconUri = ''

        # ReleaseNotes of this module
        # ReleaseNotes = ''

        # Prerelease string of this module
        # Prerelease = ''

        # Flag to indicate whether the module requires explicit user acceptance for install/update/save
        # RequireLicenseAcceptance = $false

        # External dependent modules of this module
        # ExternalModuleDependencies = @()

    } # End of PSData hashtable

} # End of PrivateData hashtable

# HelpInfo URI of this module
# HelpInfoURI = ''

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = ''

}
