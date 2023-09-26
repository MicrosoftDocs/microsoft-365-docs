---
title: Troubleshoot onboarding issues related to Security Management for Microsoft Defender for Endpoint
description: Troubleshoot issues that might arise during the onboarding of devices using Security Management for Microsoft Defender for Endpoint.
ms.service: microsoft-365-security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier3
ms.topic: troubleshooting
ms.subservice: mde
search.appverid: met150
ms.date: 08/04/2023
---

# Troubleshoot onboarding issues related to Security Management for Microsoft Defender for Endpoint

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Manage Microsoft Defender for Endpoint on devices with Microsoft Intune](/mem/intune/protect/mde-security-integration)
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)



>[!NOTE]
>Customers who have turned on [preview features](preview.md#turn-on-preview-features) will have early access to the endpoint security policies management that does not require Azure Active Directory registration for device management scenarios. The sections below that refer to Azure AD registration do not apply for customers enrolled in the public preview.

Security Management for Microsoft Defender for Endpoint is a capability for devices that aren't managed by Microsoft Intune or Microsoft Configuration Manager to receive security configurations for Microsoft Defender for Endpoint directly from Intune.
For more information on Security Management for Microsoft Defender for Endpoint, see [Manage Microsoft Defender for Endpoint on devices with Microsoft Intune](/mem/intune/protect/mde-security-integration).

For Security Management for Microsoft Defender for Endpoint onboarding instructions, see [Microsoft Defender for Endpoint Security Configuration Management](security-config-management.md)

This end-to-end onboarding is designed to be frictionless and doesn't require user input. However, if you encounter issues during onboarding, you can view and troubleshoot errors within the Microsoft Defender for Endpoint platform.

> [!NOTE]
> If you are having issues with the onboarding flow for new devices, review the [Microsoft Defender for Endpoint prerequisites](/mem/intune/protect/mde-security-integration#prerequisites) and make sure the onboarding instructions are followed.

For more information about the client analyzer, see [Troubleshoot sensor health using Microsoft Defender for Endpoint Client Analyzer](/microsoft-365/security/defender-endpoint/overview-client-analyzer).

## Registering domain joined computers with Azure Active Directory

To successfully register devices to Azure Active Directory, you need to ensure the following:

- Computers can authenticate with the domain controller
- Computers have access to the following Microsoft resources from inside your organization's network:
  - /windows/iot/iot-enterprise/commercialization/licensing
  - <https://login.microsoftonline.com>
  - <https://device.login.microsoftonline.com>
- Azure AD connect is configured to sync the computer objects. By default, computer OUs are in Azure AD connect sync scope. If the computer objects belong to specific organizational units (OUs), configure the OUs to sync in Azure AD Connect. To learn more about how to sync computer objects by using Azure AD Connect, see [Organizational unit–based filtering](/azure/active-directory/hybrid/how-to-connect-sync-configure-filtering#organizational-unitbased-filtering).

> [!IMPORTANT]
> Azure AD connect does not sync Windows Server 2012 R2 computer objects. If you need to register them with Azure AD for Security Management for Microsoft Defender for Endpoint, then you'll need to customize Azure AD connect sync rule to include those computer objects in sync scope. See [Instructions for applying Computer Join rule in Azure Active Directory Connect](#instructions-for-applying-computer-join-rule-in-aad-connect).

> [!NOTE]
> To successfully complete the onboarding flow, and independent of a device's Operating System, the Azure Active Directory state of a device can change, based on the devices' initial state:
>
>
> |Starting Device State|New Device State|
> |---|---|
> |Already AADJ or HAADJ|Remains as is|
> |Not AADJ or Hybrid Azure Active Directory Join (HAADJ) + Domain joined|Device is HAADJ'd|
> |Not AADJ or HAADJ + Not domain joined|Device is AADJ'd|
>
> Where AADJ represents Azure Active Directory Joined and HAADJ represents Hybrid Azure Active Directory Joined.

## Troubleshoot errors from the Microsoft Defender for Endpoint portal

Through the Microsoft Defender for Endpoint portal, security administrators can now troubleshoot Security Management for Microsoft Defender for Endpoint onboarding.

In **Configuration management** the **Onboarded via MDE security management** widget has been added to present the enrollment status breakdown of Microsoft Defender for Endpoint-managed devices.

To see a list of all devices managed by Microsoft Defender for Endpoint, select **View all devices managed by MDE**.

In the list, if a device's enrollment status isn't "Success", select the device to see troubleshooting details in the side panel, pointing to the root cause of the error, and corresponding documentation.

:::image type="content" source="./images/secconfig-mde-error.png" alt-text="The filter criteria applied on the device inventory page" lightbox="./images/secconfig-mde-error.png":::

> [!NOTE]
> We are aware of an issue impacting the accurate detection of third-party MDMs when trying to use the security management feature and are working on a fix.

## Run Microsoft Defender for Endpoint Client Analyzer on Windows

Consider running the Client Analyzer on endpoints that are failing to complete the Security Management for Microsoft Defender for Endpoint onboarding flow. For more information about the client analyzer, see [Troubleshoot sensor health using Microsoft Defender for Endpoint Client Analyzer](overview-client-analyzer.md).

The Client Analyzer output file (MDE Client Analyzer Results.htm) can provide key troubleshooting information:

- Verify that the device OS is in scope for Security Management for Microsoft Defender for Endpoint onboarding flow in **General Device Details** section
- Verify that the device has successfully registered to Azure Active Directory in **Device Configuration Management Details**

  :::image type="content" source="images/client-analyzer-results.png" alt-text="The client analyzer results" lightbox="images/client-analyzer-results.png":::

In the **Detailed Results** section of the report, the Client Analyzer also provides actionable guidance.

> [!TIP]
> Make sure the Detailed Results section of the report does not include any "Errors", and make sure to review all "Warning" messages.

For example, as part of the Security Management onboarding flow, it's required for the Azure Active Directory Tenant ID in your Microsoft Defender for Endpoint Tenant to match the SCP Tenant ID that appears in the reports' **Device Configuration Management Details** section. If relevant, the report output recommends performing this verification.

:::image type="content" source="images/detailed-results.png" alt-text="The page displaying the detailed results" lightbox="images/detailed-results.png":::

## General troubleshooting

If you weren't able to identify the onboarded device in Azure AD or in the Intune admin center, and didn't receive an error during the enrollment, checking the registry key `Computer\\HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\SenseCM\\EnrollmentStatus` can provide additional troubleshooting information.

:::image type="content" source="images/enrollment-status.png" alt-text="The page displaying the enrollment status" lightbox="images/enrollment-status.png":::

The following table lists errors and directions on what to try/check in order to address the error. Note that the list of errors isn't complete and is based on typical/common errors encountered by customers in the past:

|Error Code|Enrollment Status|Administrator Actions|
|---|---|---|
|`5-7`, `9`, `11-12`, `26-33`|General error|The device was successfully onboarded to Microsoft Defender for Endpoint. However, there was an error in the security configuration management flow. This could be due to the device not meeting [prerequisites for Microsoft Defender for Endpoint management channel](security-config-management.md). Running the [Client Analyzer](https://aka.ms/BetaMDEAnalyzer) on the device can help identify the root cause of the issue. If this doesn't help, contact support.|
| `8`, `44` | Microsoft Intune Configuration issue | The device was successfully onboarded to Microsoft Defender for Endpoint. However, Microsoft Intune hasn't been configured through the Admin Center to allow Microsoft Defender for Endpoint Security Configuration. Make sure the [Microsoft Intune tenant is configured and the feature is turned on](/mem/intune/protect/mde-security-integration#configure-your-tenant-to-support-microsoft-defender-for-endpoint-security-configuration-management).|
|`13-14`,`20`,`24`,`25`|Connectivity issue|The device was successfully onboarded to Microsoft Defender for Endpoint. However, there was an error in the security configuration management flow, which could be due to a connectivity issue. Verify that the [Azure Active Directory and Microsoft Intune endpoints](security-config-management.md#connectivity-requirements) are opened in your firewall.|
|`10`,`42`|General Hybrid join failure|The device was successfully onboarded to Microsoft Defender for Endpoint. However, there was an error in the security configuration management flow and the OS failed to perform hybrid join. Use [Troubleshoot hybrid Azure Active Directory-joined devices](/azure/active-directory/devices/troubleshoot-hybrid-join-windows-current) for troubleshooting OS-level hybrid join failures.|
|`15`|Tenant mismatch|The device was successfully onboarded to Microsoft Defender for Endpoint. However, there was an error in the security configuration management flow because your Microsoft Defender for Endpoint tenant ID doesn't match your Azure Active Directory tenant ID. Make sure that the Azure Active Directory tenant ID from your Defender for Endpoint tenant matches the tenant ID in the SCP entry of your domain. For more details, [Troubleshoot onboarding issues related to Security Management for Microsoft Defender for Endpoint](troubleshoot-security-config-mgt.md).|
|`16`,`17`|Hybrid error - Service Connection Point|The device was successfully onboarded to Microsoft Defender for Endpoint. However, Service Connection Point (SCP) record isn't configured correctly and the device couldn't be joined to Azure AD. This could be due to the SCP being configured to join Enterprise DRS. Make sure the SCP record points to AAD and SCP is configured following best practices. For more information, see [Configure a service connection point](/azure/active-directory/devices/hybrid-azuread-join-manual#configure-a-service-connection-point).|
|`18`|Certificate error|The device was successfully onboarded to Microsoft Defender for Endpoint. However, there was an error in the security configuration management flow due to a device certificate error. The device certificate belongs to a different tenant. Verify that best practices are followed when creating [trusted certificate profiles](/mem/intune/protect/certificates-trusted-root#create-trusted-certificate-profiles).|
|`36` , `37`| AAD Connect misconfiguration |The device was successfully onboarded to Microsoft Defender for Endpoint. However, there was an error in the security configuration management flow due to a misconfiguration in AAD Connect. To identify what is preventing the device from registering to AAD, consider running the [Device Registration Troubleshooter Tool](/samples/azure-samples/dsregtool/dsregtool). For Windows Server 2012 R2, run the  [dedicated troubleshooting instructions](/azure/active-directory/devices/troubleshoot-hybrid-join-windows-legacy).  |
|`38`,`41`|DNS error|The device was successfully onboarded to Microsoft Defender for Endpoint. However, there was an error in the security configuration management flow due to a DNS error. Check the internet connection and/or DNS settings on the device. The invalid DNS settings might be on the workstation's side. Active Directory requires you to use domain DNS to work properly (and not the router's address). For more information, see [Troubleshoot onboarding issues related to Security Management for Microsoft Defender for Endpoint](troubleshoot-security-config-mgt.md).|
|`40`|Clock sync issue|The device was successfully onboarded to Microsoft Defender for Endpoint. However, there was an error in the security configuration management flow. Verify that the clock is set correctly and is synced on the device where the error occurs.|
|`43`|MDE and ConfigMgr|The device is managed using Configuration Manager and Microsoft Defender for Endpoint. Controlling policies through both channels may cause conflicts and undesired results. To avoid this, endpoint security policies should be isolated to a single control plane. |

## Azure Active Directory Runtime troubleshooting

The main mechanism to troubleshoot Azure Active Directory Runtime (AADRT) is to collect debug traces. Azure Active Directory Runtime on Windows uses **ETW provider with ID bd67e65c-9cc2-51d8-7399-0bb9899e75c1**. ETW traces need to be captured with the reproduction of the failure (for example if join failure occurs, the traces need to be enabled for the duration of time covering calls to AADRT APIs to perform join).

See below for a typical error in AADRT log and how to read it:

:::image type="content" source="images/event-properties.png" alt-text="The event properties page" lightbox="images/event-properties.png":::

From the information in the message, it's possible in most cases to understand what error was encountered, what Win32 API returned the error (if applicable), what URL (if applicable) was used and what AAD Runtime API error was encountered.

## Instructions for applying Computer Join rule in AAD Connect

For Security Management for Microsoft Defender for Endpoint on Windows Server 2012 R2 domain joined computers, an update to Azure AD Connect sync rule "In from AD-Computer Join" is needed. This can be achieved by cloning and modifying the rule, which disables the original "In from AD - Computer Join" rule. Azure AD Connect by default offers this experience for making changes to built-in rules.

> [!NOTE]
> These changes need to be applied on the server where AAD Connect is running. If you have multiple instances of AAD Connect deployed, these changes must be applied to all instances.

1. Open the Synchronization Rules Editor application from the start menu. In the rule list, locate the rule named **In from AD – Computer Join**. **Take note of the value in the 'Precedence' column for this rule.**

   :::image type="content" source="images/57ea94e2913562abaf93749d306dd6cf.png" alt-text="The synchronization rules editor" lightbox="images/57ea94e2913562abaf93749d306dd6cf.png":::

2. With the **In from AD – Computer Join** rule highlighted, select **Edit**. In the **Edit Reserved Rule Confirmation** dialog box, select **Yes**.

   :::image type="content" source="images/8854440d6180a5580efda24110551c68.png" alt-text="The edit reserved rule confirmation page" lightbox="images/8854440d6180a5580efda24110551c68.png":::

3. The **Edit inbound synchronization rule** window will be shown. Update the rule description to note that Windows Server 2012R2 will be synchronized using this rule. Leave all other options unchanged except for the Precedence value. Enter a value for Precedence that is higher than the value from the original rule (as seen in the rule list).

   :::image type="content" source="images/ee0f29162bc3f2fbe666c22f14614c45.png" alt-text="The Edit inbound synchronization rule page in which you enter values" lightbox="images/ee0f29162bc3f2fbe666c22f14614c45.png":::

4. Select **Next** three times. This navigates to the 'Transformations' section of the rule. Don't make any changes to the 'Scoping filter' and 'Join rules' sections of the rule. The 'Transformations' section should now be shown.

   :::image type="content" source="images/296f2c2a705e41233631c3784373bc23.png" alt-text="The inbound synchronization rule" lightbox="images/296f2c2a705e41233631c3784373bc23.png":::

5. Scroll to the bottom of the list of transformations. Find the transformation for the **cloudFiltered** attribute. In the textbox in the **Source** column, select all of the text (Control-A) and delete it. The textbox should now be empty.

6. Paste the content for the new rule into the textbox.

    ```command
    IIF(
      IsNullOrEmpty([userCertificate])
      ||
      (
        (InStr(UCase([operatingSystem]),"WINDOWS") > 0)
        &&
        (Left([operatingSystemVersion],2) = "6.")
        &&
        (Left([operatingSystemVersion],3) <> "6.3")
      )
      ||
      (
        (Left([operatingSystemVersion],3) = "6.3")
        &&
        (InStr(UCase([operatingSystem]),"WINDOWS") > 0)
        &&
        With(
          $validCerts,
          Where(
            $c,
            [userCertificate],
            IsCert($c) && CertNotAfter($c) > Now() && RegexIsMatch(CertSubject($c), "CN=[{]*" & StringFromGuid([objectGUID]) & "[}]*", "IgnoreCase")),
          Count($validCerts) = 0)
      ),
      True,
      NULL
    )
    ```

7. Select **Save** to save the new rule.

> [!NOTE]
> After this rule change is performed, a full synchronization of your Active Directory is required. For large environments, it is recommended to schedule this rule change and full sync during on-premises Active Directory quiet periods.

## Related topic

- [Manage Microsoft Defender for Endpoint on devices with Microsoft Intune](/mem/intune/protect/mde-security-integration)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
