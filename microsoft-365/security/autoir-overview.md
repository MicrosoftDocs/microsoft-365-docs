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

Automated investigation and remediation (AIR) features in Microsoft 365 enable your security operations team to operate more effectively and efficiently. Automated investigation begins when an alert is triggered or when an investigation is initiated by a security analyst. The investigation results inform remediation, which can be done automatically or upon approval by your security operations team. 

AIR features leverage various inspection algorithms, processes, and best practices that are used by security analysts. AIR significantly reduces the volume of alerts your security team must address manually, allowing your security operations team to focus on more sophisticated threats and other high-value initiatives. 

## The automated investigation and remediation flow at a glance

|Phase    |What happens  |
|---------|---------|
|[Automated investigation begins](#automated-investigation-begins)     |One of the following occurs:<br/>- [An alert triggers an an automated investigation](#an-alert-triggers-an-automated-investigation)<br/>- [A security analyst starts an investigation from an alert or a security report](#an-analyst-starts-an-automated-investigation)          |
|[Automated investigation runs](#the-automated-investigation-process)     |- Details about the threat and affected entities (user accounts, machines, etc.) are gathered<br/>- The [investigation scope can increase](#automated-investigation-scope-can-increase) if new alerts or entities related to the initial threat emerge         |
|[Details and results emerge](#details-and-results-of-an-automated-investigation)     |- During and after an automated investigation, details are available.<br/>- Automated investigation results inform remediation steps.         |
|[Remediation steps are taken](#remediation-steps) |- Remediation happens automatically or by approval from your security operations team<br/>- [Learn more about how threats are remediated](#how-threats-are-remediated) |

## Automated investigation begins

An automated investigation can begin when one of the following occurs:
- [An alert triggers an automated investigation](#an-alert-triggers-an-automated-investigation)
- [An analyst starts an automated investigation from an alert or a security report](#an-analyst-starts-an-automated-investigation)

### An alert triggers an automated investigation

An automated investigation can begin when an alert is triggered. Not every alert will trigger an automated investigation; this depends on how your organization's alert policies are configured. With AIR, several kinds of alerts can be configured to work with security playbooks that define the automated investigation process. Here are just a few examples:
- Malware is detected on a user's machine
- A malicious file is detected in email
- A user account is flagged as compromised
- ... and other scenarios. 

### An analyst starts an automated investigation

The Microsoft 365 security center includes dashboards and reports to help your security operations team stay on top of threat management for your organization. When a security analyst notices a user account or machine is flagged, the analyst can view more details about that user account or machine and choose to start an automated investigation.

![Security operations dashboard](images/air-secopsdashboard.png)

For example, suppose that a security analyst notices several active alerts for a machine called *client4*. Selecting **client4** in the **Machines at risk** widget opens a more detailed view. In that view, the security analyst can choose **Initiate Automated Investigation** to start an automated investigation.

![Initiate Automated Investigation](images/air-secopsdashboard-detailedmachineview-actions.png)

## The automated investigation process

Whether through an alert or by a security analyst, once an investigation is triggered, the process begins automatically and immediately. The investigation typically includes the following steps:
- Gather information about the type of threat
- Determine where the threat came from
- Identify who in your organization is affected by the threat
- Find out whether and where other instances of the threat exist in your organization
- ... and so on.

### Automated investigation scope can increase

While an investigation is running, any other related alerts that are generated are added to an ongoing automated investigation until that investigation is completed. In addition, if the same threat is seen on other entities, those entities are added to the investigation.

If an incriminated entity is seen in elsewhere, the automated investigation will expand the investigation to include that entity and a generic playbook will start on that entity. 

## Details and results of an automated investigation

As an investigation proceeds, you'll be able to view the details of the investigation. Selecting a triggering alert brings you to the investigation details view where you can pivot from the **Investigation graph**, **Alerts**, **Machines**, **Threats**, **Entities**, and **Log** tabs.

In the **Alerts** tab, you'll see the alert that started the investigation. 

The **Machines** tab shows where the alert was seen.

The **Threats** tab shows the entities that were found to be malicious during the investigation.

During an Automated investigation, details about each analyzed entity is categorized in the **Entities** tab. You'll be able to see the determination for each entity type, such as whether it was determined to be malicious, suspicious, or clean.

The **Log** tab reflects the chronological detailed view of all the investigation actions taken on the alert.

If there are pending actions on the investigation, the **Pending actions** tab will be displayed where you can approve or reject actions. You can also go to the **Action center** to get an aggregated view all pending actions and manage remediation actions. It also acts as an audit trail for all Automated investigation actions. 

## Remediation steps

Depending on the threat and how AIR is configured for your organization, remediation can occur automatically or only upon approval by your security operations team. Remediation can include:
- Deleting a malicious file
- Resetting a user's password
- Blocking URLs that were identified as malicious
- Enabling multi-factor authentication for user accounts
- ... and more.

### How threats are remediated

Depending on how you set up the entity groups and their level of automation, the automated investigation will either require user approval (default) or automatically remediate threats.

You can configure the following levels of automation:

Automation level | Description
:---|:---
Not protected | Machines will not get any automated investigations run on them.
Semi - require approval for any remediation | This is the default automation level.<p>An approval is needed for any remediation action. 
Semi - require approval for non-temp folders remediation | An approval is required on files or executables that are not in temporary folders. <p> Files or executables in temporary folders, such as the user's download folder or the user's temp folder, will automatically be remediated if needed.
Semi - require approval for core folders remediation | An approval is required on files or executables that are in the operating system directories such as Windows folder and Program files folder. <p> Files or executables in all other folders will  automatically be remediated if needed.
Full - remediate threats automatically | All remediation actions will be performed automatically.

The default group is configured for semi-automatic remediation. This means that any malicious entity that needs to be remediated requires an approval and the investigation is added to the **Pending actions** section, this can be changed to fully automatic so that no user approval is needed. 

When a pending action is approved, the entity is then remediated and this new state is reflected in the **Entities** tab of the investigation.

## Next steps

[Learn about the automated investigations dashboard](autoir-dashboard-overview.md)