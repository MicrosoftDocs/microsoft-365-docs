---
title: Microsoft Managed Desktop operations and monitoring 
description:  
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: trudyha
ms.localizationpriority: normal
ms.date: 09/24/2018
---

# Microsoft Managed Desktop operations and monitoring

<!-- Operations and monitoring: -->


## Change management

In a service offering, the balance of responsibility for things such as hardware maintenance and security updates shifts to the service provider (Microsoft) instead of the customer (you). However, you still need to ensure that third-party and custom software continues to function as expected when updates are rolled out.

For on-premises products, your organization assumes all responsibility for managing change.

### Balance of responsibility

Responsibility | Microsoft Managed Desktop service | Microsoft 365 client software | On-premises clients and servers | 3rd party and custom software
----- | ----- | ----- | ----- | -----
Provide new functionality | Microsoft | Microsoft | Both | Customer
Test new features for quality assurance |  Microsoft | Microsoft | Both | Customer
Communicate about new features | Both | Both | Both | Customer
Integrate custom software | Both | Both | Customer | Customer
Apply security updates | Microsoft | Microsoft | Customer | Customer
Maintain system software | Microsoft | Microsoft | Customer | Customer
Package for deployment | Microsoft | Microsoft | Customer | Customer


### Change process overview

Here’s a summary of how the change process is shared between Microsoft and customers. 



<table>
<tr><th></th><th><p>Microsoft's role:</p></th><th><p>Customer's role:</p></th></tr>
<tr><td>Before a change</td><td><ul><li>Set expectations for service changes.</li><li>Notify customers 5 days in advance for changes that require administrator action.</li><li>For emergency changes, apply a mitigation prior to notifying.</li></ul></td><td><ul><li>Understand what to expect for changes and communications.</li><li>Read Microsoft Managed Desktop Message Center regularly.</li><li>Review and update internal change management processes.</li><li>Understand, and check compliance with Microsoft Managed Desktop requirements. </li><li>Acknowledge and approve, when required.</li></ul></td></tr><tr><td>During a change</td><td><ul><li>Release and deploy monthly security and non-security updates for Windows 10 and Office 365 clients.</li><li>Monitor data signals and support queues for impact.</li></ul></td><td><ul><li>Check the Microsoft Managed Desktop Message Center and review any additional information.</li><li>	Take any action required, if applicable, and test applications.</li><li>If a break/fix scenario is experienced, create a Support request.</li></ul></td></tr><tr><td>After a change</td><td><ul><li>Collect customer feedback to improve rollout of future changes.</li><li>Monitor data signals and support queues for impact.</li></ul></td><td><ul><li>Work with people in your organization to adopt the change.</li><li>	Review change and adoption management processes for opportunities to gain efficiencies.</li><li>Provide general feedback and specific feedback in the admin feedback tool.</li><li>Train users to provide app-specific feedback using the Windows Feedback Hub and the Smile button in Office apps.</li></ul></td></tr>
<table> 






### Change types

There are several types of changes that are made to the service on a regular basis. The communication channel for those changes, and the actions that customers are responsible for varies.

Not all changes have the same impact on your users or require action. Some are planned and some unplanned by their nature (non-security updates and security updates aren't usually planned). Depending on the type of change, the communication channel may vary. The following table lists the types of changes you can expect for the Microsoft Managed Desktop service.

|   | Functionality |	Non-security updates |	Security
--- | --- | --- | ---
**Type of change** | - Feature updates<br>- New features or applications<br>- Deprecated features | Client hotfixes for issues | Security patches
**Advance notice** | 5 days’ notice for changes that require action |	No, these are included in the monthly release	| No, these are included in the monthly release 
**Communication channel** | - Message Center<br>- Email alert | - Message Center<br>- Email alert | - Message Center<br>- Email alert<br>- Security bulletin or CVE 
**Requires tenant admin action** | Sometimes |	Rarely |	Rarely 
**Type of action** | Change settings | Communicate changes to users | Change admin settings 	
**Requires testing** | Check business applications, including remote access services |	Sometimes - testing the fix against processes or customizations |	Rarely 
**Examples of change** | - Feature updates: IT Admin Portal – simplified support ticket submission and review<br>- New features or applications: Semi-annual release of a Windows 10 feature update |	Hotfixes based on customer reported bugs |	


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

When the device has been reset, you can give it to a different person in your organization. None of the previous user’s data or enterprise data will be on the device. The next user will go through the same process that the previous person did with a new Microsoft Managed Desktop device.

BitLocker is a key component of data security in this process. With BitLocker encryption on Microsoft Managed Desktop devices, data on the drive remains secure even after Factory reset has been applied to the device. Any data that was on the drive will not be available to the next user of the device. For more information, see [BitLocker overview](https://docs.microsoft.com/windows/security/information-protection/bitlocker/bitlocker-overview).

For more information, see [Factory reset a device](https://docs.microsoft.com/intune/devices-wipe#factory-reset-a-device). 
