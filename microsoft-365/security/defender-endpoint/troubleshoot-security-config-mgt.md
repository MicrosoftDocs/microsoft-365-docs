---
title: Troubleshoot  Security Configuration Management Azure Active Directory onboarding issues 
description: Troubleshoot issues that might arise during the onboarding of devices using security configuration management Azure Active Directory.
keywords: troubleshoot onboarding, onboarding issues, event viewer, data collection and preview builds, sensor data and diagnostics
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: troubleshooting
ms.technology: mde
---

# Troubleshoot Security Configuration Management Azure Active Directory onboarding issues 

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**

- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

 

If you are having issues with the onboarding flow for new devices, review that pre-requisites for successful onboarding are met. For more information, see [Onboard Windows devices in Microsoft Endpoint Manager through Microsoft Defender for Endpoint](security-config-management.md#before-you-begin).

 

## Run Client Analyzer on Windows 
The Microsoft Defender for Endpoint Client Analyzer can assist when investigating sensor health issues. Consider running it on endpoints that are failing to complete the Microsoft Defender for Endpoint Security Configuration Management onboarding flow. 

 

For more information about the client analyzer, see [Troubleshoot sensor health using Microsoft Defender for Endpoint Client
Analyzer](/microsoft-365/security/defender-endpoint/overview-client-analyzer?view=o365-worldwide).

 

## Registering domain joined computers with Azure Active Directory  

You'll need to ensure the following: 

  - Computers can authenticate with the domain controller 
  - Computers can communicate with the internet endpoints documented above 
  - Azure AD connect is configured to sync the computer objects. By default, computer OUs are in Azure AD connect sync scope. If the computer objects belong to specific organizational units (OUs), configure the OUs to sync in Azure AD Connect. To learn more about how to sync computer objects by using Azure AD Connect, see [Organizational unit–based filtering](/azure/active-directory/hybrid/how-to-connect-sync-configure-filtering#organizational-unitbased-filtering).

>[!NOTE]
>Azure AD connect does not sync Windows Server 2012 R2 computer objects. If you need to register them with Azure AD for MDE-Attach workflow, then you'll need to customize Axure AD connect sync rule to include those computer objects in sync scope. See "Instructions for applying Computer Join rule in AAD Connect" section below. 

 

## Azure Active Directory Runtime troubleshooting 

### Azure Active Directory Runtime  

The main mechanism to troubleshoot Azure Active Directory Runtime (AADRT) is to collect debug traces. Azure Active Directory Runtime on Windows uses **ETW provider with ID bd67e65c-9cc2-51d8-7399-0bb9899e75c1**. ETW traces need to be captured with the reproduction of the failure (for example if join failure occurs, the traces need to be enabled for the duration of time covering calls to AADRT APIs to perform join).  

See below for a typical error in AADRT log and how to read it: 

![Image of event properties](images/event-properties.png)

From the information in the message, it's possible in most cases to understand what error was encountered, what Win32 API returned the error (if applicable), what URL (if applicable) was used and what AAD Runtime API error was encountered. 

 

## Troubleshooting 

If you weren't able to identify the onboarded device in AAD or MEM, and did not receive an error during the enrollment, checking the registry key `Computer\\HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\SenseCM\\EnrollmentStatus` can provide additional troubleshooting information.  

![Image of enrollment status](images/enrollment-status.png)

The table below lists errors and directions on what to try/check in order to address the error. Note that the list of errors is not complete and is based on typical/common errors encountered by customers in the past: 


| **Error Code**  | **Error State / Configuration **                                                                                                                                                                                 | **Administrator Actions**                                                                                                                                                                                                                                                                                                  |
|-----------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **13**          | **EnrollmentRegistrationComFailure_MEM**   Communication and Firewall Conditions                                                                                                                                 | Review the pre-requisites above (Step 2: Preparing the environment) to ensure the endpoints to complete and Hybrid Azure Active Directory Join are available.                                                                                                                                                               |
| **14**          | **EnrollmentRegistrationComFailure_AAD**   Communication and Firewall Conditions                                                                                                                                 | Review the pre-requisites above (Step 2: Preparing the environment) to ensure the endpoints to complete and Hybrid Azure Active Directory Join are available.                                                                                                                                                               |
| **15**          | **EnrollmentRegistrationFailure_AAD_MismatchTenants**   SCP is not the same AAD tenant as the primary MDE one.                                                                                                 | Make sure the AAD Tenant ID from your MDE Tenant matches the tenant ID in the SCP Entry of your domain.                                                                                                                                                                                                                     |
| **17**          | **EnrollmentRegistrationFailure_AAD_SCP_ENTERPRISE_DRS**    SCP record is configured to join device to Enterprise DRS.  Device cannot be joined to Azure AD                                                      | Review the Device Registration configuration of your Active Directory environment and determine if it is using Enterprise DRS or Azure DRS.                                                                                                                                                                                 |
| **16**          | **EnrollmentRegistrationFailure_AAD_BAD_SCP**    SCP is not configured / Hybrid Joined Not Configured.                                                                                                           | Review the Azure Active Directory documentation found [here](/azure/active-directory/devices/hybrid-azuread-join-manual#configure-a-service-connection-point). Engage with the organization's identity team to deploy the configuration method required for HAADJ.                          |
| **26-32**       | Federated deployments should have the proper claims configured on ADFS                                                                                                                                           | Review the documentation for required claims to complete federated join. Manually validate the endpoints for your environment are available.                                                                                                                                                                                |
| **25**          | **EnrollmentRegistrationComFailure_AAD_CHALLENGE**   Line of sight to a domain controller to complete Kerberos operations   Ensure DNS is properly configured to refer domain requests to a domain controller.   | Review network topology and ensure a domain controller is available to complete hybrid join requests.                                                                                                                                                                                                                       |
| **18**          | **EnrollmentRegistrationFailure_AAD_DEVICE_CERT_WRONG_TENANT**             Azure AD Connect is properly configured to sync 'UserCertificate' attribute used for Azure DRS object creation                       | Review the Azure AD Connect Configuration and ensure the devices being configured for management are within the scope of sync.                                                                                                                                                                                              |
|                 | Precondition not met                                                                                                                                                                                             | For MDE configuration management on Windows Server 2012 R2 domain joined computers, an update to Azure AD Connect sync rule "In from AD-Computer Join" is needed. See "Instructions for applying Computer Join rule in AAD Connect" section below                                                                           |
|                 | No support for Sync server 2012                                                                                                                                                                                  |                                                                                                                                                                                                                                                                                                                             |
| **36**          | **EnrollmentRegistrationFailure_AADRT_LDAP_ERROR**    The device does not seem to be able to successfully access data in Active Directory.                                                                       | Review network topology and ensure LDAP API is available to complete hybrid join requests.                                                                                                                                                                                                                                  |
| **37**          | **AADRT_E_DEVICE_NOT_FOUND**   The device does not seem to be synced from on premise Active Directory.                                                                                                           | For domain joined computer verify that the computer is in scope for synchronization in Azure AD Connect.                                                                                                                                                                                                                    |
| **42**          | **AADRT_OS_HYBRID_JOIN_FAILED**                                                                                                                                                                                  | The error indicates that OS failed to perform hybrid join. Use [Troubleshoot hybrid Azure Active Directory-joined devices \| Microsoft Docs](/azure/active-directory/devices/troubleshoot-hybrid-join-windows-current) as guide for troubleshooting OS-level hybrid join failures.          |
| **38**          | **ERROR_NO_SUCH_DOMAIN**                                                                                                                                                                                         | Invalid DNS settings on the workstation's side: Active directory requires you to use domain DNS to work properly (and not router's address).                                                                                                                                                                                |
| **39**          | **AADRT_LOG_MANIFEST_INSTALL_FAILED**                                                                                                                                                                            |                                                                                                                                                                                                                                                                                                                             |
| **40**          | **ERROR_TIME_SKEW**   There is a difference between the AD and the org clock sync machine                                                                                                                        |                                                                                                                                                                                                                                                                                                                             |
| **41**          | **WININET_E_NAME_NOT_RESOLVED**   This error indicates device OS supports and is configured for Hybrid AADJ but the OS failed to perform the join.                                                               | Retry to confirm this error is consistent. If retries do not help, use [Troubleshoot hybrid Azure Active Directory-joined devices \| Microsoft Docs](/azure/active-directory/devices/troubleshoot-hybrid-join-windows-current) as guide for troubleshooting OS-level hybrid join failures.  |


   
 

## Instructions for applying Computer Join rule in AAD Connect 

For Microsoft Defender for Endpoint configuration management on Windows Server 2012 R2 domain joined computers, an update to Azure AD Connect sync rule "In from AD-Computer Join" is needed. This can be achieved by cloning and modifying the rule, which will disable the original "In from AD - Computer Join" rule. Azure AD Connect by default offers this experience for making changes to built-in rules.

>[!NOTE]
>These changes need to be applied on the server where AAD Connect is running. If you have multiple instances of AAD Connect deployed, these changes must be applied to all instances.* 

1. Open the Synchronization Rules Editor application from the start menu. In the rule list, locate the rule named 'In from AD – Computer Join'. **Take note of the value in the 'Precedence' column for this rule.** 

    ![Image of synchronization rules editor](images/57ea94e2913562abaf93749d306dd6cf.png)

2. With the 'In from AD – Computer Join' rule highlighted, select **Edit**. In the **Edit Reserved Rule Confirmation** dialog box, select **Yes**. 

   ![Image of edit reserved rule confirmation](images/8854440d6180a5580efda24110551c68.png)

3. The 'Edit inbound synchronization rule' window will be shown. Update the rule description to note that Windows Server 2012R2 will be synchronized using this rule. Leave all other options unchanged except for the Precedence value. Enter a value for Precedence that is higher than the value from the original rule (as seen in the rule list).  

   ![Image of confirmation](images/ee0f29162bc3f2fbe666c22f14614c45.png)

4.  Select **Next** three times. This will navigate to the 'Transformations' section of the rule. Do not make any changes to the 'Scoping filter' and 'Join rules' sections of the rule. The 'Transformations' section should now be shown. 

    ![Image of inbound synchornization rule](images/296f2c2a705e41233631c3784373bc23.png)

5. Scroll to the bottom of the list of transformations. Find the transformation for the 'cloudFiltered' attribute. In the textbox in the 'Source' column, select all of the text (Control-A) and delete it. The textbox should now be empty. 

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
        IsCert($c) && CertNotAfter($c) > Now() && RegexIsMatch(CertSubject($c), "CN=[{]*" & String-FromGuid([objectGUID]) & "[}]*", "IgnoreCase")),
      Count($validCerts) = 0)
  ),
  True,
  NULL
)

```

7.  Select **Save** to save the new rule.
