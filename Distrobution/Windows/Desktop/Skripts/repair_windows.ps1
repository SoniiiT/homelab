    function Get-UserInput {
        Write-Output "Was möchten Sie tun?"
        Write-Output "1. Autostart deaktivieren und Neustarten"
        Write-Output "2. SFC starten"
        Write-Output "3. Änderungen rückgängig machen und Nerstarten"
        $seconds = 5
        $key = Read-Host "Taste drücken (1, 2 oder 3)"
        switch ($key) {
            "1" {
                Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" -Name "*" -Value "0"
                Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" -Name "*" -Value "0"
                Start-Sleep -Seconds $seconds
                for ($i = 0; $i -lt $seconds; $i++) {
                $percentComplete = [int](($i + 1) / $seconds * 100)
                Write-Progress -Activity "Loading..." -Status "Please wait" -PercentComplete $percentComplete
                Start-Sleep -Seconds 1
                }
                Restart-Computer -Force
            }
            "2" {
                sfc /scannow
            }
            "3" {
                Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" -Name "*" -Value "1"
                Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" -Name "*" -Value "1"
                Start-Sleep -Seconds $seconds
                for ($i = 0; $i -lt $seconds; $i++) {
                $percentComplete = [int](($i + 1) / $seconds * 100)
                Write-Progress -Activity "Loading..." -Status "Please wait" -PercentComplete $percentComplete
                Start-Sleep -Seconds 1
                }
                Restart-Computer -Force
            }
            default {
                Write-Output "Ungültige Eingabe. Bitte wählen Sie 1, 2 oder 3"
                Get-UserInput
            }
        }
    }
    
    Get-UserInput