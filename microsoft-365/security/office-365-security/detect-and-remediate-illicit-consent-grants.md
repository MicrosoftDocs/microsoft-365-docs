---
title: "Detect and Remediate Illicit Consent Grants in Office 365"
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date: 
audience: ITPro
ms.topic: article
ms.collection: 
- o365_security_incident_response
- M365-security-compliance
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
description: "Learn how to recognize and remediate the illicit consent grants attack in Office 365."
---
# Detect and Remediate Illicit Consent Grants in Office 365

**Summary**  Learn how to recognize and remediate the illicit consent grants attack in Office 365.

## What is the illicit consent grant attack in Office 365?

In an illicit consent grant attack, the attacker creates an Azure-registered application that requests access to data such as contact information, email, or documents. The attacker then tricks an end user into granting that application consent to access their data either through a phishing attack, or by injecting illicit code into a trusted website. After the illicit application has been granted consent, it has account-level access to data without the need for an organizational account. Normal remediation steps, like resetting passwords for breached accounts or requiring Multi-Factor Authentication (MFA) on accounts, are not effective against this type of attack, since these are third-party applications and are external to the organization. These attacks leverage an interaction model which presumes the entity that is calling the information is automation and not a human.

## What does an illicit consent grant attack look like in Office 365?

You need to search the Office 365 **audit log** to find signs, also called Indicators of Compromise (IOC) of this attack. For organizations with many Azure-registered applications and a large user base, the best practice is to review your organizations consent grants on a weekly basis.
### Steps for finding signs of this attack

1. Open the **Security and Compliance Center** in your Office 365 tenant.
2. Navigate to the **Search & investigation** node and select **audit log** search.
3. Create a search (all activities and all users) and filter the results for Consent to application, and Add OAuth2PermissionGrant.
4. Examine the Extended Properties and check to see if IsAdminContent is set to True.

> [!NOTE]
>  - It can take up to 30 minutes or up to 24 hours after an event occurs for the corresponding audit log entry to be displayed in the search results.
>   - The length of time that an audit record is retained and searchable in the audit log depends on your Office 365 subscription, and specifically the type of the license that is assigned to a specific user. For more information, see [Audit log](../../compliance/search-the-audit-log-in-security-and-compliance.md).
If this value is true, it indicates that someone with Global Administrator access may have granted broad access to data. If this is unexpected, take steps to [confirm an attack](#how-to-confirm-an-attack).

## How to confirm an attack

If you have one or more instances of the IOCs  listed above, you need to do further investigation to positively confirm that the attack occurred. You can use any of these three methods to confirm the attack.

- Inventory applications and their permissions using the Azure Active Directory portal. This method is thorough, but you can only check one user at a time which can be very time consuming if you have many users to check.
- Inventory  applications and their permissions using PowerShell. This is the fastest and most thorough method, with the least amount of overhead.
- Have your users individually check their apps and permissions and report the results back to the administrators for remediation.

## Inventory apps with access in your organization

You can do this for your users with either the Azure Active Directory Portal, or PowerShell or have your users individually enumerate their application access.

### Steps for using the Azure Active Directory Portal

You can look up the applications to which any individual user has granted permissions by using the [Azure Active Directory Portal](https://portal.azure.com/).

1. Sign in to the Azure Portal with administrative rights.
2. Select the Azure Active Directory blade.
3. Select **Users**.
4. Select the user that you want to review.
5. Select **Applications**.

This will show you the apps that are assigned to the user and what permissions the applcations have.

### Steps for having your users enumerate their application access

Have your users go to https://myapps.microsoft.com and review their own application access there. They should be able to see all the apps with access, view details about them (including the scope of access), and be able to revoke privileges to suspicious or illicit apps.

### Steps for doing this with PowerShell

The simplest way to verify the Illicit Consent Grant attack is to run  [Get-AzureADPSPermissions.ps1](https://gist.github.com/psignoret/41793f8c6211d2df5051d77ca3728c09), which will dump all the OAuth consent grants and OAuth apps for all users in your tenancy into one .csv file. 

#### Pre-requisites

- The Azure AD PowerShell library installed.
- Global administrator rights on the tenant that the script will be run against.
- Local Administrator on the computer from which will run the scripts.

> [!IMPORTANT]
> We highly recommend that you require multi-factor authentication on your administrative account.  This script supports MFA authentication.

1. Sign in to the computer that you will run the script from with local administrator rights.
2. Download or copy the [Get-AzureADPSPermissions.ps1](https://gist.github.com/psignoret/41793f8c6211d2df5051d77ca3728c09) script from GitHub to a folder from which you will run the scruipt.  This will be the same folder to which the output “permissions.csv” file will be written.
3. Open a PowerShell instance as an administrator and open to the folder you saved the script to.
4. Connect to your directory using the [Connect-AzureAD](https://docs.microsoft.com/powershell/module/azuread/connect-azuread?view=azureadps-2.0) cmdlet.
5. Run this PowerShell command line as follows: `Get-AzureADPSPermissions.ps1 | Export-csv -path "Permissions.csv" -NoTypeInformation`

The script produces one file named Permissions.csv. Follow these steps to look for illicit application permission grants:

1. In the ConsentType column (column G) search for the value “AllPrinciples”. The AllPrincipals permission allows the client application to access everyone’s content in the tenancy. Native Office 365 applications need this permission to work correctly. Every non-Microsoft application with this permission should be reviewed carefully.
2.	In the Permission column (column F) review the permissions that each delegated application has to content. Look for “Read” and “Write” permission or “*.All” permission, and review these carefully because they may not be appropriate.
3.	Review the specific users that have consents granted. If high profile or high impact users have inappropriate consents granted, you should investigate further.
4.	In the ClientDisplayName column (column C) look for apps that seem suspicious. Apps with misspelled names, super bland names, or hacker-sounding names should be reviewed carefully.

## Determine the scope of the attack

After you have finished inventorying application access, review the Office 365 **audit log** to determine the full scope of the breach.  Search on the affected users, the time frames that the illicit application had access to your organization, and the permissions the app had. You can search the **audit log** in the [Microsoft 365 Security and Compliance Center](https://support.office.com/article/Search-the-audit-log-in-the-Office-365-Security-Compliance-Center-0d4d0f35-390b-4518-800e-0c7ec95e946c). 

> [!IMPORTANT]
> [Mailbox auditing](https://support.office.com/article/Enable-mailbox-auditing-in-Office-365-aaca8987-5b62-458b-9882-c28476a66918) and [Activity auditing for admins and users](https://support.office.com/article/turn-office-365-audit-log-search-on-or-off-e893b19a-660c-41f2-9074-d3631c95a014) must have been enabled prior to the attack for you to get this information.

## How to stop and remediate an illicit consent grant  attack

After you have identified an application with illicit permissions, you have several ways to remove that access.
- You can revoke the application's permission in the Azure Active Directory Portal by:
    - Navigate to the affected user in the **Azure Active Directory User** blade.
    - Select **Applications**.
    - Select the illicit application.
    - Click **Remove** in the drill down.
- You can revoke the OAuth consent grant with PowerShell by following the steps in [Remove-AzureADOAuth2PermissionGrant](https://docs.microsoft.com/powershell/module/azuread/Remove-AzureADOAuth2PermissionGrant?view=azureadps-2.0).
- You can revoke the Service App Role Assignment with PowerShell by following the steps in [Remove-AzureADServiceAppRoleAssignment](https://docs.microsoft.com/powershell/module/azuread/Remove-AzureADServiceAppRoleAssignment?view=azureadps-2.0).
- You can also disable sign-in for the affected account altogether, which will in turn disable app access to data in that account. This isn't ideal for the end user's productivity, of course, but if you are working to limit impact quickly, it can be a viable short-term remediation.
- You can turn integrated applications off for your tenancy. This is a drastic step that disables the ability for end users to grant consent on a tenant-wide basis. This prevents your users from inadvertently granting access to a malicious application. This isn't strongly recommended as it severely impairs your users' ability to be productive with third party applications.  You can do this by following the steps in  [Turning Integrated Apps on or off](https://support.office.com/article/Turning-Integrated-Apps-on-or-off-7e453a40-66df-44ab-92a1-96786cb7fb34).

## Secure Office 365 like a cybersecurity pro

Your Office 365 subscription comes with a powerful set of security capabilities that you can use to protect your data and your users.  Use the [Office 365 security roadmap: Top priorities for the first 30 days, 90 days, and beyond](https://support.office.com/article/office-365-security-roadmap-top-priorities-for-the-first-30-days-90-days-and-beyond-28c86a1c-e4dd-4aad-a2a6-c768a21cb352) to implement Microsoft recommended best practices for securing your Office 365 tenant.

- Tasks to accomplish in the first 30 days.  These have immediate affect and are low-impact to your users.
- Tasks to accomplish in 90 days. These take a bit more time to plan and implement but greatly improve your security posture.
- Beyond 90 days. These enhancements build in your first 90 days work.

## See also:

- [Unexpected application in my applications list](https://docs.microsoft.com/azure/active-directory/application-access-unexpected-application)  walks administrators through various actions they may want to take after realizing there are unexpected applications with access to data.
- [Integrating applications with Azure Active Directory](https://docs.microsoft.com/azure/active-directory/active-directory-apps-permissions-consent)  is a high-level overview of consent and permissions.
- [Problems developing my application](https://docs.microsoft.com/azure/active-directory/active-directory-application-dev-development-content-map) provides links to various consent related articles.
- [Application and service principal objects in Azure Active Directory (Azure AD)](https://docs.microsoft.com/azure/active-directory/develop/active-directory-application-objects) provides an overview of the Application and Service principal objects that are core to the application model.
- [Manage access to apps](https://docs.microsoft.com/azure/active-directory/active-directory-managing-access-to-apps) is an overview of the capabilities that administrators have to manage user access to apps.
