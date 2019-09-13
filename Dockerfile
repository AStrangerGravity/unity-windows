FROM mcr.microsoft.com/windows/servercore:1803

RUN ["powershell", "Install-PackageProvider", "NuGet", "-MinimumVersion 2.8.5.201", "-Force"]

RUN ["powershell", "Install-Module", "UnitySetup", "-RequiredVersion 5.1.126", "-Force"]

RUN ["powershell", "Import-Module", "UnitySetup"]

RUN ["powershell", "Install-UnitySetupInstance", "-Installers (Find-UnitySetupInstaller -Version '2019.1.1f1' -Components 'Windows')"]
