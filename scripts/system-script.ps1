Param()

Write-Host "=== Windows System Automation Script ==="

$workspace = $env:GITHUB_WORKSPACE
if (-not $workspace) {
    $workspace = (Get-Location).Path
}

$report = Join-Path $workspace "system-report-windows.txt"

try {
    # Encabezado
    "Usuario actual: $(whoami)"            | Out-File    -FilePath $report -Encoding UTF8
    "Directorio actual: $(Get-Location)"   | Add-Content -Path $report
    "Fecha/Hora: $(Get-Date)"              | Add-Content -Path $report
    ""                                     | Add-Content -Path $report

    "1) Variable de entorno recibida del workflow:"          | Add-Content -Path $report
    "   HOST_ENV_MESSAGE=$($env:HOST_ENV_MESSAGE)"           | Add-Content -Path $report
    ""                                                       | Add-Content -Path $report

    # Archivo de ejemplo
    "2) Creando y leyendo archivo de ejemplo..."             | Add-Content -Path $report
    $inputFile = Join-Path $workspace "input-windows.txt"
    "Hola, este archivo fue creado por system-script.ps1"    | Out-File -FilePath $inputFile
    "Contenido de $($inputFile):"                            | Add-Content -Path $report
    Get-Content $inputFile                                   | Add-Content -Path $report
    ""                                                       | Add-Content -Path $report

    # Permisos con icacls
    "3) Cambiando permisos de un archivo (icacls)..."        | Add-Content -Path $report
    $secretFile = Join-Path $workspace "secret-windows.txt"
    New-Item -ItemType File -Path $secretFile -Force | Out-Null
    icacls $secretFile /grant "*S-1-5-32-545:(R)"            | Add-Content -Path $report
    ""                                                       | Add-Content -Path $report

    # Proceso en segundo plano
    "4) Creando un proceso en segundo plano (Start-Job)..."  | Add-Content -Path $report
    $job = Start-Job -ScriptBlock { Start-Sleep -Seconds 5 }
    "Job Id: $($job.Id), State: $($job.State)"               | Add-Content -Path $report
    ""                                                       | Add-Content -Path $report

    # Procesos
    "5) Top de procesos (Get-Process | Select -First 5)..."  | Add-Content -Path $report
    Get-Process | Select-Object -First 5 | Out-String        | Add-Content -Path $report

    Write-Host "Reporte generado en: $report"
    exit 0
}
catch {
    Write-Error "Error en system-script.ps1: $_"
    exit 1
}
