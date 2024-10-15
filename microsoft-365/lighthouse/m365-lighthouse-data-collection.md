---
title: "Data collection for Microsoft 365 Lighthouse"
f1.keywords: CSH
ms.author: sharik
author: SKjerland
manager: scotv
ms.reviewer: iswillia
ms.date: 10/11/2024
audience: Admin
ms.topic: concept-article
ms.service: microsoft-365-lighthouse
ms.localizationpriority: medium
ms.collection:
- Tier1
- scotvorg
- M365-subscription-management
- Adm_O365
- essentials-privacy
ms.custom:
- AdminSurgePortfolib
- M365-Lighthouse                         
search.appverid: MET150
description: "For Managed Service Providers (MSPs) using Microsoft 365 Lighthouse, learn more about how Lighthouse collects customer data."
---

# Data collection for Microsoft 365 Lighthouse

Data collection is how Microsoft 365 Lighthouse gathers and analyzes information from managed service providers (MSPs) and customers. The Lighthouse service collects data through MSP usage and service-to-service operations for the customers with whom an MSP has a delegated admin relationship. With this data, Lighthouse can provide the MSP with valuable insights and tailored recommendations and enable centralized management from a single experience.

## Data collection for MSPs

Lighthouse collects data from MSPs when a user from the partner tenant uses Lighthouse. This data helps Lighthouse provide and improve its service for the specific MSP and customers involved. This data isn't shared with other parties and is protected by strict privacy and security measures. The MSP has complete control and ownership over their data, and they can view, manage, or delete it at any time.
The data collected from partner tenants is divided into two categories: diagnostic data and usage data.

- **Diagnostic data:** This data captures the performance and reliability of Lighthouse, such as errors, crashes, or failures. Diagnostic data helps identify and resolve issues that affect the service quality or user experience.
- **Usage data:** This data reflects the actions and preferences of the partner when using Lighthouse, such as specifying contacts or websites for customers, creating custom baselines, deploying deployment tasks, or setting up granular delegated administrative privileges (GDAP) relationships. Usage data helps Lighthouse customize and optimize the service for each MSP based on their input.

Some examples of the diagnostic data that are collected are:

- **Errors:** This data captures errors such as service errors that occur when an MSP uses Lighthouse. Error data helps Lighthouse diagnose and fix any problems that prevent the MSP from using the service properly.
- **Failures:** This data captures failures that occur when a partner uses Lighthouse, such as baseline failures or deployment failures. Failure data helps Lighthouse understand and improve the success rate and quality of the service features and functions.
- **Performance metrics:** This data captures the performance of Lighthouse, such as load time, response time, or throughput. Performance metrics help Lighthouse measure and optimize the speed and efficiency of the service.

Some examples of the usage data that Lighthouse collects when an authorized user from a partner tenant uses the experience are:

- **Creating custom baselines:** When a partner creates a custom baseline in Lighthouse, Lighthouse stores the information and uses it to associate the baseline with one or more customer tenants.
- **Deployment of deployment tasks:** When a partner deploys a deployment task that is part of a baseline in Lighthouse, Lighthouse stores this information and uses it to track the progress and status of the deployment task. This information is also used to report any errors or failures that occur during the deployment process.
- **Specifying contacts or websites for customers:** When a partner specifies a contact or a website for a customer in Lighthouse, Lighthouse stores this information and uses it to display the customer details in the dashboard.
- **GDAP relationships setup:** When a partner sets up a GDAP relationship with a customer tenant in Lighthouse, Lighthouse stores the information and uses it to configure and manage the GDAP relationship. This information is also used to verify the consent and authorization of the customer when accessing their data.
This information isn't shared with other parties, and is protected by strict privacy and security measures.

## Data collection for MSP customers

Lighthouse collects data from customer tenants through a service plan that enables it to access the customer's data with their consent. The MSP must also have delegated access to the customer's tenant delegate admin relationship.

The data collected from customer tenants helps Lighthouse provide better security and performance for those tenants. For example, by collecting device information, Lighthouse can help the MSP identify and resolve issues affecting the customer's devices, such as malware infections, hardware failures, or software updates. Microsoft respects the privacy and security of the data collected from customer tenants. Lighthouse uses encryption, access control, auditing, and retention policies to protect the data from unauthorized or inappropriate use or disclosure.

The following table summarizes the types of data that Lighthouse collects from customer tenants, where it collects it from, what scope it covers, and what purpose it serves.

| Data category | Data source | Data scope | Data purpose |
| ---------------- | ---------------- | ---------------- |---------------- |
|Cloud PC management | Windows 365 | Various types of data related to Cloud PC device and user management, such as: <ul><li>Metadata of Cloud PC devices, such as device name, device ID, device group, device status, and device configuration </li><li>Metadata of cloud PC users, such as username, user ID, user group, user role, and user assignment</li><li> Metadata of cloud PC connections, such as connection name, connection type, connection status, and connection details</li></ul> | Helps MSPs manage Cloud PC devices and users across customer tenants.<br><br>Helps MSPs measure and improve Cloud PC performance and user experience across customer tenants.|
| Microsoft Copilot | Copilot<br><br>Microsoft Entra | Various types of data related to Copilot, such as: <ul><li>Copilot services usage</li><li>Metadata of subscriptions and license assignment count</li></ul> | Helps MSPs manage Copilot enablement and adoption across customer tenants.<br><br>Helps MSPs enhance customer productivity and success using AI. | 
| Device management | Microsoft Intune | Various types of data related to device enrollment, device compliance, app protection, and device configuration, such as:<ul><li>Metadata of enrolled devices</li><li>Metadata of app protection policies</li><li>Metadata of device configuration profiles</li></ul> <br>Comparison of device compliance status and app protection policies with the baseline configuration | Helps MSPs manage devices across customer tenants.<br><br>Helps MSPs measure and improve device compliance and app protection across customer tenants.|
| Device performance | Endpoint analytics |Metadata of device performance, such as device name, device ID, device group, startup performance score, restart frequency, sign-in duration, battery life, and app reliability<br><br>Metadata of device recommendations, such as name, type, impact, status, and details | Helps MSPs manage device performance across customer tenants.<br><br>Helps MSPs measure and improve device productivity and user experience across customer tenants. |
| App management* (Preview) | Microsoft 365 Apps admin center | Metadata related to Microsoft 365 apps management, such as update channel, build and version number, and installed Microsoft 365 apps and add-ins.<br><br>Metadata of Office devices, such as OS, storage, RAM, system architecture (for example, 64-bit), last signed-in user, devices on an unsupported build, devices not on the latest build, and devices using cloud update. | Helps MSPs manage Microsoft 365 app health across customer tenants.<br><br>Helps MSPs measure and improve Office device productivity and Microsoft 365 app user experience across customer tenants. |
| Email security | Microsoft Defender for Office 365 | Metadata of quarantined messages, such as sender, recipient, subject, date, reason for quarantine, and release status<br><br>Metadata of email threats, such as threat type, threat severity, and threat action | Helps MSPs manage quarantined messages across customer tenants.<br><br>Helps MSPs measure and improve email security and anti-phishing across customer tenants. |
| Identity and access management | Exchange Online | Metadata of shared mailboxes, such as email address and name | Helps MSPs manage shared mailboxes across customer tenants. |
| Identity and access management | Microsoft Entra | Various types of data related to identity and access management, security and compliance, and device and user management, such as:<br><ul><li>User and tenant identity information</li><li>User and tenant license information</li><li>User and tenant security information</li><li>User MFA/SSPR information</li><li>Conditional access policies</li><li>Risky users</li><li>User and group information for assignment</li></ul><br>Comparison of Microsoft Entra data with the baseline configuration | Helps MSPs manage various aspects of Microsoft Entra across customer tenants.<br><br>Helps MSPs measure and improve identity and access management, security and compliance, and device and user management across customer tenants. |
| Security posture | Microsoft Secure Score | All security recommendations and actions | Helps MSPs assess and improve the security posture of customer tenants. |
| Threat protection | Microsoft Defender for Business | Metadata of enrolled devices, such as device name, device type, and device ID<br><br>Metadata of threat and vulnerability information, such as threat name (for example, Trojan: Win32/Emotet), threat severity (for example, high), threat category (for example, malware), threat status (for example, active or resolved), threat action (for example, quarantine or allow), vulnerability name (for example, CVE-2021-1234), vulnerability severity (for example, critical), vulnerability category (for example, remote code execution), vulnerability exposure score (for example, 8.5 out of 10), and vulnerability remediation status (for example, pending or completed) | Helps MSPs monitor and protect devices from threats.<br><br>Helps MSPs measure and improve device security and vulnerability management across customer tenants. |

\* This data category is in Preview, doesn't apply to everyone, and is subject to change.

## Data not collected

Lighthouse empowers MSPs to grow, manage, and secure their Microsoft 365 customers more effectively and efficiently. To do this, Lighthouse collects data only for specific purposes, such as enhancing the service reliability, maintainability, and scalability of Microsoft 365 applications and services. Microsoft also complies with strict standards for handling the data securely and responsibly.

Lighthouse will never collect data that isn't necessary or relevant to its service. Lighthouse won't do anything to compromise the security or integrity of its MSPs and customers. Following are examples of data that Lighthouse will never collect:

- **Biometric data:** Data that identifies or verifies the identity of MSPs and customers based on their physical or behavioral characteristics, such as fingerprints, facial recognition, voice recognition, or iris scans.
- **Content of emails, messages, and documents:** Data that MSPs and customers create, send, receive, or store in their email, chat, or document applications.
- **Credentials, passwords, or keys:** Data that MSPs and customers use to access their accounts, devices, or applications.
- **Data from inactive customer tenants:** Management data from customer tenants that have been inactivated in Lighthouse by the MSP.
- **Data from inactive delegated admin relationships:** Data from customer tenants where the MSP doesn't have an active delegated admin relationship.
- **Location data:** Data that reveals the physical or geographical location of MSPs and customers, such as GPS coordinates, IP addresses, or Wi-Fi networks.
- **Personal or financial information:** Data that partners and customers may have in their profiles, preferences, transactions, or records.
Lighthouse ensures that it collects only necessary and relevant data for its service and protects the privacy and confidentiality of its MSPs and customers.

## Related content

[Microsoft Trust Center](https://www.microsoft.com/trust-center/product-overview#Microsoft-365) (link page)\
[Privacy at Microsoft](https://privacy.microsoft.com/) (link page)
