---
title: Troubleshoot onboarding issues related to Security Management for Microsoft Defender for Endpoint
description: Troubleshoot issues that might arise during the onboarding of devices using Security Management for Microsoft Defender for Endpoint.
ms.service: defender-endpoint
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier3
ms.topic: troubleshooting
ms.subservice: onboard
search.appverid: met150
ms.date: 12/14/2023
---

# Troubleshoot onboarding issues related to Security Management for Microsoft Defender for Endpoint

[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Manage Microsoft Defender for Endpoint on devices with Microsoft Intune](/mem/intune/protect/mde-security-integration)
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender XDR](https://go.microsoft.com/fwlink/?linkid=2118804)
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)



Security Management for Microsoft Defender for Endpoint is a capability for devices that aren't managed by Microsoft Intune to receive security configurations.
For more information on Security Management for Microsoft Defender for Endpoint, see [Manage Microsoft Defender for Endpoint on devices with Microsoft Intune](/mem/intune/protect/mde-security-integration).

For Security Management for Microsoft Defender for Endpoint onboarding instructions, see [Microsoft Defender for Endpoint Security Configuration Management](security-config-management.md)


For more information about the client analyzer, see [Troubleshoot sensor health using Microsoft Defender for Endpoint Client Analyzer](/microsoft-365/security/defender-endpoint/overview-client-analyzer).

<a name='registering-domain-joined-computers-with-azure-active-directory'></a>



## Run Microsoft Defender for Endpoint Client Analyzer on Windows

Consider running the Client Analyzer on endpoints that are failing to complete the Security Management for Microsoft Defender for Endpoint onboarding flow. For more information about the client analyzer, see [Troubleshoot sensor health using Microsoft Defender for Endpoint Client Analyzer](overview-client-analyzer.md).

The Client Analyzer output file (MDE Client Analyzer Results.htm) can provide key troubleshooting information:

- Verify that the device OS is in scope for Security Management for Microsoft Defender for Endpoint onboarding flow in **General Device Details** section
- Verify that the device appears in Microsoft Entra ID in **Device Configuration Management Details**

  :::image type="content" source="images/client-analyzer-results.png" alt-text="The client analyzer results" lightbox="images/client-analyzer-results.png":::

In the **Detailed Results** section of the report, the Client Analyzer also provides actionable guidance.

> [!TIP]
> Make sure the Detailed Results section of the report does not include any "Errors", and make sure to review all "Warning" messages.

## General troubleshooting

If you weren't able to identify the onboarded device in Microsoft Entra ID or in the Intune admin center, and didn't receive an error during the enrollment, checking the registry key `Computer\\HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\SenseCM\\EnrollmentStatus` can provide additional troubleshooting information.

:::image type="content" source="images/enrollment-status.png" alt-text="The page displaying the enrollment status" lightbox="images/enrollment-status.png":::

The following table lists errors and directions on what to try/check in order to address the error. Note that the list of errors isn't complete and is based on typical/common errors encountered by customers in the past:

|Error Code|Enrollment Status|Administrator Actions|
|---|---|---|
|`5-7`, `9`, `11-12`, `26-33`|General error|The device was successfully onboarded to Microsoft Defender for Endpoint. However, there was an error in the security configuration management flow. This could be due to the device not meeting [prerequisites for Microsoft Defender for Endpoint management channel](security-config-management.md). Running the [Client Analyzer](https://aka.ms/BetaMDEAnalyzer) on the device can help identify the root cause of the issue. If this doesn't help, contact support.|
| `8`, `44` | Microsoft Intune Configuration issue | The device was successfully onboarded to Microsoft Defender for Endpoint. However, Microsoft Intune hasn't been configured through the Admin Center to allow Microsoft Defender for Endpoint Security Configuration. Make sure the [Microsoft Intune tenant is configured and the feature is turned on](/mem/intune/protect/mde-security-integration#configure-your-tenant-to-support-microsoft-defender-for-endpoint-security-configuration-management).|
|`13-14`,`20`,`24`,`25`|Connectivity issue|The device was successfully onboarded to Microsoft Defender for Endpoint. However, there was an error in the security configuration management flow, which could be due to a connectivity issue. Verify that the [Microsoft Entra ID and Microsoft Intune endpoints](security-config-management.md#connectivity-requirements) are opened in your firewall.|
|`10`,`42`|General Hybrid join failure|The device was successfully onboarded to Microsoft Defender for Endpoint. However, there was an error in the security configuration management flow and the OS failed to perform hybrid join. Use [Troubleshoot Microsoft Entra hybrid joined devices](/azure/active-directory/devices/troubleshoot-hybrid-join-windows-current) for troubleshooting OS-level hybrid join failures.|
|`15`|Tenant mismatch|The device was successfully onboarded to Microsoft Defender for Endpoint. However, there was an error in the security configuration management flow because your Microsoft Defender for Endpoint tenant ID doesn't match your Microsoft Entra tenant ID. Make sure that the Microsoft Entra tenant ID from your Defender for Endpoint tenant matches the tenant ID in the SCP entry of your domain. For more details, [Troubleshoot onboarding issues related to Security Management for Microsoft Defender for Endpoint](troubleshoot-security-config-mgt.md).|
|`16`,`17`|Hybrid error - Service Connection Point|The device was successfully onboarded to Microsoft Defender for Endpoint. However, Service Connection Point (SCP) record isn't configured correctly and the device couldn't be joined to Microsoft Entra ID. This could be due to the SCP being configured to join Enterprise DRS. Make sure the SCP record points to Microsoft Entra ID and SCP is configured following best practices. For more information, see [Configure a service connection point](/azure/active-directory/devices/hybrid-azuread-join-manual#configure-a-service-connection-point).|
|`18`|Certificate error|The device was successfully onboarded to Microsoft Defender for Endpoint. However, there was an error in the security configuration management flow due to a device certificate error. The device certificate belongs to a different tenant. Verify that best practices are followed when creating [trusted certificate profiles](/mem/intune/protect/certificates-trusted-root#create-trusted-certificate-profiles).|
|`36` , `37`| Microsoft Entra Connect misconfiguration |The device was successfully onboarded to Microsoft Defender for Endpoint. However, there was an error in the security configuration management flow due to a misconfiguration in Microsoft Entra Connect. To identify what is preventing the device from registering to Microsoft Entra ID, consider running the [Device Registration Troubleshooter Tool](/samples/azure-samples/dsregtool/dsregtool). For Windows Server 2012 R2, run the  [dedicated troubleshooting instructions](/azure/active-directory/devices/troubleshoot-hybrid-join-windows-legacy).  |
|`38`,`41`|DNS error|The device was successfully onboarded to Microsoft Defender for Endpoint. However, there was an error in the security configuration management flow due to a DNS error. Check the internet connection and/or DNS settings on the device. The invalid DNS settings might be on the workstation's side. Active Directory requires you to use domain DNS to work properly (and not the router's address). For more information, see [Troubleshoot onboarding issues related to Security Management for Microsoft Defender for Endpoint](troubleshoot-security-config-mgt.md).|
|`40`|Clock sync issue|The device was successfully onboarded to Microsoft Defender for Endpoint. However, there was an error in the security configuration management flow. Verify that the clock is set correctly and is synced on the device where the error occurs.|
|`43`|MDE and ConfigMgr|The device is managed using Configuration Manager and Microsoft Defender for Endpoint. Controlling policies through both channels may cause conflicts and undesired results. To avoid this, endpoint security policies should be isolated to a single control plane. |

<a name='azure-active-directory-runtime-troubleshooting'></a>


## Related topic

- [Manage Microsoft Defender for Endpoint on devices with Microsoft Intune](/mem/intune/protect/mde-security-integration)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
