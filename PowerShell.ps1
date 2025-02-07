$Dog = "Dog"
$Input = Read-Host -p "Insert a word"
echo "$($Dog) and $($Input)"

function Start-Packer
{
    param()
}

$Input = Read-Host -p "What would you like to do? Webrequest, Terraform, Packer"

if ($Input = "Packer")
{
    echo "You chose Packer"
}
elseif ($Input = "Terraform")
{
    echo "You chose Terraform"
}
elseif ($Input = "Webrequest")
{
    echo "You chose Webrequest"
}