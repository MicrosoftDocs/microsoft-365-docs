---
title: "Investigate anomaly detection alerts"
f1.keywords:
- NOCSH
ms.author: v-tophillips
author: v-tophillips
manager: laurawi
audience: Admin
ms.topic: article
ms.service: O365-seccomp
ms.collection: m365-security-compliance
localization_priority: Priority
search.appverid: 
- MOE150
- MET150
description: "Investigate anomaly detection alerts."
---

# Investigate anomaly detection alerts

 Microsoft app governance provides security detections and alerts for malicious activities. The purpose of this guide is to provide you with general and practical information on each alert, to help with your investigation and remediation tasks. Included in this guide is general information about the conditions for triggering alerts. Because anomaly detections are non-deterministic by nature, they're only triggered when there's behavior that deviates from the norm. Finally, some alerts may be in preview, so regularly review the official documentation for updated alert status.

## MITRE ATT&CK

To make it easier to map the relationship between app governance alerts and the familiar MITRE ATT&CK Matrix, we've categorized the alerts by their corresponding MITRE ATT&CK tactic. This additional reference makes it easier to understand the suspected attacks technique potentially in use when app governance alert is triggered.

This guide provides information about investigating and remediating app governance alerts in the following categories.

- Initial Access
- Execution
- Persistence
- Privilege Escalation
- Defense Evasion
- Credential Access
- Collection
- Exfiltration
- Impact

## Security alert classifications

Following proper investigation, all app governance alerts can be classified as one of the following activity types:

- True positive (TP): An alert on a confirmed malicious activity.
- Benign true positive (B-TP): An alert on suspicious but not malicious activity, such as a penetration test or other authorized suspicious action.
- False positive (FP): An alert on a non-malicious activity.

## General investigation steps

Use the following general guidelines when investigating any type of alert to gain a clearer understanding of the potential threat before applying the recommended action.

- Review the app severity level and compare with the rest of the apps in your tenant. This review will help you identify which Apps in your tenant pose the greater risk.
- If you identify a TP, review all the App activities to gain an understanding of the impact. For example, review the following App information:

  - Scopes granted access
  - Unusual behavior  
  - IP address and location

## Initial access alerts

This section describes alerts indicating that a malicious app may be attempting to maintain their foothold in your organization.  

### Encoded app name with suspicious consent scopes

**Severity:** Medium

**Description**: This detection identifies OAuth apps with characters, such as Unicode or encoded characters, requested for suspicious consent scopes and that accessed users mail folders through the Graph API. This alert can indicate an attempt to camouflage a malicious app as a known and trusted app so that adversaries can mislead the users into consenting to the malicious app.

**TP or FP?**

- **TP**: If you can confirm that the OAuth app has encoded the display name with suspicious scopes delivered from an unknown source, then a true positive is indicated.  

  **Recommended action**: Review the level of permission requested by this app and which users granted access. Based on your investigation you can choose to ban access to this app.

  To ban access to the app, on the OAuth apps page, on the row in which the app you want to ban appears, select the ban icon. You can choose whether you want to tell users the app they installed and authorized has been banned. The notification lets users know the app will be disabled and they will not have access to the connected app. If you do not want them to know, unselect Notify users who granted access to this banned app in the dialog. We recommend that you let the app users know their app is about to be banned from use.

- **FP**: If you are to confirm that the app has an encoded name but has a legitimate business use in the organization.

  **Recommended action**: Dismiss the alert.

**Understand the scope of the breach**

Follow the tutorial on how to [investigate risky OAuth apps](/cloud-app-security/investigate-risky-oauth).

### OAuth App with read Scopes have suspicious Reply URL

**Severity**: Medium

**Description**: This detection identifies an OAuth app with only Read scopes such as User.Read, People.Read, Contacts.Read, Mail.Read, Contacts.Read.Shared redirects to suspicious Reply URL through Graph API. This activity attempts to indicate that malicious app with less privilege permission (such as Read scopes) could be exploited to conduct users account reconnaissance.

**TP or FP?**

- **TP**: If you’re able to confirm that the OAuth app with read scope is delivered from an unknown source, and redirects to a suspicious URL, then a true positive is indicated.

  **Recommended action**: Review the Reply URL and scopes requested by the app. Based on your investigation you can choose to ban access to this app. Review the level of permission requested by this app and which users have granted access.

  To ban access to the app, on the OAuth apps page, on the row in which the app you want to ban appears, select the ban icon. You can choose whether you want to tell users the app they installed and authorized has been banned. The notification lets users know the app will be disabled and they will not have access to the connected app. If you do not want them to know, unselect Notify users who granted access to this banned app in the dialog. We recommend that you let the app users know their app is about to be banned from use.

- **B-TP**: If after investigation, you can confirm that the app has a legitimate business use in the organization.

  **Recommended action**: Dismiss the alert.

**Understand the scope of the breach**

1. Review all activities done by the app.
1. If you suspect that an app is suspicious, we recommend that you investigate the app’s name and Reply URL in different app stores. When checking app stores, focus on the following types of apps:
   - Apps that have been created recently.
   - Apps with a suspicious Reply URL
   - Apps that haven't been recently updated. Lack of updates might indicate the app is no longer supported.
1. If you still suspect that an app is suspicious, you can research the app name, publisher name, and reply URL online  

### App with unusual display name and unusual TLD in Reply domain  

**Severity**: Medium  

**Description**

This detection identifies app with unusual display name and redirect to suspicious reply domain with an unusual Top-level domain (TLD) through Graph API. This can indicate an attempt to camouflage a malicious or risky app as a known and trusted app so that adversaries can mislead the users into consenting to their malicious or risky app.  

**TP or FP?**

- **TP**: If you’re able to confirm that the app with unusual display name delivered from an unknown source and redirects to a suspicious domain having unusual Top-level domain  

    **Recommended action**: Review the display name and Reply domain of the app. Based on your investigation you can choose to ban access to this app. Review the level of permission requested by this app and which users granted access.

- **FP**: If after investigation, you can confirm that the app has a legitimate business use in the organization.

    **Recommended Action**: Dismiss the alert.

**Understand the scope of the breach**

Review all activities done by the app. If you suspect that an app is suspicious, we recommend that you investigate the app’s name and reply domain in different app stores. When checking app stores, focus on the following types of apps:

- Apps that have been created recently
- App with unusual display name
- Apps with a suspicious Reply domain

If you still suspect that an app is suspicious, you can research the app display name and reply domain.

## Persistence alerts

This section describes alerts indicating that a malicious actor may be attempting to maintain their foothold in your organization.

### App with Suspicious OAuth scope made graph calls to read email and created Inbox Rule  

**Severity**: Medium

**MITRE ID’s**: T1137.005, T1114  

This detection identifies an OAuth App that consented to suspicious scopes, creates a suspicious inbox rule, and then accessed users mail folders and messages through the Graph API. Inbox rules, such as forwarding all or specific emails to another email account, and Graph calls to access emails and send to another email account, may be an attempt to exfiltrate information from your organization.  

**TP or FP?**

- **TP**: If you can confirm that inbox rule was created by an OAuth third-party app with suspicious scopes delivered from an unknown source, then a true positive is indicated.

  **Recommended action**:  Disable and remove the app, reset the password, and remove the inbox rule.

  Follow the tutorial on how to Reset a password using Azure Active Directory and follow the tutorial on how to remove the inbox rule.

- **FP**: If you can confirm that app created an inbox rule to a new or personal external email account for legitimate reasons.

  **Recommended action**: Dismiss the alert.

**Understand the scope of the breach**

1. Review all activities done by the app.
1. Review the scopes granted by the app.
1. Review the inbox rule action and condition created by the app.

### App accessed from unusual location post certificate update

**Severity**: Low

**MITRE ID**: T1098

This detection triggers an alert when a Line of Business (LOB) app was updated the certificate / secret and within few days post certificate update, app is accessed from unusual location which was not seen recently or never accessed in past.

**TP or FP?**

- **TP**: if you’re able to confirm that LOB app accessed from unusual location and performed unusual activities through Graph API.

    **Recommend action**: Temporarily disable the app and reset the password and then re-enable the app.

- **FP**: If you’re able to confirm that LOB app accessed from unusual location for legitimate purpose and no unusual activities performed.

    **Recommended Action**: Dismiss the alert.

**Understand the scope of the breach**

1. Review all activity performed by this app.
1. Review the scopes granted by the app.
1. Review the user activity associated with this app.

### App accessed from unusual location made anomalous Graph calls post certificate update

**Severity**: Medium

**MITRE ID**: T1098

This detection triggers an alert when a Line of Business (LOB) app updated the certificate / secret and within few days post certificate update, app is accessed from an unusual location which was not seen recently or never accessed in past and observed unusual activities or usage through Graph API using Machine learning algorithm.

**TP or FP?**

- **TP**: If you’re able to confirm that unusual activities/usage was performed by the LOB app through Graph API from an unusual location.

    **Recommend action**: Temporarily disable the app and reset the password and then re-enable the app.

- **FP**: If you’re able to confirm that LOB app accessed from unusual location for legitimate purpose and no unusual activities performed.

    **Recommended action**: Dismiss the alert.

**Understand the scope of the breach**

1. Review all activity performed by this app.
1. Review the scopes granted by the app.
1. Review the user activity associated with this app.

## Collection alerts

This section describes alerts indicating that a malicious actor may be attempting to gather data of interest to their goal from your organization.

### App made anomalous Graph calls to read e-mail

**Severity**: Medium

**MITRE ID**: T1114

This detection identifies when Line of Business (LOB) OAuth App accesses an unusual and high volume of user's mail folders and messages through the Graph API, which can indicate an attempted breach of your organization.

**TP or FP?**

- **TP**: If you can confirm that the unusual graph activity was performed by the Line of Business (LOB) OAuth App, then a true positive is indicated.

  **Recommend actions**: Temporarily disable the app and reset the password and then re-enable the app. Follow the tutorial on how to Reset a password using Azure Active Directory.

- **FP**: If you can confirm that the app is intended to do unusually high volume of graph calls.

  **Recommended action**: Dismiss the alert.

**Understand the scope of the breach**

1. Review the activity log for events performed by this app to gain a better understanding of other Graph activities to read emails and attempt to collect users sensitive email information.
1. Monitor for unexpected credential being added to the app.

### App creates inbox rule and made unusual email searches activities

**Severity**: Medium

**MITRE IDs**: T1137 , T1114  

This detection identifies App consented to high privilege scope, creates suspicious inbox rule, and made unusual email search activities in users mail folders through Graph API. This can indicate an attempted breach of your organization, such as adversaries attempting to search and collect specific emails from your organization through Graph API.

**TP or FP?**

- **TP**: If you’re able to confirm any specific emails search and collection done through Graph API by an OAuth app with high privilege scope, and the app is delivered from unknown source.

    **Recommended action**: Disable and remove the app, reset the password, and remove the inbox rule.

- **FP**: If you’re able to confirm app has performed specific email search and collection through Graph API and created an inbox rule to a new or personal external email account for legitimate reasons.

    **Recommended action**: Dismiss the alert.

**Understand the scope of the breach**

1. Review all activities done by the app.
1. Review the scopes granted by the app.
1. Review any inbox rule action created by the app.
1. Review any email search activities done by the app.

### App made OneDrive / SharePoint search activities and created inbox rule  

**Severity**: Medium

**MITRE ID’s**: T1137, T1213

This detection identifies that an App consented to high privilege scope, created a suspicious inbox rule, and made unusual SharePoint or OneDrive search activities through Graph API. This can indicate an attempted breach of your organization, such as adversaries attempting to search and collect specific data from SharePoint or OneDrive from your organization through Graph API.  

**TP or FP?**

- **TP**: If you’re able to confirm any specific data from SharePoint or OneDrive search and collection done through Graph API by an OAuth app with high privilege scope, and the app is delivered from unknown source.  

  **Recommended Action**:  Disable and remove the App, reset the password, and remove the inbox rule.  

- **FP**: If you’re able to confirm app has performed specific data from SharePoint or OneDrive search and collection through Graph API by an OAuth app and created an inbox rule to a new or personal external email account for legitimate reasons.  

  **Recommended Action**: Dismiss the alert  

**Understand the scope of the breach**

1. Review all activities done by the app.  
1. Review the scopes granted by the app.  
1. Review any inbox rule action created by the app.  
1. Review any SharePoint or OneDrive search activities done by the app.
