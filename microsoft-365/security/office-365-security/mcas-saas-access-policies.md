---
title: Recommended Microsoft Cloud App Security policies for SaaS apps - Microsoft 365 Enterprise | Microsoft Docs
description: Describes the policies for Microsoft recommendations about how to secure SharePoint file access.
author: BrendaCarter
manager: laurawi
ms.prod: microsoft-365-enterprise
ms.topic: article
ms.author: bcarter
ms.date: 063/28/2019
ms.reviewer: martincoetzer
ms.custom: 
- it-pro
- goldenconfig
ms.collection: 
- M365-identity-device-management
- M365-security-compliance

---

# Recommended Microsoft Cloud App Security policies for SaaS apps
Microsoft Cloud App Security builds on Azure AD conditional access policies to enable real-time monitoring and control of granular actions with SaaS apps, such as blocking downloads, uploads, copy and paste, and printing. This feature adds security to sessions that carry inherent risk, such as when corporate resources are accessed from unmanaged devices or by guest users. 

Microsoft Cloud App Security also integrates natively with Microsoft Information Protection, providing real-time content inspection to find sensitive data based on sensitive information types and sensitivity labels and to take appropriate action. 

This guidance includes recommendations for these scenarios:
- Bring SaaS apps into IT management
- Tune protection for specific SaaS apps
- Configure data loss prevention (DLP) to help comply with data protection regulations

## Bring SaaS apps into IT management

The first step in using Microsoft Cloud App Security to manage SaaS apps is to discover these and then add them to your Azure AD tenant. If you need help with discovery, see [Discover and manage SaaS apps in your network](https://docs.microsoft.com/cloud-app-security/tutorial-shadow-it). After you've discovered apps, [add these to your Azure AD tenant](https://docs.microsoft.com/azure/active-directory/manage-apps/add-application-portal).  

You can begin to manage these by doing the following:
1. First, in Azure AD, create a new conditional access policy and configure it to "Use Conditional Access App Control." This redirects the request to Cloud App Security. You can create one policy and add all SaaS apps to this policy.
1. Next, in Cloud App Security, create session policies. Create one policy for each control you want to apply. 

Permissions to SaaS apps are typically based on business need for access to the app. These permissions can be highly dynamic. Using Cloud App Security policies ensures protection to app data, regardless of whether users are assigned to an Azure AD group associated with baseline, sensitive, or highly regulated protection.

To protect data across your collection of SaaS apps, the following diagram illustrates the necessary Azure AD conditional access policy plus suggested policies you can create in Cloud App Security. In this example, the policies created in Cloud App Security apply to all SaaS apps you are managing. These are designed to apply appropriate controls based on whether devices are managed as well as sensitivity labels that are already applied to files. 

<br>

![Policies for managing SaaS apps in Cloud App Security](../../media/microsoft-365-policies-configurations/mcas-manage-saas-apps-2.png)

The following table lists the new conditional access policy you must create in Azure AD.

|Protection level|Policy|More information|
|---|---|---|
|All protection levels | [Use Conditional Access App Control in Cloud App Security](https://docs.microsoft.com/cloud-app-security/proxy-deployment-aad#configure-integration-with-azure-ad) |This configures your IdP (Azure AD) to work with Cloud App Security. |

This next table lists the example policies illustrated above that you can create to protect all SaaS apps. Be sure to evaluate your own business, security, and compliance objectives and then create policies that provide the most appropriate protection for your environment. 

|Protection level|Policy|
|---|---|
|Baseline | Monitor traffic from unmanaged devices<br><br>Add protection to file downloads from unmanaged devices | 
|Sensitive  | Block download of files labeled with sensitive or classified from unmanaged devices (this provides browser only access)  | 
| Highly regulated | Block download of files labeled with classified from all devices (this provides browser only access)  |   
|  |   |  

For end-to-end instructions for setting up Conditional Access App Control, see [Deploy Conditional Access App Control for featured apps](https://docs.microsoft.com/cloud-app-security/proxy-deployment-aad). This article walks you through the process of creating the necessary conditional access policy in Azure AD and testing your SaaS apps.




For more information, see [Protect apps with Microsoft Cloud App Security Conditional Access App Control](https://docs.microsoft.com/cloud-app-security/proxy-intro-aad). 


## Tune protection for specific SaaS apps
You might want to apply additional monitoring and controls to specific SaaS apps in your environment. Cloud App Security allows you to accomplish this. For example, if an app like Box is used heavily in your environment, it makes sense to apply additional controls. Or, if your legal or finance department is using a specific SaaS app for sensitive business data, you can target extra protection to these apps. 

For example, you can protect your Box environment with these types of built-in anomaly detection policy templates:
- Activity from anonymous IP addresses
- Activity from infrequent country
- Activity from suspicious IP addresses
- Impossible travel
- Activity performed by terminated user (requires AAD as IdP)
- Malware detection
- Multiple failed login attempts
- Ransomware activity
- Risky Oauth App
- Unusual file share activity

These are examples. Additional policy templates are added on a regular basis. For examples of how to apply additional protection to specific apps, see [Protecting connected apps](https://docs.microsoft.com/cloud-app-security/protect-connected-apps). 

[How Cloud App Security helps protect your Box environment](https://docs.microsoft.com/cloud-app-security/protect-box) demonstrates the types of controls that can help you protect your business data in Box and other apps with sensitive data.


## Configure data loss prevention (DLP) to help comply with data protection regulations

Cloud App Security can be a valuable tool for configuring protection for compliance regulations. In this case, you create specific policies to look for specific data that a regulation applies to and configure each policy to take appropriate action. 

The following illustration and table provide several examples of policies that can be configured to help comply with  the General Data Protection Regulation (GDPR). In these examples, policies look for specific data. Based on the sensitivity of the data, each policy is configured to take appropriate action. 

![Example Cloud App Security policies for data loss prevention](../../media/microsoft-365-policies-configurations/mcas-dlp.png)

|Protection level|Example policies|
|:---------------|:-------|
| Baseline |Alert when files containing this sensitive information type ("Credit Card Number") are shared outside the organization <br><br>Block downloads of files containing this sensitive information type (”Credit card number") to unmanaged devices|
| Sensitive  | Protect downloads of files containing this sensitive information type ("Credit card number") to managed devices <br><br>Block downloads of files containing this sensitive information type ("Credit card number") to unmanaged devices <br><br>Alert when a file with on of these labels is uploaded to OneDrive for Business or Box (Customer data, Human Resources: Salary Data,Human Resources, Employee data)|
| Highly regulated |Alert when files with this label ("Highly classified") are downloaded to managed devices <p>Block downloads of files with this label ("Highly classified") to unmanaged devices |
| | |



## Next steps

For more information about using Cloud App Security, see [Microsoft Cloud App Security documentation](https://docs.microsoft.com//cloud-app-security/). 