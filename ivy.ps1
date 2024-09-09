function Show-LoadingScreen {
    $steps = 50
    $bar = ""
    Write-Host "  ___  _   _  _   __" -ForegroundColor Cyan
    Write-Host " |_ _|| | | || | / /" -ForegroundColor Cyan
    Write-Host "  | | | |_| || |/ / " -ForegroundColor Cyan
    Write-Host " |___| \___/ |_|_/  " -ForegroundColor Cyan
    Write-Host "`nChargement de Ivy Builder..." -ForegroundColor White
    Write-Host "GitHub: https://github.com/ivy-js`n" -ForegroundColor White
    Write-Host "Repository: https://github.com/Ivy-js/ivy-cli" -ForegroundColor White

    for ($i = 1; $i -le $steps; $i++) {
        $bar += "█"
        Write-Host -NoNewline "`r[$bar$([string]::new(' ' * ($steps - $bar.Length)))] $i% "
        Start-Sleep -Milliseconds 50
    }
    Write-Host "`nChargement terminé !`n" -ForegroundColor Green
}

function Create-FilesAndFolders {
    param(
        [string]$type
    )
    switch ($type) {
        "Html / Css / Js" {
            New-Item -ItemType Directory -Path "./public/css", "./js" -Force
            New-Item -ItemType File -Path "./public/index.html" -Force
        }
        "JavaScript" {
            New-Item -ItemType File -Path "./main.js" -Force
        }
        "Python" {
            New-Item -ItemType File -Path "./main.py" -Force
        }
        "TypeScript" {
            New-Item -ItemType File -Path "./main.ts" -Force
        }
    }
}

Show-LoadingScreen

$options = @(
    "📄 Html / Css / Js",
    "💻 JavaScript",
    "🐍 Python",
    "📜 TypeScript"
)

$selectionIndex = 0
while ($true) {
    Clear-Host
    Write-Host "Choisis ton environnement de développement :`n"
    
    for ($i = 0; $i -lt $options.Length; $i++) {
        if ($i -eq $selectionIndex) {
            Write-Host " > $($options[$i])" -ForegroundColor Cyan
        } else {
            Write-Host "   $($options[$i])" -ForegroundColor White
        }
    }

    $key = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown").VirtualKeyCode
    
    if ($key -eq 38) {
        $selectionIndex = if ($selectionIndex -gt 0) { $selectionIndex - 1 } else { $options.Length - 1 }
    } elseif ($key -eq 40) {
        $selectionIndex = if ($selectionIndex -lt $options.Length - 1) { $selectionIndex + 1 } else { 0 }
    } elseif ($key -eq 13) {
        break
    }
}

switch ($selectionIndex) {
    0 {
        Create-FilesAndFolders "Html / Css / Js"
        code .
    }
    1 {
        $modules = Read-Host "Quels node modules as-tu besoin ? (séparés par des espaces)"
        $moduleList = $modules -split '\s+'
        bun i $moduleList
        npm init --y
        Create-FilesAndFolders "JavaScript"
        code .
    }
    2 {
        $modules = Read-Host "Quels modules Python as-tu besoin ? (séparés par des espaces)"
        pip install $modules
        Create-FilesAndFolders "Python"
        code .
    }
    3 {
        $modules = Read-Host "Quels node modules as-tu besoin ? (séparés par des espaces)"
        $moduleList = $modules -split '\s+'
        bun i $moduleList
        npm init --y
        Create-FilesAndFolders "TypeScript"
        code .
    }
}
