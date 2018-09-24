---
title: Microsoft Managed Desktop operations and monitoring 
description:  
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: jdeckerms
ms.localizationpriority: medium
ms.date: 09/24/2018
---

# Microsoft Managed Desktop operations and monitoring

<!-- Operations and monitoring: -->


## Change management

Microsoft and customers will share change management for the Microsoft Managed Desktop service. Responsibilities differ for an online service versus an on-premises server or client. 

### Change process overview

Here’s a summary of how the change process is shared between Microsoft and customers. 



<table>
<tr><th></th><th><p>Microsoft will:</p></th><th><p>Customers will:</p></th></tr>
<tr><td>Before a change</td><td><ul><li>Notify customers 5 days in advance for changes that require administrator action.</li><li>For emergency changes, apply a mitigation prior to notifying.</li></ul></td><td><ul><li>Read and understand notification email.</li><li>Acknowledge and approve, when required.</li></ul></td></tr><tr><td>During a change</td><td><ul><li>Deploy change for Windows 10 and Office, release security and non-security updates, as needed.</li><li>Monitor telemetry and support escalations for any unexpected issues.</li></ul></td><td><ul><li>Manage internal change management process.</li><li>Create a Support request, if required.</li></ul></td></tr><tr><td>After a change</td><td><ul><li>Collect customer feedback to improve rollout of future changes.</li><li>Monitor telemetry and support escalations for any unexpected issues.</li></ul></td><td><ul><li>Read and understand notification email.</li><li>Provide general feedback and specific feedback in the admin feedback tool.</li><li>Train users to provide app-specific feedback using the Windows Feedback Hub and the Smile button in Office apps.</li></ul></td></tr>
<table> 




### Change types

There are several types of changes that are made to the service on a regular basis. The communication channel for those changes, and the actions that customers are responsible for varies.

The following types of changes can be expected:

Change type | Notification | Customer action
--- | --- | ---
Feature updates and new service components | Email | - Communicate change to users<br><br> - Act as required by Microsoft<br><br> - Action must be taken within 48 hours
Security updates, both monthly updates and baseline settings | Email, Security Bulletin, or Common Vulnerabilities and Exposures (CVE) entry | - Monthly security updates will be deployed using our [update management strategy](updates.md).<br><br> - Settings to mitigate a threat will be deployed to the entire organization to protect the organization. (THIS DOES NOT APPEAR TO BE A CUSTOMER ACTION)
Quality updates, including hotfixes, service updates, and non-security impacting baseline policy | Email | Will advise when required.
Emergency updates: service, configuration, or software updates requred to mitigate:<br><br> - Critical security risk<br><br> - Potential data loss<br><br> - Access to telemetry data for managing Microsoft Managed Desktop devices | Will advise when required.

## Standard operating procedures

This service is implemented and operated by Microsoft in your environment where you conduct other administrative activities. Microsoft is solely responsible for Microsoft Managed Desktop-specific setup, configuration and operation. 

For on-premises products, your organization takes on all the responsibility for managing operational and configuration activities.

Categories |	Actions
--- | ---
Service accounts |	Microsoft will:<br><br> - Implement, securely store, and manage the credentials<br><br> - Communicate unauthorized access or use of these credentials to your Security Operations team<br><br><br><br>Customers will:<br><br> - Open an informational support request with Microsoft Managed Desktop Operations when planning a change that may impact the accounts<br><br> - Not assign policy, multi-factor authentication, conditional access, or application deployment to the Microsoft Managed Desktop Service Accounts<br><br> - Not reset the password or use the credentials<br><br> - Open a Sev C support request to Microsoft Managed Desktop operations if suspicious activity is observed in Intune or Azure audit logs, related to these service accounts
Device Groups |	Microsoft will:<br><br> - Implement and manage the membership of devices within Microsoft Managed Desktop groups<br><br> - Use the Microsoft Managed Desktop groups to manage the assignment and release of configuration and updates to devices<br><br><br><br>Customers will:<br><br> - Open an informational support request with Microsoft Managed Desktop Operations when planning a change that may impact the groups<br><br> - Not modify the membership of any Microsoft Managed Desktop group<br><br> - Only use the groups to assign corporate certificates for services such as VPN, Windows Hello for Business or email encryption, or corporate Wi-Fi profile configuration<br><br> - Where co-management exists, explicitly exclude all Microsoft Managed Desktop groups when deploying the Configuration Manager client
Policies |	Microsoft will:<br><br> - Implement and manage the Microsoft Managed Desktop policies that govern the configuration state of devices within service<br><br> - Deploy updates, to policy or Windows, incrementally using Device Groups<br><br> - Explicitly exclude targeting non-Microsoft Managed Desktop groups<br><br><br><br>Customer will:<br><br> - Open an informational support ticket with Microsoft Managed Desktop Operations when planning a change that may impact the desired configuration state of devices<br><br> - Not edit or assign Microsoft Managed Desktop policies to devices or users not managed by the Microsoft Managed Desktop service
Windows Defender Advanced Threat Protection	| Microsoft will:<br><br> - Monitor and investigate devices within the scope of the Microsoft Managed Desktop service<br><br><br><br>Customer will:<br><br> - Open an informational support ticket with Microsoft Managed Desktop Operations when planning a change that may impact the monitoring or investigative capabilities of the Microsoft Managed Desktop Security Operations Center
Microsoft Store for Business |	Microsoft will:<br><br> - Configure and maintain the Windows Autopilot profile for the Microsoft Managed Desktop service<br><br><br><br>Customer will:<br><br> - Open an informational support ticket with Microsoft Managed Desktop Operations when planning a change that Open might impact the access to the Store or modify the Microsoft Managed Desktop Windows Autopilot profile<br><br> - Not modify the configuration of the Microsoft Managed Desktop Windows Autopilot profile or add/remove assigned devices
Certificates |	Customer will:<br><br> - Open an informational support ticket with Microsoft Managed Desktop Operations 60 days prior to any certificate expiring<br><br> - Update all certificates that are required to configure: certificate profiles, VPN profiles, and Wi-Fi profiles



## Device wipe with factory reset

Managed Desktop Operations Team can do a factory reset on Microsoft Managed Desktop-managed devices that need to be reimaged. This is helpful if you need to give a device to a different employee, or if an employee leaves your company. 

There are a few requirements:

- The customer’s tenant administrator must submit a service request
- We need the computer name for the device
- User account must be in Azure AD before we do the reset

Managed Desktop Operations Team will:

- Look up the device name in Intune
- Send the factory reset command to the device

>[!NOTE]
>Do not remove the user account from Azure AD before the factory reset. If the user isn’t in Azure AD, Intune can’t send the factory reset command to the device. 

The device will boot into OOBE, and all preinstalled applications and settings will be applied again. The device’s user needs to provide initial set up information again. 

When the device has been reset, you can give it to a different person in your organization. None of the pervious user’s data or enterprise data will be on the device. The next user will go through the same process that the previous person did with a new Microsoft Managed Desktop device.

BitLocker is a key component of data security in this process. With BitLocker encryption on Microsoft Managed Desktop devices, data on the drive remains secure even after Factory reset has been applied to the device. Any data that was on the drive will not be available to the next user of the device. For more information, see [BitLocker overview](https://docs.microsoft.com/windows/security/information-protection/bitlocker/bitlocker-overview).

For more information, see [Factory reset a device](https://docs.microsoft.com/intune/devices-wipe#factory-reset-a-device). 
