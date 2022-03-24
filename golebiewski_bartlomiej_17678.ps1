# Bartłomiej Gołębiewski, IZ07TC1, 17678, AZ1_Zadanie1
# Lokalizacja pliku

$start = "C:\wit\AZ1\17678\"


#sprawdzenie czy sciezka istnieje, jesli nie istnieje -> utworz nowa

if (Test-Path -Path $start) {
    Write-Host "Sciezka istnieje $start" -ForegroundColor Red  

Add-Content -Path "$start\bartlomiej.golebiewski_zadanie1_IZ07TC1_17678.txt" "bartłomiej.Golebiewski bartłomiej.gołębiewski@cbsg.edu.pl IZ07TC1 17678"     

} else {
    New-Item -ItemType "directory" -Path $start
    Write-Host "Tworzenie kontenera $start" -ForegroundColor Green

Add-Content -Path "$start\bartlomiej.golebiewski_zadanie1_IZ07TC1_17678.txt" "bartłomiej.gołębiewski bartłomiej.gołębiewski@cbsg.edu.pl IZ07TC1 17678"
}


#wpis zawartosci pliku

$IZ07NUMERINDEKSUWIT = Get-Content -Path $start\bartlomiej.golebiewski_zadanie1_IZ07TC1_17678.txt

#wpis imienia

$IZ07NUMERINDEKSUWITimie = $IZ07NUMERINDEKSUWIT.Substring(0, $IZ07NUMERINDEKSUWIT.IndexOf('.'))

#wpis nazwiska

foreach ($_ in $IZ07NUMERINDEKSUWIT)
{
$out1 = $_.split()
$IZ07NUMERINDEKSUWITnazwisko=$out1[1]
}

#wpis maila

$IZ07NUMERINDEKSUWITemail = $IZ07NUMERINDEKSUWIT.Substring(0, $IZ07NUMERINDEKSUWIT.IndexOf(' ')) + "@cbsg.edu.pl"

#wpis numeru indeksu

foreach ($_ in $IZ07NUMERINDEKSUWIT)
{
$out2 = $_.split()
$IZ07NUMERINDEKSUWITindeks=$out2[$out2.Count – 1]}

#wpis dlugosci tekstu

$IZ07NUMERINDEKSUWITdl = $IZ07NUMERINDEKSUWIT.Length

#wpis wczesniej utworzonych zmiennych

$IZ07NUMERINDEKSUWITdane = "Nazywam się $IZ07NUMERINDEKSUWITimie $IZ07NUMERINDEKSUWITnazwisko, studiuję na WIT, " + "mój adres email to: $IZ07NUMERINDEKSUWITemail" + "a mój numer indeksu to $IZ07NUMERINDEKSUWITindeks." + "Długość tekstu wejściowego to: $IZ07NUMERINDEKSUWITdl"

#wypis danych do konsoli

Write-Host "$IZ07NUMERINDEKSUWITimie $IZ07NUMERINDEKSUWITnazwisko" -ForegroundColor Green -BackgroundColor White
Write-Host "$IZ07NUMERINDEKSUWITemail" -ForegroundColor Red
Write-Host "$IZ07NUMERINDEKSUWITemail" -ForegroundColor White -BackgroundColor Red


#wpis do pliku

Add-Content -Path $start\bartłomiej.gołębiewski_IZ07TC1_17678_wynik1.txt "Imię: $IZ07NUMERINDEKSUWITimie`nNazwisko: $IZ07NUMERINDEKSUWITnazwisko`n`n$IZ07NUMERINDEKSUWITdane"

#nowy plik i wpis zawartosci

New-Item -ItemType "File" -Path $start\bartłomiej.gołębiewski_zadanie1a_IZ07TC1_17678.txt 
Add-Content -Path $start\bartłomiej.gołębiewski_zadanie1a_IZ07TC1_17678.txt "$IZ07NUMERINDEKSUWITimie _ $IZ07NUMERINDEKSUWITindeks.$IZ07NUMERINDEKSUWITnazwisko $IZ07NUMERINDEKSUWITemail $IZ07NUMERINDEKSUWITindeks"
