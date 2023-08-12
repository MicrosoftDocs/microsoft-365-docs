---
title: Detect and Remediate Illicit Consent Grants
f1.keywords:
- NOCSH
ms.author: tracyp
author: MSFTTracyp
manager: dansimp
audience: ITPro
ms.topic: conceptual
ms.collection:
- tier2
- m365-security
ms.date: 6/14/2023
ms.localizationpriority: medium
search.appverid:
  - MET150
description: Learn how to recognize and remediate the illicit consent grants attack in Microsoft 365.
ms.custom: 
- seo-marvel-apr2020
ms.subservice: mdo
ms.service: microsoft-365-security
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# Detect and Remediate Illicit Consent Grants

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

**Summary**  Learn how to recognize and remediate the illicit consent grants attack in Microsoft 365.

## What is the illicit consent grant attack in Microsoft 365?

In an illicit consent grant attack, the attacker creates an Azure-registered application that requests access to data such as contact information, email, or documents. The attacker then tricks an end user into granting that application consent to access their data either through a phishing attack, or by injecting illicit code into a trusted website. After the illicit application has been granted consent, it has account-level access to data without the need for an organizational account. Normal remediation steps, like resetting passwords for breached accounts or requiring Multi-Factor Authentication (MFA) on accounts, are not effective against this type of attack, since these are third-party applications and are external to the organization.

These attacks leverage an interaction model which presumes the entity that is calling the information is automation and not a human.

> [!IMPORTANT]
> Do you suspect you're experiencing problems with illicit consent-grants from an app, right now? Microsoft Defender for Cloud Apps has tools to detect, investigate, and remediate your OAuth apps. This Defender for Cloud Apps article has a tutorial that outlines how to go about [investigating risky OAuth apps](/cloud-app-security/investigate-risky-oauth). You can also set [OAuth app policies](/cloud-app-security/app-permission-policy) to investigate app-requested permissions, which users are authorizing these apps, and widely approve or ban these permissions requests.

## What does an illicit consent grant attack look like in Microsoft 365?

You need to search the **audit log** to find signs, also called Indicators of Compromise (IOC) of this attack. For organizations with many Azure-registered applications and a large user base, the best practice is to review your organizations consent grants on a weekly basis.

### Steps for finding signs of this attack

1. Open the Microsoft 365 Defender portal at <https://security.microsoft.com> and then select **Audit**. Or, to go directly to the **Audit** page, use <https://security.microsoft.com/auditlogsearch>.

2. On the **Audit** page, verify that the **Search** tab is selected, and then configure the following settings:
   - **Date and time range**
   - **Activities**: Verify that **Show results for all activities** is selected.

   When you're finished, click **Search**.

3. Click the **Activity** column to sort the results and look for **Consent to application**.

4. Select an entry from the list to see the details of the activity. Check to see if IsAdminConsent is set to True.

> [!NOTE]
>
> It can take from 30 minutes up to 24 hours for the corresponding audit log entry to be displayed in the search results after an event occurs.
>
> The length of time that an audit record is retained and searchable in the audit log depends on your Microsoft 365 subscription, and specifically the type of the license that is assigned to a specific user. For more information, see [Audit log](../../compliance/search-the-audit-log-in-security-and-compliance.md).
>
> If this value is true, it indicates that someone with Global Administrator access may have granted broad access to data. If this is unexpected, take steps to [confirm an attack](#how-to-confirm-an-attack).

## How to confirm an attack

If you have one or more instances of the IOCs listed above, you need to do further investigation to positively confirm that the attack occurred. You can use any of these three methods to confirm the attack:

- Inventory applications and their permissions using the Azure Active Directory portal. This method is thorough, but you can only check one user at a time which can be very time consuming if you have many users to check.
- Inventory applications and their permissions using PowerShell. This is the fastest and most thorough method, with the least amount of overhead.
- Have your users individually check their apps and permissions and report the results back to the administrators for remediation.

## Inventory apps with access in your organization

You can do this for your users with either the Azure Active Directory Portal, or PowerShell or have your users individually enumerate their application access.

### Steps for using the Azure Active Directory Portal

You can look up the applications to which any individual user has granted permissions by using the Azure Active Directory Portal at <https://portal.azure.com>.

1. Sign in to the Azure portal with administrative rights.
2. Select the Azure Active Directory blade.
3. Select **Users**.
4. Select the user that you want to review.
5. Select **Applications**.

This will show you the apps that are assigned to the user and what permissions the applications have.

### Steps for having your users enumerate their application access

Have your users go to <https://myapps.microsoft.com> and review their own application access there. They should be able to see all the apps with access, view details about them (including the scope of access), and be able to revoke privileges to suspicious or illicit apps.

### Steps for doing this with PowerShell

The simplest way to verify the Illicit Consent Grant attack is to run [Get-AzureADPSPermissions.ps1](https://gist.github.com/psignoret/41793f8c6211d2df5051d77ca3728c09), which will dump all the OAuth consent grants and OAuth apps for all users in your tenancy into one .csv file.

#### Pre-requisites

- The Azure AD PowerShell library installed.
- Global administrator rights on the tenant that the script will be run against.
- Local Administrator on the computer from which will run the scripts.

> [!IMPORTANT]
> We ***highly recommend*** that you require multi-factor authentication on your administrative account. This script supports MFA authentication.

1. Sign in to the computer that you will run the script from with local administrator rights.

2. Download or copy the [Get-AzureADPSPermissions.ps1](https://gist.github.com/psignoret/41793f8c6211d2df5051d77ca3728c09) script from GitHub to a folder from which you will run the script. This will be the same folder to which the output "permissions.csv" file will be written.

3. Open a PowerShell session as an administrator and open to the folder where you saved the script to.

4. Connect to your directory using the [Connect-AzureAD](/powershell/module/azuread/connect-azuread) cmdlet.

5. Run this PowerShell command:

   ```powershell
   .\Get-AzureADPSPermissions.ps1 | Export-csv -Path "Permissions.csv" -NoTypeInformation
   ```

The script produces one file named Permissions.csv. Follow these steps to look for illicit application permission grants:

1. In the ConsentType column (column G) search for the value "AllPrinciples". The AllPrincipals permission allows the client application to access everyone's content in the tenancy. Native Microsoft 365 applications need this permission to work correctly. Every non-Microsoft application with this permission should be reviewed carefully.

2. In the Permission column (column F) review the permissions that each delegated application has to content. Look for "Read" and "Write" permission or "All" permission, and review these carefully because they may not be appropriate.

3. Review the specific users that have consents granted. If high profile or high impact users have inappropriate consents granted, you should investigate further.

4. In the ClientDisplayName column (column C) look for apps that seem suspicious. Apps with misspelled names, super bland names, or hacker-sounding names should be reviewed carefully.

## Determine the scope of the attack

After you have finished inventorying application access, review the **audit log** to determine the full scope of the breach. Search on the affected users, the time frames that the illicit application had access to your organization, and the permissions the app had. You can search the **audit log** in the [Microsoft 365 Defender portal](../../compliance/search-the-audit-log-in-security-and-compliance.md).

> [!IMPORTANT]
> [Mailbox auditing](../../compliance/audit-mailboxes.md) and [Activity auditing for admins and users](../../compliance/audit-log-enable-disable.md) must have been enabled prior to the attack for you to get this information.

## How to stop and remediate an illicit consent grant attack

After you have identified an application with illicit permissions, you have several ways to remove that access.

- You can revoke the application's permission in the Azure Active Directory Portal by:
  1. Navigate to the affected user in the **Azure Active Directory User** blade.
  2. Select **Applications**.
  3. Select the illicit application.
  4. Click **Remove** in the drill down.

- You can revoke the OAuth consent grant with PowerShell by following the steps in [Remove-AzureADOAuth2PermissionGrant](/powershell/module/azuread/Remove-AzureADOAuth2PermissionGrant).

- You can revoke the Service App Role Assignment with PowerShell by following the steps in [Remove-AzureADServiceAppRoleAssignment](/powershell/module/azuread/Remove-AzureADServiceAppRoleAssignment).

- You can also disable sign-in for the affected account altogether, which will in turn disable app access to data in that account. This isn't ideal for the end user's productivity, of course, but if you are working to limit impact quickly, it can be a viable short-term remediation.

- You can turn integrated applications off for your tenancy. This is a drastic step that disables the ability for end users to grant consent on a tenant-wide basis. This prevents your users from inadvertently granting access to a malicious application. This isn't strongly recommended as it severely impairs your users' ability to be productive with third party applications. You can do this by following the steps in [Turning Integrated Apps on or off](../../admin/misc/user-consent.md).

## See also

- [Unexpected application in my applications list](/azure/active-directory/application-access-unexpected-application) walks administrators through various actions they may want to take after realizing there are unexpected applications with access to data.
- [Integrating applications with Azure Active Directory](/azure/active-directory/active-directory-apps-permissions-consent) is a high-level overview of consent and permissions.
- [Problems developing my application](/azure/active-directory/active-directory-application-dev-development-content-map) provides links to various consent related articles.
- [Application and service principal objects in Azure Active Directory (Azure AD)](/azure/active-directory/develop/active-directory-application-objects) provides an overview of the Application and Service principal objects that are core to the application model.
- [Manage access to apps](/azure/active-directory/active-directory-managing-access-to-apps) is an overview of the capabilities that administrators have to manage user access to apps.
