# install modules
$ModuleList = @("posh-git")


foreach ( $module in $ModuleList) {
    if (Get-Module -ListAvailable -Name $module) {
        Write-Host "$module exists"
    } 
    else {
        Write-Host "$module is installing"
        Install-Module $module
    }
}

# create soft links to point here
function New-SoftLink {
    param (
        [string]$LinkName,
        [string]$Target
    )
    New-Item -Type SymbolicLink -Path $LinkName -Target $Target -Force
}

# powershell profile
New-SoftLink -LinkName $PROFILE -Target "$PWD\profiles\Microsoft.PowerShell_profile.ps1"

# config inside home directory such as .gitconfig _vimrc
Get-ChildItem home  | Select-Object -Property Name, FullName |
ForEach-Object {
    New-SoftLink -LinkName "${HOME}\$($_.Name)" -Target "$($_.FullName)"
}
