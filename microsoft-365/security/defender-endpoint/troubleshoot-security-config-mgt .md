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

 

If you are having issues with the onboarding flow for new devices, review that pre-requisites for successful onboarding are met.  

See [<span class="underline">Onboard Windows devices in Microsoft Endpoint Manager through Microsoft Defender for Endpoint.</span>](https://review.docs.microsoft.com/en-us/microsoft-365/security/defender-endpoint/security-config-management?view=o365-worldwide&branch=security-config#before-you-begin)  

 

## Run Client Analyzer on Windows 
The Microsoft Defender for Endpoint Client Analyzer can assist when investigating sensor health issues. Consider running it on endpoints that are failing to complete the Microsoft Defender for Endpoint Security Configuration Management onboarding flow. 

 

For more information about the client analyzer, see [<span class="underline">Troubleshoot sensor health using Microsoft Defender for Endpoint Client Analyzer</span>](https://docs.microsoft.com/en-us/microsoft-365/security/defender-endpoint/overview-client-analyzer?view=o365-worldwide) 

 

## Registering domain joined computers with Azure Active Directory  

You’ll need to ensure the following: 

  - Computers can authenticate with the domain controller 
  - Computers can communicate with the internet endpoints documented above 
  - Azure AD connect is configured to sync the computer objects. By default, computer OUs are in Azure AD connect sync scope. If the computer objects belong to specific organizational units (OUs), configure the OUs to sync in Azure AD Connect. To learn more about how to sync computer objects by using Azure AD Connect, see [<span class="underline">Organizational unit–based filtering</span>](https://nam06.safelinks.protection.outlook.com/?url=https%3A%2F%2Fdocs.microsoft.com%2Fen-us%2Fazure%2Factive-directory%2Fhybrid%2Fhow-to-connect-sync-configure-filtering%23organizational-unitbased-filtering&data=04%7C01%7Csandeo%40microsoft.com%7C0e8e0de948cd4992eccf08d96f2cee5b%7C72f988bf86f141af91ab2d7cd011db47%7C1%7C0%7C637663061047157539%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&sdata=e55Q8rT0crjwX2EuJxAEEbAzRlJszG1TTzgIJXfNRJM%3D&reserved=0) 

>[!NOTE]
>Azure AD connect does not sync Windows Server 2012 R2 computer objects. If you need to register them with Azure AD for MDE-Attach workflow, then you’ll need to customize Axure AD connect sync rule to include those computer objects in sync scope. See “Instructions for applying Computer Join rule in AAD Connect” section below. 

 

## Azure Active Directory Runtime troubleshooting 

### Azure Active Directory Runtime  

The main mechanism to troubleshoot Azure Active Directory Runtime (AADRT) is to collect debug traces. Azure Active Directory Runtime on Windows uses **ETW provider with ID bd67e65c-9cc2-51d8-7399-0bb9899e75c1**. ETW traces need to be captured with the reproduction of the failure (for example if join failure occurs, the traces need to be enabled for the duration of time covering calls to AADRT APIs to perform join).  

See below for a typical error in AADRT log and how to read it: 

![Graphical user interface, text
Description automatically generated](c:\\microsoft-365-docs-pr\\microsoft-365\\security\\defender-endpoint/media/image1.png) 

From the information in the message, it’s possible in most cases to understand what error was encountered, what Win32 API returned the error (if applicable), what URL (if applicable) was used and what AAD Runtime API error was encountered. 

 

## Troubleshooting 

If you weren’t able to identify the onboarded device in AAD or MEM, and did not receive an error during the enrollment, checking the registry key “Computer\\HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\SenseCM\\EnrollmentStatus” can provide additional troubleshooting information.  

![Graphical user interface
Description automatically generated with medium confidence](c:\\microsoft-365-docs-pr\\microsoft-365\\security\\defender-endpoint/media/image2.png) 

The table below lists errors and directions on what to try/check in order to address the error. Note that the list of errors is not complete and is based on typical/common errors encountered by customers in the past: 

<table>
<thead>
<tr class="header">
<th><strong>Error Code</strong> </th>
<th><strong>Error State / Configuration </strong> </th>
<th><blockquote>
<p><strong>Administrator Actions </strong> </p>
</blockquote></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>13</strong> </td>
<td><p><strong>EnrollmentRegistrationComFailure_MEM</strong> </p>
<p> </p>
<p>Communication and Firewall Conditions   </p></td>
<td>Review the pre-requisites above (Step 2: Preparing the environment) to ensure the endpoints to complete and Hybrid Azure Active Directory Join are available.  </td>
</tr>
<tr class="even">
<td><strong>14</strong> </td>
<td><p><strong>EnrollmentRegistrationComFailure_AAD</strong> </p>
<p> </p>
<p>Communication and Firewall Conditions  </p></td>
<td>Review the pre-requisites above (Step 2: Preparing the environment) to ensure the endpoints to complete and Hybrid Azure Active Directory Join are available. </td>
</tr>
<tr class="odd">
<td><strong>15</strong> </td>
<td><p><strong>EnrollmentRegistrationFailure_AAD_MismatchTenants  </strong> </p>
<p> </p>
<p>SCP is not the same AAD tenant as the primary MDE one.  </p></td>
<td>Make sure the AAD Tenant ID from your MDE Tenant matches the tenant ID in the SCP Entry of your domain.  </td>
</tr>
<tr class="even">
<td><strong>17</strong> </td>
<td><p><strong>EnrollmentRegistrationFailure_AAD_SCP_ENTERPRISE_DRS</strong>  </p>
<p> </p>
<p>SCP record is configured to join device to Enterprise DRS.  Device cannot be joined to Azure AD  </p>
<p>  </p></td>
<td>Review the Device Registration configuration of your Active Directory environment and determine if it is using Enterprise DRS or Azure DRS. </td>
</tr>
<tr class="odd">
<td><strong>16</strong> </td>
<td><p><strong>EnrollmentRegistrationFailure_AAD_BAD_SCP</strong>  </p>
<p> </p>
<p>SCP is not configured / Hybrid Joined Not Configured.  </p>
<p>  </p></td>
<td>Review the Azure Active Directory documentation found <a href="https://docs.microsoft.com/en-us/azure/active-directory/devices/hybrid-azuread-join-manual#configure-a-service-connection-point"><span class="underline">here</span></a>. Engage with the organization’s identity team to deploy the configuration method required for HAADJ.  </td>
</tr>
<tr class="even">
<td><strong>26-32</strong> </td>
<td>Federated deployments should have the proper claims configured on ADFS  </td>
<td>Review the documentation for required claims to complete federated join. Manually validate the endpoints for your environment are available.  </td>
</tr>
<tr class="odd">
<td><strong>25</strong> </td>
<td><p><strong>EnrollmentRegistrationComFailure_AAD_CHALLENGE</strong> </p>
<p> </p>
<p>Line of sight to a domain controller to complete Kerberos operations  </p>
<p>  </p>
<p>Ensure DNS is properly configured to refer domain requests to a domain controller.  </p></td>
<td>Review network topology and ensure a domain controller is available to complete hybrid join requests.  </td>
</tr>
<tr class="even">
<td><strong>18</strong> </td>
<td><p><strong>EnrollmentRegistrationFailure_AAD_DEVICE_CERT_WRONG_TENANT </strong>           </p>
<p> </p>
<p>Azure AD Connect is properly configured to sync ‘UserCertificate’ attribute used for Azure DRS object creation  </p></td>
<td>Review the Azure AD Connect Configuration and ensure the devices being configured for management are within the scope of sync.  </td>
</tr>
<tr class="odd">
<td> </td>
<td>Precondition not met  <br />
No support for Sync server 2012  </td>
<td>For MDE configuration management on Windows Server 2012 R2 domain joined computers, an update to Azure AD Connect sync rule “In from AD-Computer Join” is needed. See “Instructions for applying Computer Join rule in AAD Connect” section below </td>
</tr>
<tr class="even">
<td><strong>36</strong> </td>
<td><p><strong>EnrollmentRegistrationFailure_AADRT_LDAP_ERROR</strong>  </p>
<p> </p>
<p>The device does not seem to be able to successfully access data in Active Directory. </p></td>
<td>Review network topology and ensure LDAP API is available to complete hybrid join requests.  </td>
</tr>
<tr class="odd">
<td><strong>37</strong> </td>
<td><p><strong>AADRT_E_DEVICE_NOT_FOUND</strong> </p>
<p> </p>
<p>The device does not seem to be synced from on premise Active Directory. </p></td>
<td><p>For domain joined computer verify that the computer is in scope for synchronization in Azure AD Connect. </p>
<p>Use <a href="https://docs.microsoft.com/en-us/azure/active-directory/hybrid/tshoot-connect-objectsync"><span class="underline">Troubleshoot object synchronization with Azure AD Connect sync</span></a>   </p></td>
</tr>
<tr class="even">
<td><strong>42</strong> </td>
<td><strong>AADRT_OS_HYBRID_JOIN_FAILED</strong> </td>
<td>The error indicates that OS failed to perform hybrid join. Use <a href="https://docs.microsoft.com/en-us/azure/active-directory/devices/troubleshoot-hybrid-join-windows-current"><span class="underline">Troubleshoot hybrid Azure Active Directory-joined devices | Microsoft Docs</span></a> as guide for troubleshooting OS-level hybrid join failures. </td>
</tr>
<tr class="odd">
<td><strong>38</strong> </td>
<td><p><strong>ERROR_NO_SUCH_DOMAIN</strong> </p>
<p> </p>
<p>Communication with on-prem AD is not working at the moment.  </p></td>
<td>Invalid DNS settings on the workstation's side: Active directory requires you to use domain DNS to work properly (and not router's address). </td>
</tr>
<tr class="even">
<td><strong>39</strong> </td>
<td><p><strong>AADRT_LOG_MANIFEST_INSTALL_FAILED</strong> </p>
<p> </p>
<p>Installation of AAD Runtime Admin log provider failed. This does not affect functionality, but may pose a challenge to troubleshoot AAD join and authentication issues.  </p></td>
<td>Collect verbose traces to determine which exact step of log provider manifest installation fails.  </td>
</tr>
<tr class="odd">
<td><strong>40</strong> </td>
<td><p><strong>ERROR_TIME_SKEW</strong> </p>
<p> </p>
<p>There is a difference between the AD and the org clock sync machine </p></td>
<td>Make sure clock is correctly set/synced on the device where the errors occurs.    </td>
</tr>
<tr class="even">
<td><strong>41</strong> </td>
<td><p><strong>WININET_E_NAME_NOT_RESOLVED</strong> </p>
<p> </p>
<p>This error indicates device OS supports and is configured for Hybrid AADJ but the OS failed to perform the join. </p></td>
<td>Retry to confirm this error is consistent. If retries do not help, use <a href="https://docs.microsoft.com/en-us/azure/active-directory/devices/troubleshoot-hybrid-join-windows-current"><span class="underline">Troubleshoot hybrid Azure Active Directory-joined devices | Microsoft Docs</span></a> as guide for troubleshooting OS-level hybrid join failures. </td>
</tr>
</tbody>
</table>

   
 

Instructions for applying Computer Join rule in AAD Connect 

*For MDE configuration management on Windows Server 2012 R2 domain joined computers, an update to Azure AD Connect sync rule “In from AD-Computer Join” is needed. This can be achieved by cloning and modifying the rule, which will disable the original “In from AD - Computer Join” rule. Azure AD Connect by default offers this experience for making changes to built-in rules.* 

*Note that these changes need to be applied on the server where AAD Connect is running. If you have multiple instances of AAD Connect deployed, these changes must be applied to all instances.* 

1.  > Open the Synchronization Rules Editor application from the start menu. In the rule list, locate the rule named ‘In from AD – Computer Join’. **Take note of the value in the ‘Precedence’ column for this rule.** 

![](c:\\microsoft-365-docs-pr\\microsoft-365\\security\\defender-endpoint/media/image3.gif) 

 

2.  > With the ‘In from AD – Computer Join’ rule highlighted, click on the ‘Edit’ button. In the ‘Edit Reserved Rule Confirmation’ dialog box, click ‘Yes’. 

![](c:\\microsoft-365-docs-pr\\microsoft-365\\security\\defender-endpoint/media/image3.gif) 

 

3.  > The ‘Edit inbound synchronization rule’ window will be shown. Update the rule description to note that Windows Server 2012R2 will be synchronized using this rule. Leave all other options unchanged except for the Precedence value. Enter a value for Precedence that is higher than the value from the original rule (as seen in the rule list).  

![](c:\\microsoft-365-docs-pr\\microsoft-365\\security\\defender-endpoint/media/image3.gif) 

 

4.  > Click the ‘Next’ button three times. This will navigate to the ‘Transformations’ section of the rule. Do not make any changes to the ‘Scoping filter’ and ‘Join rules’ sections of the rule. The ‘Transformations’ section should now be shown. 

 

![](c:\\microsoft-365-docs-pr\\microsoft-365\\security\\defender-endpoint/media/image3.gif) 

 

5.  > Scroll to the bottom of the list of transformations. Find the transformation for the ‘cloudFiltered’ attribute. In the textbox in the ‘Source’ column, select all of the text (Control-A) and delete it. The textbox should now be empty. 

 

6.  > Paste the content for the new rule into the textbox. 

> IIF( 
> 
>   IsNullOrEmpty(\[userCertificate\]) 
> 
>   ||  
> 
>   ( 
> 
>     (InStr(UCase(\[operatingSystem\]),"WINDOWS") \> 0) 
> 
>     &&  
> 
>     (Left(\[operatingSystemVersion\],2) = "6.") 
> 
>     && 
> 
>     (Left(\[operatingSystemVersion\],3) \<\> "6.3") 
> 
>   ) 
> 
>   || 
> 
>   ( 
> 
>     (Left(\[operatingSystemVersion\],3) = "6.3")  
> 
>     && 
> 
>     (InStr(UCase(\[operatingSystem\]),"WINDOWS") \> 0) 
> 
>     && 
> 
>     With( 
> 
>       $validCerts, 
> 
>       Where( 
> 
>         $c,  
> 
>         \[userCertificate\],  
> 
>         IsCert($c) && CertNotAfter($c) \> Now() && RegexIsMatch(CertSubject($c), "CN=\[{\]\*" & String-FromGuid(\[objectGUID\]) & "\[}\]\*", "IgnoreCase")), 
> 
>       Count($validCerts) = 0) 
> 
>   ), 
> 
>   True, 
> 
>   NULL 
> 
> ) 

 

7.  > Click ‘Save’ to save the new rule.
