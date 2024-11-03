# Ustawienie daty w formacie YYYY-MM-DD
$today = Get-Date -Format "yyyy-MM-dd"

# Prośba o podanie nazwy projektu
$projectName = Read-Host "Podaj nazwę projektu (naciśnij Enter, aby użyć domyślnej: MyProject_$today)"

# Sprawdzenie, czy użytkownik podał nazwę projektu
if (-not $projectName) {
    $projectName = "MyProject_$today"
}

# Tworzenie nowego projektu konsolowego
dotnet new console -n $projectName

# Przechodzenie do katalogu projektu
Set-Location $projectName

# Budowanie projektu
dotnet build

# Uruchamianie aplikacji
dotnet run
