---
title: Onboard Windows servers to the Microsoft Defender for Endpoint service
description: Onboard Windows servers so that they can send sensor data to the Microsoft Defender for Endpoint sensor.
keywords: onboard server, server, 2012r2, 2016, 2019, server onboarding, device management, configure Microsoft Defender for Endpoint servers, onboard Microsoft Defender for Endpoint servers, onboard Microsoft Defender for Endpoint servers
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: mjcaparas
ms.author: macapara
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: article
ms.technology: mde
---

# Onboard Windows servers to the Microsoft Defender for Endpoint service

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- Windows Server 2012 R2
- Windows Server 2016
- Windows Server (SAC) version 1803 and later
- Windows Server 2019 and later
- Windows Server 2019 core edition

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-configserver-abovefoldlink)


This topic describes how to onboard specific Windows Servers to Microsoft Defender for Endpoint. 

Defender for Endpoint extends support to also include the Windows Server operating system. This support provides advanced attack detection and investigation capabilities seamlessly through the Microsoft Defender Security Center console. Support for Windows Server provides deeper insight into server activities, coverage for kernel and memory attack detection, and enables response actions.


You'll need to complete the following steps to succesfully onboard servers:<br>

**Windows Server 2008 R2 SP1 and Windows Server 2016**
- Download installation and onboarding packages
- Follow the onboarding steps

**Windows Server (SAC) version 1803, Windows Server 2019, and Windows Server 2019 Core edition**

- Download the onboarding package
- Follow the onboarding steps 



For a practical guidance on what needs to be in place for licensing and infrastructure, see [Protecting Windows Servers with Defender for Endpoint](https://techcommunity.microsoft.com/t5/What-s-New/Protecting-Windows-Server-with-Windows-Defender-ATP/m-p/267114#M128).

For guidance on how to download and use Windows Security Baselines for Windows servers, see [Windows Security Baselines](https://docs.microsoft.com/windows/device-security/windows-security-baselines).

## Onboarding tools and methods
You can onboard Windows Server (SAC) version 1803, Windows Server 2012 R2, Windows Server 2016, Windows Server 2019, or Windows Server 2019 Core edition by using the following deployment methods:

- [Local script](configure-endpoints-script.md)
- [Group Policy](configure-endpoints-gp.md)
- [Microsoft Endpoint Configuration Manager](configure-endpoints-sccm.md)
- [System Center Configuration Manager 2012 / 2012 R2  1511 / 1602](configure-endpoints-sccm.md#onboard-devices-using-system-center-configuration-manager)
- [VDI onboarding scripts for non-persistent devices](configure-endpoints-vdi.md)

> [!NOTE]
> A local script is suitable for a proof of concept but should not be used for production deployment. For a production deployment, we recommend using Group Policy, or Microsoft Endpoint Configuration Manager.


## Windows Server 2012 R2 and Windows Server 2016

### Prerequisites

**Prerequisites for Windows Server 2012 R2** 

Verify that you have installed the following hotfix:

- [Update for customer experience and diagnostic telemetry](https://support.microsoft.com/help/3080149/update-for-customer-experience-and-diagnostic-telemetry)
- [Update for Universal C Runtime in Windows](https://support.microsoft.com/topic/update-for-universal-c-runtime-in-windows-c0514201-7fe6-95a3-b0a5-287930f3560c)

**Prerequisites for Windows Server 2016** 

Verify that Microsoft Defender Antivirus version 4.18.2104.120 or later is installed.

> [!NOTE]
> If System Center Endpoint Protection (SCEP) is installed on a machine, it must be removed first, otherwise the installation will not proceed. For instructions on environments with managed SCEP, refer to MECM migration scenarios. 


### Download installation and onboarding packages

Download the installation and onboarding packages from Microsoft Defender Security Center:

1. In Microsoft Defender Security Center, go to **Settings > Device Management > Onboarding**.
2. Select **Windows Server 2012 R2 and 2016**.
3. Select **Download installation package**. Save it as wdav.pkg to a local directory.
4. Select **Download onboarding package**. Save it as WindowsDefenderATPOnboardingPackage.zip to the same directory.
5. Follow the steps provided in the onboarding steps section. 


## Windows Server (SAC) version 1803, Windows Server 2019, and Windows Server 2019 Core edition
The onboarding package for Windows Server 2019 through Microsoft Endpoint Manager currently ships a script. For more information on how to deploy scripts in Configuration Manager, see [Packages and programs in Configuration Manager](https://docs.microsoft.com/configmgr/apps/deploy-use/packages-and-programs).

1. In Microsoft Defender Security Center, go to **Settings > Device Management > Onboarding**.
2. Select **Windows Server 1803 and 2019**.
3. Select **Download package**. Save it as WindowsDefenderATPOnboardingPackage.zip.
4. Follow the steps provided in the onboarding steps section. 


## Onboarding steps

1. Configure Defender for Endpoint onboarding settings on the Windows servers using the same tools and methods for Windows 10 devices. For more information, see [Onboard Windows 10 devices](configure-endpoints.md).

2. (Only applicable if you're using a third-party anti-malware solution). You'll need to apply the following Microsoft Defender AV passive mode settings. Verify that it was configured correctly:

    1. Set the following registry entry:
       - Path: `HKLM\SOFTWARE\Policies\Microsoft\Windows Advanced Threat Protection`
       - Name: ForceDefenderPassiveMode
       - Type: REG_DWORD
       - Value: 1

    1. Run the following PowerShell command to verify that the passive mode was configured:

       ```PowerShell
       Get-WinEvent -FilterHashtable @{ProviderName="Microsoft-Windows-Sense" ;ID=84}
       ```

    1. Confirm  that a recent event containing the passive mode event is found:

       ![Image of passive mode verification result](images/atp-verify-passive-mode.png)


## Verify onboarding

1. Run the following command to verify that Microsoft Defender AV is installed:

   ```sc.exe query Windefend```

    If the result is 'The specified service doesn't exist as an installed service', then you'll need to install Microsoft Defender AV. For more information, see [Microsoft Defender Antivirus in Windows 10](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/microsoft-defender-antivirus-in-windows-10).

    For information on how to use Group Policy to configure and manage Microsoft Defender Antivirus on your Windows servers, see [Use Group Policy settings to configure and manage Microsoft Defender Antivirus](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/use-group-policy-microsoft-defender-antivirus).


2. Run the following command to verify that Microsoft Defender for Endpoint is running:

    ```sc.exe query sense```
    
    The result should show it is running. If you encounter issues with onboarding, see [Troubleshoot onboarding](troubleshoot-onboarding.md).

## Run a detection test
Follow the steps in [Run a detection test on a newly onboarded device](run-detection-test.md) to verify that the server is reporting to Defender for the Endpoint service.

## Offboard Windows servers

You can offboard Windows Server (SAC), Windows Server 2019, and Windows Server 2019 Core edition in the same method available for Windows 10 client devices.


## Integration with Azure Defender
Defender for Endpoint can integrate with Azure Defender to provide a comprehensive Windows server protection solution. With this integration, Azure Defender can use the power of Defender for Endpoint to provide improved threat detection for Windows Servers.

The following capabilities are included in this integration:

- Automated onboarding - Defender for Endpoint sensor is automatically enabled on Windows Servers that are onboarded to Azure Defender. For more information on Azure Defender onboarding, see [Use the integrated Microsoft Defender for Endpoint license](https://docs.microsoft.com/azure/security-center/security-center-wdatp).

    > [!NOTE]
    > The integration between Azure Defender for Servers and Microsoft Defender for Endpoint has been expanded to support [Windows Server 2019 and Windows Virtual Desktop (WVD)](https://docs.microsoft.com/azure/security-center/release-notes#microsoft-defender-for-endpoint-integration-with-azure-defender-now-supports-windows-server-2019-and-windows-10-virtual-desktop-wvd-in-preview).

- Windows servers monitored by Azure Defender will also be available in Defender for Endpoint - Azure Defender seamlessly connects to the Defender for Endpoint tenant, providing a single view across clients and servers.  In addition, Defender for Endpoint alerts will be available in the Azure Defender console.
- Server investigation -  Azure Defender customers can access Microsoft Defender Security Center to perform detailed investigation to uncover the scope of a potential breach.

> [!IMPORTANT]
> - When you use Azure Defender to monitor servers, a Defender for Endpoint tenant is automatically created (in the US for US users, in the EU for European and UK users).<br>
Data collected by Defender for Endpoint is stored in the geo-location of the tenant as identified during provisioning.
> - If you use Defender for Endpoint before using Azure Defender, your data will be stored in the location you specified when you created your tenant even if you integrate with Azure Defender at a later time.
> - Once configured, you cannot change the location where your data is stored. If you need to move your data to another location, you need to contact Microsoft Support to reset the tenant. <br>
Server endpoint monitoring utilizing this integration has been disabled for Office 365 GCC customers.





## Related topics

- [Onboard Windows 10 devices](configure-endpoints.md)
- [Onboard non-Windows devices](configure-endpoints-non-windows.md)
- [Configure proxy and Internet connectivity settings](configure-proxy-internet.md)
- [Run a detection test on a newly onboarded Defender for Endpoint device](run-detection-test.md)
- [Troubleshooting Microsoft Defender for Endpoint onboarding issues](troubleshoot-onboarding.md)
