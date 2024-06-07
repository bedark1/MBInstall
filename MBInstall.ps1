# MBInstall.ps1

# Function to display the menu
function Show-Menu {
    Clear-Host
    Write-Host "==============================="
    Write-Host " Secure your devices with the #1 malware removal and protection software*"
    Write-Host "==============================="
    Write-Host ""
    Write-Host "Protect yourself in real-time, all the time."
    Write-Host "Say hello to smarter, safer protection for all your family’s devices (computers, phones or tablets)."
    Write-Host "Specifically designed to catch malware, our threat intelligence & proven technology let you rest easy,"
    Write-Host "knowing that we’re finding and crushing threats that traditional antivirus software missed."
    Write-Host "The best part, we do it all without hogging your system’s resources or spamming you with annoying notifications."
    Write-Host "Finally, cybersecurity smart enough for your digital life."
    Write-Host ""
    Write-Host "==============================="
    Write-Host " Menu"
    Write-Host "==============================="
    Write-Host "1. Install Malwarebytes"
    Write-Host "2. Exit"
}

# Function to download and install Malwarebytes
function Install-Malwarebytes {
    $url = "https://downloads.malwarebytes.com/file/mb-windows"
    $output = "mb-windows.exe"

    # Download the installer
    Write-Host "Downloading Malwarebytes installer..."
    Invoke-WebRequest -Uri $url -OutFile $output

    # Check if the download was successful
    if (Test-Path $output) {
        Write-Host "Download completed. Installing Malwarebytes..."
        Start-Process -FilePath $output -Wait
        Write-Host "Installation complete."
    } else {
        Write-Host "Failed to download Malwarebytes installer."
    }
}

# Main script
do {
    Show-Menu
    $choice = Read-Host "Enter your choice (1 or 2)"
    switch ($choice) {
        1 {
            Install-Malwarebytes
        }
        2 {
            Write-Host "Exiting..."
            break
        }
        default {
            Write-Host "Invalid choice. Please enter 1 or 2."
        }
    }
} while ($choice -ne 2)
