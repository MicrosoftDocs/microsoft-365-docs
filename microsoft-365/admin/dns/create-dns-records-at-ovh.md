---
title: "Connect your DNS records at OVH to Microsoft 365"
f1.keywords:
- CSH
ms.author: nkagole
author: nataliekagole
manager: scotv
ms.date: 02/18/2020
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection:
- Tier2
- scotvorg
- M365-subscription-management
- Adm_O365
- Adm_NonTOC
- Adm_O365_Setup
ms.custom: AdminSurgePortfolio
search.appverid:
- BCS160
- MET150
- MOE150
ms.assetid: 5176feef-36dc-4d84-842f-1f2b5a21ba96
description: "Learn to verify your domain and set up DNS records for email, Skype for Business Online, and other services at OVH for Microsoft."
---

# Connect your DNS records at OVH to Microsoft 365

[Check the Domains FAQ](../setup/domains-faq.yml) if you don't find what you're looking for.

If OVH is your DNS hosting provider, follow the steps in this article to verify your domain and set up DNS records for email, Skype for Business Online, and so on.

After you add these records at OVH, your domain will be set up to work with Microsoft services.

> [!NOTE]
> Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Troubleshoot issues after changing your domain name or DNS records](../get-help-with-domains/find-and-fix-issues.md).

## Add a TXT record for verification

Before you use your domain with Microsoft, we have to make sure that you own it. Your ability to log in to your account at your domain registrar and create the DNS record proves to Microsoft that you own the domain.

> [!NOTE]
> This record is used only to verify that you own your domain; it doesn't affect anything else. You can delete it later, if you like.

1. To get started, go to your domains page in OVH by using [this link](https://www.ovh.com/manager/). You'll be prompted to log in.

    ![OVH login.](../../media/1424cc15-720d-49d1-b99b-8ba63b216238.png)

1. On the dashboard landing page, under **View all my activity**, select the name of the domain that you want edit.

1. Select **DNS zone**.

    ![OVH Select DNS zone.](../../media/45218cbe-f3f8-4804-87f9-cfcef89ea113.png)

1. Select **Add an entry**.

    ![OVH Add an entry.](../../media/13ded54b-9e48-4c98-8e1b-8c4a99633bc0.png)

1. Select **TXT**

    ![OVH select TXT entry.](../../media/3aaa9dae-0b1d-436b-a980-b67a970f31a9.png)

1. In the boxes for the new record, type or copy and paste the values from the following table. To assign a TTL value, choose **Custom** from the drop-down list, and then type the value in the text box.

   |Record type|Sub-domain|TTL|Value|
   |---|---|---|---|
   |TXT|(leave blank)|3600 (seconds)|MS=msxxxxxxxx  <br/> **Note:** This is an example. Use your specific **Destination or Points to Address** value here, from the table.  [How do I find this?](../get-help-with-domains/information-for-dns-records.md)|

1. Select **Next**.

1. Select **Confirm**.

    ![OVH confirm TXT for verification.](../../media/bde45596-9a55-4634-b5e7-16d7cde6e1b8.png)

1. Wait a few minutes before you continue, so that the record you just created can update across the Internet.

Now that you've added the record at your domain registrar's site, you'll go back to Microsoft and request the record. When Microsoft finds the correct TXT record, your domain is verified.

To verify the record in Microsoft 365:

1. In the admin center, go to the **Settings** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834818" target="_blank">**Domains**</a>.

1. On the Domains page, select the domain that you're verifying, and select **Start setup**.

    :::image type="content" source="../../media/dns-IONOS/IONOS-DomainConnects-2.png" alt-text="Select Start setup.":::

1. Select **Continue**.

1. On the **Verify domain** page, select **Verify**.

> [!NOTE]
>  Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Troubleshoot issues after changing your domain name or DNS records](../get-help-with-domains/find-and-fix-issues.md).

## Add an MX record so email for your domain will come to Microsoft

1. To get started, go to your domains page in OVH by using [this link](https://www.ovh.com/manager/). You'll be prompted to log in.

    ![OVH login.](../../media/1424cc15-720d-49d1-b99b-8ba63b216238.png)

1. On the dashboard landing page, under **View all my activity**, select the name of the domain that you want edit.

1. Select **DNS zone**.

    ![OVH Select DNS zone.](../../media/45218cbe-f3f8-4804-87f9-cfcef89ea113.png)

1. Select **Add an entry**.

    ![OVH Add an entry.](../../media/13ded54b-9e48-4c98-8e1b-8c4a99633bc0.png)

1. Select **MX**.

    ![OVH MX record type.](../../media/29b5e54e-440a-41f2-9eb9-3de573922ddf.png)

1. In the boxes for the new record, type or copy and paste the values from the following table. To assign a TTL value, choose **Custom** from the drop-down list, and then type the value in the text box.

    > [!NOTE]
    > By default OVH uses relative notation for the target, which adds the domain name to the end of the target record. To use absolute notation instead, add a dot to the target record as shown in the table below.

   |Sub-domain|TTL|Priority|Target|
   |---|---|---|---|
   |(leave blank)|3600 (seconds)|0  <br/> For more information about priority, see [What is MX priority?](../setup/domains-faq.yml)|\<domain-key\>.mail.protection.outlook.com.  <br/> **Note:** Get your *\<domain-key\>* from your Microsoft account. [How do I find this?](../get-help-with-domains/information-for-dns-records.md)|

    ![OVH MX record for mail.](../../media/6e2f5655-93e2-4620-8f19-c452e7edf8f0.png)

1. Select **Next**.

    ![OVH MX record select Next.](../../media/4db62d07-0dc4-49f6-bd19-2b4a07fd764a.png)

1. Select **Confirm**.

    ![OVH MX record select Confirm.](../../media/090bfb11-a753-4af0-8982-582a4069a169.png)

1. Delete any other MX records in the list on the **DNS zone** page. Select each record and, in the **Actions** column, select the trash-can **Delete** icon.

    ![OVH delete MX record.](../../media/892b328b-7057-4828-b8c5-fe26284dc8c2.png)

1. Select **Confirm**.

## Add the CNAME record required for Microsoft

1. To get started, go to your domains page in OVH by using [this link](https://www.ovh.com/manager/). You'll be prompted to log in.

    ![OVH login.](../../media/1424cc15-720d-49d1-b99b-8ba63b216238.png)

1. On the dashboard landing page, under **View all my activity**, select the name of the domain that you want edit.

1. Select **DNS zone**.

    ![OVH Select DNS zone.](../../media/45218cbe-f3f8-4804-87f9-cfcef89ea113.png)

1. Select **Add an entry**.

    ![OVH Add an entry.](../../media/13ded54b-9e48-4c98-8e1b-8c4a99633bc0.png)

1. Select **CNAME**.

    ![OVH Add CNAME record type.](../../media/33c7ac74-18d7-4ae1-9e27-1c0f9773a3c3.png)

1. In the boxes for the new record, type or copy and paste the values from the first row of the following table. To assign a TTL value, choose **Custom** from the drop-down list, and then type the value in the text box.

   |Sub-domain|TTL|Target|
   |---|---|---|
   |autodiscover|3600 (seconds)|autodiscover.outlook.com.|

    ![OVH CNAME record.](../../media/516938b3-0b12-4736-a631-099e12e189f5.png)

1. Select **Next**.

    ![OVH Add CNAME values and select Next.](../../media/f9481cb1-559d-4da1-9643-9cacb0d80d29.png)

1. Select **Confirm**.

## Add a TXT record for SPF to help prevent email spam

> [!IMPORTANT]
> You cannot have more than one TXT record for SPF for a domain. If your domain has more than one SPF record, you'll get email errors, as well as delivery and spam classification issues. If you already have an SPF record for your domain, don't create a new one for Microsoft. Instead, add the required Microsoft values to the current record so that you have a  *single*  SPF record that includes both sets of values.

1. To get started, go to your domains page in OVH by using [this link](https://www.ovh.com/manager/). You'll be prompted to log in.

    ![OVH login.](../../media/1424cc15-720d-49d1-b99b-8ba63b216238.png)

1. On the dashboard landing page, under **View all my activity**, select the name of the domain that you want edit.

1. Select **DNS zone**.

    ![OVH Select DNS zone.](../../media/45218cbe-f3f8-4804-87f9-cfcef89ea113.png)

1. Select **Add an entry**.

    ![OVH Add an entry.](../../media/13ded54b-9e48-4c98-8e1b-8c4a99633bc0.png)

1. Select **TXT**.

1. In the boxes for the new record, type or copy and paste the following values. To assign a TTL value, choose **Custom** from the drop-down list, and then type the value in the text box.

   |Sub-domain|TTL|Value|
   |---|---|---|
   |(leave blank)|3600 (seconds)|v=spf1 include:spf.protection.outlook.com -all  <br/**Note:** We recommend copying and pasting this entry, so that all of the spacing stays correct.|

    ![OVH Add TXT record for SPF.](../../media/f50466e9-1557-4548-8a39-e98978a5ee2e.png)

1. Select **Next**.

    ![OVH Add TXT record for SPF and select Next.](../../media/7937eb7c-114f-479f-a916-bcbe476d6108.png)

1. Select **Confirm**.

    ![OVH Add TXT record for SPF and Confirm.](../../media/649eefeb-3227-49e3-98a0-1ce19c42fa54.png)

## Advanced option: Skype for Business

Only select this option if your organization uses Skype for Business for online communication services like chat, conference calls, and video calls, in addition to Microsoft Teams. Skype needs 4 records: 2 SRV records for user-to-user communication, and 2 CNAME records to sign-in and connect users to the service.

### Add the two required SRV records

1. To get started, go to your domains page in OVH by using [this link](https://www.ovh.com/manager/). You'll be prompted to log in.

    ![OVH login.](../../media/1424cc15-720d-49d1-b99b-8ba63b216238.png)

1. On the dashboard landing page, under **View all my activity**, select the name of the domain that you want edit.

1. Select **DNS zone**.

    ![OVH Select DNS zone.](../../media/45218cbe-f3f8-4804-87f9-cfcef89ea113.png)

1. Select **Add an entry**.

    ![OVH Add an entry.](../../media/13ded54b-9e48-4c98-8e1b-8c4a99633bc0.png)

1. Select **SRV**.

1. In the boxes for the new record, type or copy and paste the following values. To assign a TTL value, choose **Custom** from the drop-down list, and then type the value in the text box.

   |Sub-domain|TTL (Seconds)|Priority|Weight|Port|Target|
   |---|---|---|---|---|---|
   |_sip._tls|3600 (s.)|100|1|443|sipdir.online.lync.com. **This value MUST end with a period (.)**><br> **Note:** We recommend copying and pasting this entry, so that all of the spacing stays correct.|
   |_sipfederationtls._tcp|3600 (s.)|100|1|5061|sipfed.online.lync.com. **This value MUST end with a period (.)**<br> **Note:** We recommend copying and pasting this entry, so that all of the spacing stays correct.|

1. To add the other SRV record, select **Add another record**, create a record using the values from the next row in the table, and then select **Create records**.

> [!NOTE]
> Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Find and fix issues after adding your domain or DNS records](../get-help-with-domains/find-and-fix-issues.md).

### Add the two required CNAME records for Skype for Business

1. To get started, go to your domains page in OVH by using [this link](https://www.ovh.com/manager/). You'll be prompted to log in.

    ![OVH login.](../../media/1424cc15-720d-49d1-b99b-8ba63b216238.png)

1. On the dashboard landing page, under **View all my activity**, select the name of the domain that you want edit.

1. Select **DNS zone**.

    ![OVH Select DNS zone.](../../media/45218cbe-f3f8-4804-87f9-cfcef89ea113.png)

1. Select **Add an entry**.

    ![OVH Add an entry.](../../media/13ded54b-9e48-4c98-8e1b-8c4a99633bc0.png)

1. Select **CNAME**.

    ![OVH Add CNAME record type.](../../media/33c7ac74-18d7-4ae1-9e27-1c0f9773a3c3.png)

1. In the boxes for the new record, type or copy and paste the values from the first row of the following table. To assign a TTL value, choose **Custom** from the drop-down list, and then type the value in the text box.

   |Sub-domain|TTL|Target|
   |---|---|---|
   |sip|3600 (s.)|sipdir.online.lync.com.  <br/> **This value MUST end with a period (.)**|
   |lyncdiscover|3600 (s.)|webdir.online.lync.com.  <br/> **This value MUST end with a period (.)**|

1. Select **Next**.

    ![OVH Add CNAME values and select Next.](../../media/f9481cb1-559d-4da1-9643-9cacb0d80d29.png)

1. Select **Confirm**.

1. Add the other CNAME record.

> [!NOTE]
> Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Troubleshoot issues after changing your domain name or DNS records](../get-help-with-domains/find-and-fix-issues.md).

## Advanced option: Intune and Mobile Device Management for Microsoft 365

This service helps you secure and remotely manage mobile devices that connect to your domain. Mobile Device Management needs two CNAME records so that users can enroll devices to the service.

### Add the two required CNAME records for Mobile Device Management

1. To get started, go to your domains page in OVH by using [this link](https://www.ovh.com/manager/). You'll be prompted to log in.

    ![OVH login.](../../media/1424cc15-720d-49d1-b99b-8ba63b216238.png)

1. On the dashboard landing page, under **View all my activity**, select the name of the domain that you want edit.

1. Select **DNS zone**.

    ![OVH Select DNS zone.](../../media/45218cbe-f3f8-4804-87f9-cfcef89ea113.png)

1. Select **Add an entry**.

    ![OVH Add an entry.](../../media/13ded54b-9e48-4c98-8e1b-8c4a99633bc0.png)

1. Select **CNAME**.

    ![OVH Add CNAME record type.](../../media/33c7ac74-18d7-4ae1-9e27-1c0f9773a3c3.png)

1. In the boxes for the new record, type or copy and paste the values from the first row of the following table. To assign a TTL value, choose **Custom** from the drop-down list, and then type the value in the text box.

   |Sub-domain|TTL|Target|
   |---|---|---|
   |enterpriseregistration  <br/>|3600 (s.)|enterpriseregistration.windows.net.  <br/> **This value MUST end with a period (.)**|
   |enterpriseenrollment|3600 (s.)|enterpriseenrollment-s.manage.microsoft.com.  <br/> **This value MUST end with a period (.)**|

1. Select **Next**.

    ![OVH Add CNAME values and select Next.](../../media/f9481cb1-559d-4da1-9643-9cacb0d80d29.png)

1. Select **Confirm**.

1. Add the other CNAME record.

> [!NOTE]
> Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Troubleshoot issues after changing your domain name or DNS records](../get-help-with-domains/find-and-fix-issues.md).
