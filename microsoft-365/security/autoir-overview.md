---
title: Microsoft 365 automated investigations overview
description: Get an overview of automated investigations, including active investigations, status, detection source, and other details.
keywords: automated, investigation, detection, source, threat types, id, tags, machines, duration, filter export
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: microsoft-365-enterprise
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: deniseb
author: denisebmsft
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- M365-security-compliance 
ms.topic: conceptual
---

# Automated investigations overview

**Applies to**:
- Microsoft 365

Automated investigation and remediation (AIR) features in Microsoft 365 enable your security operations team to operate more effectively and efficiently. AIR includes alerts and security playbooks that are based on industry standards and best practices. AIR can help your security team address alerts and resolve security breaches quickly. Through certain automated processes and remediation activities, AIR significantly reduces the volume of alerts your security team must address, allowing your security operations team to focus on more sophisticated threats and other high-value initiatives. 



## Understand the Automated investigation flow

### How the Automated investigation starts

## Alerts

Alerts represent triggers for security operations team workflows for incident response. Prioritizing the right set of alerts for investigation, while making sure no threats are unaddressed is challenging. When investigations into alerts are performed manually, Security Operations teams must hunt and correlate entities (for example, content, devices and users) at risk from threats. Such tasks and workflows are very time consuming and involve multiple tools and systems. With this capability, investigation and response are automated into key security and threat management alerts that trigger your security response playbooks automatically. 

>[!NOTE]
>Currently, Automated investigation only supports the following: 
><br>
>**OS versions**
>- Windows 10, version 1709 (OS Build 16299.1085 with [KB4493441](https://support.microsoft.com/en-us/help/4493441/windows-10-update-kb4493441)) or later
>- Windows 10, version 1803 (OS Build 17134.704 with [KB4493464](https://support.microsoft.com/en-us/help/4493464/windows-10-update-kb4493464)) or later
><br>
>- Later versions of Windows 10 <br>
>
>**Mailbox related alerts**
>- Potentially malicious URL click was detected
>- Email reported by user as phish
>- Email messages containing malware removed after delivery
>- Email messages containing phish URLs removed after delivery

The alerts start by analyzing the supported entities from the alert and also runs a generic playbook to see if there is anything else suspicious on the entity. The outcome and details from the investigation is seen in the Automated investigation view.

### Details of an Automated investigation - NEED TO UPDATE BASED ON REAL UI/UX

As the investigation proceeds, you'll be able to view the details of the investigation. Selecting a triggering alert brings you to the investigation details view where you can pivot from the **Investigation graph**, **Alerts**, **Machines**, **Threats**, **Entities**, and **Log** tabs.

In the **Alerts** tab, you'll see the alert that started the investigation. 

The **Machines** tab shows where the alert was seen.

The **Threats** tab shows the entities that were found to be malicious during the investigation.

During an Automated investigation, details about each analyzed entity is categorized in the **Entities** tab. You'll be able to see the determination for each entity type, such as whether it was determined to be malicious, suspicious, or clean.

The **Log** tab reflects the chronological detailed view of all the investigation actions taken on the alert.

If there are pending actions on the investigation, the **Pending actions** tab will be displayed where you can approve or reject actions. You can also go to the **Action center** to get an aggregated view all pending actions and manage remediaton actions. It also acts as an audit trail for all Automated investigation actions. 

### How an Automated investigation expands its scope

While an investigation is running, any other alert generated will be added to an ongoing Automated investigation until that investigation is completed. In addition, if the same threat is seen on other entities, those entities are added to the investigation.

If an incriminated entity is seen in elsewhere, the Automated investigation will expand the investigation to include that entity and a generic playbook will start on that entity. 

### How threats are remediated

Depending on how you set up the entity groups and their level of automation, the Automated investigation will either require user approval (default) or automatically remediate threats.

You can configure the following levels of automation:

Automation level | Description
:---|:---
Not protected | Machines will not get any automated investigations run on them.
Semi - require approval for any remediation | This is the default automation level.<br><br>  An approval is needed for any remediation action. 
Semi - require approval for non-temp folders remediation | An approval is required on files or executables that are not in temporary folders. <br><br> Files or executables in temporary folders, such as the user's download folder or the user's temp folder, will automatically be remediated if needed.
Semi - require approval for core folders remediation | An approval is required on files or executables that are in the operating system directories such as Windows folder and Program files folder. <br><br> Files or executables in all other folders will  automatically be remediated if needed.
Full - remediate threats automatically | All remediation actions will be performed automatically.


The default group is configured for semi-automatic remediation. This means that any malicious entity that needs to be remediated requires an approval and the investigation is added to the **Pending actions** section, this can be changed to fully automatic so that no user approval is needed. 

When a pending action is approved, the entity is then remediated and this new state is reflected in the **Entities** tab of the investigation.
