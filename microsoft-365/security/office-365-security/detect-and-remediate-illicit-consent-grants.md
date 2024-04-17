---
title: Detect and Remediate Illicit Consent Grants
f1.keywords:
- NOCSH
author: chrisda
ms.author: chrisda
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
  - has-azure-ad-ps-ref
  - azure-ad-ref-level-one-done
ms.service: defender-office-365
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/mdo-about#defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 Plan 1 and Plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft Defender XDR</a>
---

# Detect and Remediate Illicit Consent Grants

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

**Summary**  Learn how to recognize and remediate the illicit consent grants attack in Microsoft 365.

## What is the illicit consent grant attack in Microsoft 365?

In an illicit consent grant attack, the attacker creates an Azure-registered application that requests access to data such as contact information, email, or documents. The attacker then tricks an end user into granting that application consent to access their data either through a phishing attack, or by injecting illicit code into a trusted website. After the illicit application is granted consent, it has account-level access to data without the need for an organizational account. Normal remediation steps (for example, resetting passwords or requiring multi-factor authentication (MFA)) aren't effective against this type of attack, because these apps are external to the organization.

These attacks use an interaction model that presumes the entity calling the information is automation and not a human.

> [!IMPORTANT]
> Do you suspect you're experiencing problems with illicit consent-grants from an app, right now? Microsoft Defender for Cloud Apps has tools to detect, investigate, and remediate your OAuth apps. This Defender for Cloud Apps article has a tutorial that outlines how to go about [investigating risky OAuth apps](/cloud-app-security/investigate-risky-oauth). You can also set [OAuth app policies](/cloud-app-security/app-permission-policy) to investigate app-requested permissions, which users are authorizing these apps, and widely approve or ban these permissions requests.

## What does an illicit consent grant attack look like in Microsoft 365?

You need to search the **audit log** to find signs, also called Indicators of Compromise (IOC) of this attack. For organizations with many Azure-registered applications and a large user base, the best practice is to review your organizations consent grants on a weekly basis.

### Steps for finding signs of this attack

1. Open the Microsoft Defender portal at <https://security.microsoft.com> and then select **Audit**. Or, to go directly to the **Audit** page, use <https://security.microsoft.com/auditlogsearch>.

2. On the **Audit** page, verify that the **Search** tab is selected, and then configure the following settings:
   - **Date and time range**
   - **Activities**: Verify that **Show results for all activities** is selected.

   When you're finished, select **Search**.

3. Select the **Activity** column to sort the results and look for **Consent to application**.

4. Select an entry from the list to see the details of the activity. Check to see if IsAdminConsent is set to True.

> [!NOTE]
>
> It can take from 30 minutes up to 24 hours for the corresponding audit log entry to be displayed in the search results after an event occurs.
>
> The length of time that an audit record is retained and searchable in the audit log depends on your Microsoft 365 subscription, and specifically the type of the license that is assigned to a specific user. For more information, see [Audit log](/purview/audit-log-search).
>
> The value is true indicates that someone with Global Administrator access might have granted broad access to data. If this value is unexpected, take steps to [confirm an attack](#how-to-confirm-an-attack).

## How to confirm an attack

If you have one or more instances of the IOCs previously listed, you need to do further investigation to positively confirm that the attack occurred. You can use any of these three methods to confirm the attack:

- Inventory applications and their permissions using the Microsoft Entra admin center. This method is thorough, but you can only check one user at a time that can be very time consuming if you have many users to check.
- Inventory applications and their permissions using PowerShell. This is the fastest and most thorough method, with the least amount of overhead.
- Have your users individually check their apps and permissions and report the results back to the administrators for remediation.

## Inventory apps with access in your organization

You have the following options to inventory apps for your users:

- The Microsoft Entra admin center.
- PowerShell.
- Have your users individually enumerate their own application access.

### Steps for using the Microsoft Entra admin center

You can look up the applications to which any individual user has granted permissions by using the Microsoft Entra admin center:

  1. Open the Microsoft Entra admin center at <https://entra.microsoft.com>, and then go to **Identity** \> **Users** \> ***All users**. Or, to go directly to **Users** \> **All users**, use <https://entra.microsoft.com/#view/Microsoft_AAD_UsersAndTenants/UserManagementMenuBlade/~/AllUsers/menuId/>.
  2. Find and select the user that you want to review by clicking on the **Display name** value.
  3. On the user details page that opens, select **Applications**.

These steps show you the apps that are assigned to the user and what permissions the applications have.

### Steps for having your users enumerate their application access

Have your users go to <https://myapps.microsoft.com> and review their own application access there. They should be able to see all the apps with access, view details about them (including the scope of access), and be able to revoke privileges to suspicious or illicit apps.

### Steps in PowerShell

The simplest way to verify the Illicit Consent Grant attack is to run [Get-AzureADPSPermissions.ps1](https://gist.github.com/psignoret/41793f8c6211d2df5051d77ca3728c09), which dumps all the OAuth consent grants and OAuth apps for all users in your tenancy into one .csv file.

#### Prerequisites

- The Azure AD PowerShell library installed.
- Global Administrator permissions in the organization where the script is run.
- Local Administrator permissions on the computer where you run the scripts.

> [!IMPORTANT]
> We ***highly recommend*** that you require multi-factor authentication on your admin account. This script supports MFA authentication.

[!INCLUDE [Azure AD PowerShell deprecation note](~/../microsoft-365/reusable-content/msgraph-powershell/includes/aad-powershell-deprecation-note.md)]

1. Sign in to the computer where you want to run the scripts with local administrator rights.

2. Download or copy the [Get-AzureADPSPermissions.ps1](https://gist.github.com/psignoret/41793f8c6211d2df5051d77ca3728c09) script from GitHub to a folder that's easy to find and remember. This folder is also where you need to write the "permissions.csv" output file is written.

3. Open an elevated PowerShell session as an administrator in the folder where you saved the script.

4. Connect to your directory using the [Connect-MgGraph](/powershell/microsoftgraph/authentication-commands#using-connect-mggraph) cmdlet.

5. Run this PowerShell command:

   ```powershell
   .\Get-AzureADPSPermissions.ps1 | Export-csv -Path "Permissions.csv" -NoTypeInformation
   ```

The script produces one file named Permissions.csv. Follow these steps to look for illicit application permission grants:

1. In the ConsentType column (column G) search for the value "AllPrinciples." The AllPrincipals permission allows the client application to access everyone's content in the tenancy. Native Microsoft 365 applications need this permission to work correctly. Every non-Microsoft application with this permission should be reviewed carefully.

2. In the Permission column (column F), review the permissions that each delegated application has to content. Look for "Read" and "Write" permission or "All" permission, and review these permissions carefully, because they might not be appropriate.

3. Review the specific users that have consents granted. If high profile or high value users have inappropriate consents granted, you should investigate further.

4. In the ClientDisplayName column (column C) look for apps that seem suspicious. Apps with misspelled names, super bland names, or hacker-sounding names should be reviewed carefully.

## Determine the scope of the attack

After you finished inventorying application access, review the **audit log** to determine the full scope of the breach. Search on the affected users, the time frames that the illicit application had access to your organization, and the permissions the app had. You can search the **audit log** in the [Microsoft Defender portal](audit-log-search-defender-portal.md).

> [!IMPORTANT]
> [Mailbox auditing](/purview/audit-mailboxes) and [Activity auditing for admins and users](/purview/audit-log-enable-disable) must have been enabled prior to the attack for you to get this information.

## How to stop and remediate an illicit consent grant attack

After you identified the application with illicit permissions, you have several ways to remove that access:

- You can revoke the application's permission in the Microsoft Entra admin center by doing the following steps:
  1. Open the Microsoft Entra admin center at <https://entra.microsoft.com>, and then go to **Identity** \> **Users** \> ***All users**. Or, to go directly to **Users** \> **All users**, use <https://entra.microsoft.com/#view/Microsoft_AAD_UsersAndTenants/UserManagementMenuBlade/~/AllUsers/menuId/>.
  2. Find and select the affected user by clicking on the **Display name** value.
  3. On the user details page that opens, select **Applications**.
  4. On the **Applications** page, select the illicit application by clicking on the **Name** value.
  5. On the **Assignment detail** page that opens, select **Remove**.

- You can revoke the OAuth consent grant with PowerShell by following the steps in [Remove-MgOauth2PermissionGrant](/powershell/module/microsoft.graph.identity.signins/remove-mgoauth2permissiongrant)

- You can revoke the Service App Role Assignment with PowerShell by following the steps in [Remove-MgServicePrincipalAppRoleAssignment](/powershell/module/microsoft.graph.applications/remove-mgserviceprincipalapproleassignment).

- You can disable sign-in for the affected account, which disables access to data in the account by the app. This action isn't ideal for user productivity, but it can be a short-term remediation to quickly limit the results of the attack.

- You can turn off integrated applications in your organization. This action is drastic. Although it prevents users from accidentally granting access to a malicious app, it also prevents all users from granting consent to any applications. We don't recommend this action because it severely impairs user productivity with third-party applications. You can turn off integrated apps by following the steps in [Turning Integrated Apps on or off](/microsoft-365/admin/misc/user-consent).

## See also

- [Applications listed in Enterprise applications](/entra/identity/enterprise-apps/application-list) walks administrators through various actions they might want to take after realizing there are unexpected applications with access to data.
- [Quickstart: Register an application with the Microsoft identity platform](/entra/identity-platform/quickstart-register-app) is a high-level overview of consent and permissions.
- [Configure token lifetime policies](/entra/identity-platform/configure-token-lifetimes) provides links to various consent related articles.
- [Application and service principal objects in Microsoft Entra ID](/entra/identity-platform/app-objects-and-service-principals) provides an overview of the Application and Service principal objects that are core to the application model.
- [Manage access to an application](/entra/identity/enterprise-apps/what-is-access-management) is an overview of the capabilities that administrators have to manage user access to apps.
