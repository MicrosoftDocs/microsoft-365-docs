---
title: "Initiate a volume licensing Change of Channel Partner request in the Microsoft 365 admin center"
f1.keywords: NOCSH
ms.author: cmcatee
author: cmcatee-MSFT
manager: scotv
ms.reviewer: vikrammitta, atuldubey
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-business
ms.subservice: m365-commerce-volume-licensing
ms.collection:
- Tier1
- scotvorg
ms.custom:
- commerce_vl
- AdminTemplateSet
service.tree.id: e6e1ea2a-04a0-4f78-bc75-7d45c90eee39
search.appverid: MET150
ms.localizationpriority: medium
description: "Learn how to initiate a volume licensing Change of Channel Partner (COCP) request in the Microsoft 365 admin center."
ms.date: 11/13/2025
---

# Initiate a Change of Channel Partner (COCP) request in the Microsoft 365 admin center

As of November 2025, Enterprise volume licensing (VL) customers can initiate a Change of Channel Partner (COCP) request in the Microsoft 365 admin center and Azure portal. This change lets you directly initiate the COCP request process instead of reaching out to Partners.

After you initiate a COCP request, Microsoft sends the partner a notification to accept or decline the request. After the partner accepts the request, you receive a notification of the acceptance and the effective start date for the new partner relationship.

## Before you begin

- You must have the Online Administrator (OLA) role on the agreement before you initiate the COCP request.
- You must have an Enterprise agreement (EA) or an Enterprise Subscription Agreement (EAS) to initiate a COCP request, and the agreement status must be Active.
- Your organization's trade status must be Approved.

> [!IMPORTANT]
> You can't submit a COCP request if the following programs or conditions apply:
>
> - Non-EA programs, including Select, Select Plus, Open Value, Open Value Subscription, EDU / Campus, SPLA, IVR, MPSA, and Open license.
> - EA agreements with Microsoft Enterprise Direct Support (MSEDS) as the Bill to contact or Software Advisor.
> - EA agreements with Expired or Ended status.
> - Early or backdated COCP requests.

## Information needed from your new partner

To initiate a COCP request, you need the following pieces of information from the partner:

1. The new partner PCN number.
2. The email address of the partner Notification Contact.

As the VL Administrator, when you start a COCP request, you must provide the email address of a partner Notification Contact from your new partner organization. This person becomes your main point of contact for future communication about your VL agreement.

If you don't have this information, you can enter any email address for the partner Notification Contact to proceed. However, if the email address you provide isn't verified by Microsoft, your new partner can't receive automatic notifications about the COCP request. Contact your new partner directly and let them know that you started the COCP request process.

## Initiate a change of channel partner request in the Microsoft 365 admin center

> [!NOTE]
>
> - A COCP request initiated in the Microsoft 365 admin center isn't visible in the Azure portal.
> - The effective date of the new partner relationship defaults to 90 days from the initiation date of the COCP request. If you need a different date, email your partner to submit an Early COCP request to Microsoft.  

1. In the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a>, go to the **Billing** > **Your products** page, then select the <a href="https://go.microsoft.com/fwlink/p/?linkid=2244144" target="_blank">Volume licensing</a> tab.
2. In the **Contracts** section, select **View contracts**.
3. On the **Contracts** page, select the License IDs for the contracts that you want to change, then select **Change partner**.

   > [!NOTE]
   > If any of the selected licenses are ineligible to change partners, you see the Ineligible licenses section. Expand the message to see the reason why  a COCP request is blocked for each ineligible license ID.

4. On the **Initiate change of partner** page, select a reason for the change and enter a brief description.
5. For each License ID listed, enter the Public Customer Number (PCN) of the new partner, and the email address of the partner's notification contact.
6. Select **Verify partner** to verify the partner PCN. The partner organization name is automatically added to the entry. If you receive an error, contact the partner to get the correct PCN.

   > [!NOTE]
   > If you see the message "The email ID you entered doesn't belong to the partner organization you have added," you can still submit the COCP request. However, this message means an invitation isn't sent to the partner email. Instead, you must contact the partner directly and let them know they have a request to accept.

7. In the **Review change partner terms** panel, review the terms, enter your first and last name, select the checkbox, then select **Submit**. If the submission is successful, you see a side panel that says "Your request has been submitted successfully." We send an email to the new partner contact with the subject "Action required: \<org name\>(PCN) would like you to be their new partner."

> [!IMPORTANT]
> If the new partner doesn't accept the request within 10 days, the COCP request expires and you must restart the process.

## Track your change of channel partner request status in the Microsoft 365 admin center

As a VL Administrator, you can check the status of your COCP request on the **Track changes** page in the volume licensing section of the admin center.

For each License ID included in the COCP request package, you see a Request ID. We use the Request ID to group multiple License IDs for use with future support tickets and communication from Microsoft.

To check the status of a COCP request, use the following steps:

1. In the admin center, go to the **Billing** > **Your products** page, then select the <a href="https://go.microsoft.com/fwlink/p/?linkid=2244144" target="_blank">Volume licensing</a> tab.
2. In the **Contracts** section, select **View contracts**.
3. On the **Contracts** page, find the Licensing ID. Select the three dots (**More actions**), then select **Track changes**.
4. Find the License ID you want to check, then look at the **Status** column to see the current status.

The Effective date is the date from which the new partner can place orders on the agreement.

The following table explains the terms used in the **Status** column.

|Status  |Description  |
|---------|---------|
|In progress     |The COCP request was sent to the new partner who must accept or decline the COCP. |
|Accepted    |The partner accepted the COCP request and it will be processed by the Microsoft Operations Service Center (MOSC). The process typically takes 24-48 hours for MOSC to complete. |
|Declined    |The partner declined the COCP request. |
|Pending MS review     |The request is currently under review by the MOSC.  |
|Grace period    |The request is currently in a grace period during which the new partner doesn't have access to agreements and the old partner remains the partner on record. The grace period lasts 90 days. |
|Cancellation in progress |The customer canceled the COCP request and it's in the queue for cancellation. |
|Canceled |The customer successfully canceled the request. |
|Expired |The partner didn't accept the COCP request within 10 days. |
|Completed |The COCP request is completed. |

## Download the change of channel partner request form in the Microsoft 365 admin center

If you need a copy of the COCP request form, you can download a copy from the Microsoft 365 admin center after the partner accepts the request.

1. In the admin center, go to the **Billing** > **Your products** page, then select the <a href="https://go.microsoft.com/fwlink/p/?linkid=2244144" target="_blank">Volume licensing</a> tab.
2. In the **Contracts** section, select **View contracts**.
3. On the **Contracts** page, find the Licensing ID. Select the three dots (**More actions**), then select **Track changes**.
4. Select the License IDs where the **Status** column shows **Completed**, then select **Download**.

## Cancel your change of channel partner request in the Microsoft 365 admin center

If your COCP request has a status of **In progress**, you can cancel the request in full or partially, by removing just some License IDs from the request.

1. In the admin center, go to the **Billing** > **Your products** page, then select the <a href="https://go.microsoft.com/fwlink/p/?linkid=2244144" target="_blank">Volume licensing</a> tab.
2. In the **Contracts** section, select **View contracts**.
3. On the **Contracts** page, find the Licensing ID. Select the three dots (**More actions**), then select **Track changes**.
4. On the **Track changes** page, select the License IDs for which you want to cancel the COCP request, then select **Cancel request**.
5. In the **Are you sure you would like to cancel this request?** panel, enter a reason for the cancellation, then select **Submit**.

## Related content

[Sign in to the Microsoft 365 admin center (volume licensing)](vl-sign-in.md) (article)<br/>
[Contact volume licensing support](contact-vl-support.md) (article)
