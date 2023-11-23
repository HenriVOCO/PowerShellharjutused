$eesnimi = Read-Host "Sisesta kasutaja eesnimi"
$perenimi = Read-Host "Sisesta kasutaja perenimi"

$kasutaja = "$($eesnimi.ToLower()).$($perenimi.ToLower())"

Remove-LocalUser -Name $kasutaja -Verbose
if ($?) {
    Write-Host "Kasutaja $kasutaja on edukalt kustutatud."
} else {
    Write-Host "Kustutamisega tekkis probleem."
}
