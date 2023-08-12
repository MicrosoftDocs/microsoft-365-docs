---
title: How-to deploy and configure the report message add-in
description: The steps to deploy and configure Microsoft's phish reporting add-in(s) aimed at security administrators.
search.product:
ms.service: microsoft-365-security
ms.subservice: mdo
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords:
  - NOCSH
ms.author: tracyp
author: MSFTBen
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
- m365-guidance-templates
- m365-security
- tier3
ms.topic: how-to
search.appverid: met150
ms.date: 1/31/2023
---

# Deploy and configure the Report Message add-in to users

The Report Message and Report Phishing add-ins for Outlook make it easy to report phishing to Microsoft and its affiliates for analysis, along with easy triage for admins on the **Submissions** page at <https://security.microsoft.com/reportsubmission?viewid=user>.

Depending on whether you are licensed for Defender for Office 365, you'll also get added functionality such as alerting & automated investigation and response (AIR), which will remove the burden from your security operations staff. This guide will walk you through configuring the add-in deployment as recommended by the Microsoft Defender for Office 365 team.

## Choose between which add-in to deploy

- The Report Phishing add-in provides the option to report only phishing messages
- The Report Message add-in provides the option to report junk, not junk (false positive), and phishing messages

## What you'll need

- Exchange Online Protection (some features require Defender for Office 365 Plan 2)
- Sufficient permissions (Global admin for add-in deployment, security admin for customization)
- 5-10 minutes to perform the steps below

## Deploy the add-in for users

1. **Login** to the Microsoft 365 admin center at <https://admin.microsoft.com>.
1. On the left nav, press **Show All** then expand **Settings** and select **Integrated Apps**.
1. On the page that loads, press **Get Apps**.
1. In the page that appears, in the top right Search box, enter **Report Message** or **Report Phishing**, and then select **Search**.
1. Press **Get it now** on your chosen app within the search results (publisher is **Microsoft Corporation**).
1. On the flyout that appears, select who to deploy the add-in to. If testing you may wish to use a specific group, otherwise configure it for the **entire organization** – when you've made a selection press **Next**.
1. Review the permissions, information and capabilities then press **Next**.
1. Press **Finish deployment** (it can take 12-24 hours for the add-in to appear automatically in Outlook clients).

## Configure the add-in for users

1. **Login** to the Microsoft Security portal at <https://security.microsoft.com>.
2. On the left nav, select **Settings** and choose **Email & collaboration**.
3. Select **User reported settings**.
4. Ensure **Microsoft Outlook Report Message button** is toggled to **On**.
5. Under **Send the reported messages to** choose **Microsoft** (Recommended).
6. Ensure **Let users choose if they want to report** is unchecked and **Always report the message** is selected.
7. Press **Save**.

## Optional steps – configure notifications

1. On the configuration page from the earlier steps, underneath the **User reporting experience**, configure the before and after reporting pop-ups title and body if desired. The end users will see the before reporting pop up if **Ask me before reporting** is also enabled.
2. If you wish for notifications to come from an internal organizational mailbox, select **Specify Office 365 email address to use as sender** and search for a valid mailbox in your organization to send the notifications from.
3. Press **Customize notifications** to set up the text sent to reporting users after admin reviews a reported message using Mark & Notify, configure the **Phishing**, **Junk** & **No threats** found options.
4. On the **Footer** tab, select the global footer to be sent for notifications, along with your organization's logo if appropriate.

### Further reading

Learn more about user reported settings [User reported settings](../submissions-user-reported-messages-custom-mailbox.md)

Enable the report message or report phishing add-in [Enable the Microsoft Report Message or Report Phishing add-ins](../submissions-users-report-message-add-in-configure.md)
