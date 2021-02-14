##################### Modules ######################
Import-Module posh-git # provides prompt for git

####################################################


# emulate the bash shortcut
Set-PSReadlineOption -EditMode Emacs
# set proxy
function Set-Proxy {
    $Env:http_proxy = "http://127.0.0.1:7890"; $Env:https_proxy = "http://127.0.0.1:7890"
}


# alias
function .. {
    Set-Location ..
}

function ... {
    Set-Location ..; Set-Location ..
}

# administrator related
function Test-Administrator
{
    $user = [Security.Principal.WindowsIdentity]::GetCurrent();
    (New-Object Security.Principal.WindowsPrincipal $user).IsInRole([Security.Principal.WindowsBuiltinRole]::Administrator)
}
