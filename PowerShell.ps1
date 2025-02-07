$Dog = "Dog"
$Input = Read-Host -p "Insert a word"
echo "$($Dog) and $($Input)"

function Get-Env
{
    param ([string]$Path)

    $Content = Get-Content -Path $Path
    $Vars = @{}
    foreach ($Line in $Content)
    {
       $Parts = $Line -Split "="
       $Key = $Parts[0].Trim()
       $Value = $Parts[1].Trim()
       $Vars.Add($Key,$Value)
    }
    return $Vars
}

function Start-Packer
{
    param()
}


$Input = Read-Host -p "What would you like to do? Webrequest, Terraform, Packer"
$pathStatus = $false

While ($pathStatus -eq $false){
    $pathToEnv = Read-Host -p "Insert Full Path To Env Variables"
    $testPath = Test-Path -Path $pathToEnv
    if($testPath -eq $false)
    {
        $pathStatus = $false
    }
    else
    {
        $pathStatus = $true
    }
}

Get-Env($pathToEnv)

if ($Input -match "Packer")
{
    echo "You chose Packer"
}
elseif ($Input -match "Terraform")
{
    echo "You chose Terraform"
}
elseif ($Input -match "Webrequest")
{
    echo "You chose Webrequest"
}
else
{
    echo "Invalid Response, try the script again!"
}