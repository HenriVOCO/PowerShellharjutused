$eesnimi = Read-Host "Sisesta oma eesnimi"
$perenimi = Read-Host "Sisesta oma perenimi"

#$kood = Read-Host "Sisesta oma parool"
#$kasutajaparool = ConvertTo-SecureString "Parool1!" -AsPlainText -Force

$kasutajanimi = "$($eesnimi.ToLower()).$($perenimi.ToLower())"
#New-LocalUser -Name $kasutajanimi

Write-Host "Loodav kasutaja on $kasutajanimi"

$parool = ConvertTo-SecureString "Parool1!" -AsPlainText -Force

New-LocalUser -Name "$kasutajanimi" -Password $parool -FullName "$eesnimi $perenimi" -Description "Local Account"