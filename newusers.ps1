$gogn = Import-Csv C:\Users\Birkir\Documents\notendur.csv
ForEach($notandi in $gogn) {
    $name = $notandi.nafn
    $firstname = $notandi.fornafn
    $lastname = $notandi.eftirnafn
    $username = $notandi.notendanafn
    $group = $notandi.hopur
    $pass = ConvertTo-SecureString "Pass123" -AsPlainText -Force
    New-LocalUser -fullname "$name" -Name $username -Password $pass
    Add-LocalGroupMember -Group $group -member $username
    Add-LocalGroupMember -Group "Allir" -Member $username
    }


