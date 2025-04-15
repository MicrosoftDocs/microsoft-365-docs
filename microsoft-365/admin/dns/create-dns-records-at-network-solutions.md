---
title: "Connect your DNS records at Network Solutions to Microsoft 365"
f1.keywords:
- CSH
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 08/28/2024
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-business
ms.subservice: m365-domains
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
ms.assetid: 1dc55f9f-5309-450f-acc3-b2b4119c8be3
description: "Learn to verify your domain and set up DNS records for email, Skype for Business Online, and other services at Network Solutions for Microsoft."
---

# Connect your DNS records at Network Solutions to Microsoft 365

 **[Check the Domains FAQ](../setup/domains-faq.yml)** if you don't find what you're looking for.

If Network Solutions is your DNS hosting provider, follow the steps in this article to verify your domain and set up DNS records for email, Skype for Business Online, and so on.

After you add these records at Network Solutions, your domain will be set up to work with Microsoft services.

> [!NOTE]
> Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Troubleshoot issues after changing your domain name or DNS records](../get-help-with-domains/find-and-fix-issues.md).

[!INCLUDE [How to get tech support for SMB](../../includes/smb-how-to-get-tech-support.md)]

## Add a TXT record for verification

Before you use your domain with Microsoft, we have to make sure that you own it. Your ability to log in to your account at your domain registrar and create the DNS record proves to Microsoft that you own the domain.

> [!NOTE]
> This record is used only to verify that you own your domain; it doesn't affect anything else. You can delete it later, if you like.

1. To get started, go to your domains page at Network Solutions by using [this link](https://www.networksolutions.com/manage-it). You'll be prompted to log in.

1. On the landing page, select **Domain Names**.

1. Select the check box next to the domain that you want to modify.

1. Under **Actions**, select the three dots, and then select **Manage** from the drop-down list.

   :::image type="content" source="../../media/dns-networksolutions/networksolutions-domains-1.png" alt-text="Select Manage from the drop-down list.":::

1. Scroll down to select **Advanced Tools**, and next to **Advanced DNS Records**, select **MANAGE**.

   :::image type="content" source="../../media/dns-networksolutions/networksolutions-domains-2.png" alt-text="Next to Advanced DNS records, select MANAGE.":::

   You might have to select **Continue** to get to the Manage Advanced DNS Records page.

1. On the Manage Advanced DNS Records page, select **+ADD RECORD**.

   :::image type="content" source="../../media/dns-networksolutions/networksolutions-domains-add-record.png" alt-text="Select +ADD RECORD.":::

1. Under **Type**, select **TXT** from the drop-down list.

1. In the boxes for the new record, type or copy and paste the values in the following table.

   |Refers to|TXT Value|TTL|
   |---|---|---|
   |@  <br/> (The system will change this value to **@ (None)** when you save the record.)|MS=ms *XXXXXXXX*  <br/> **Note:** This is an example. Use your specific **Destination or Points to Address** value here, from the table.  [How do I find this?](../get-help-with-domains/information-for-dns-records.md)|3600|

1. Select **ADD**.

   :::image type="content" source="../../media/dns-networksolutions/networksolutions-domains-add.png" alt-text="Screenshot of where you select Add to add a domain verification TXT record.":::

   > [!NOTE]
   > Select **Classic View** in the upper right to view the TXT record you created.

   Wait a few minutes before you continue, so that the record you just created can update across the Internet.

Now that you've added the record at your domain registrar's site, you'll go back to Microsoft and request the record. When Microsoft finds the correct TXT record, your domain is verified.

To verify the record in Microsoft 365:

1. In the admin center, go to the **Settings** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834818" target="_blank">**Domains**</a>.

1. On the Domains page, select the domain that you're verifying, and select **Start setup**.

   :::image type="content" source="../../media/dns-IONOS/IONOS-DomainConnects-2.png" alt-text="Select Start setup.":::

1. Select **Continue**.

1. On the **Verify domain** page, select **Verify**.

> [!NOTE]
> Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Troubleshoot issues after changing your domain name or DNS records](../get-help-with-domains/find-and-fix-issues.md).

## Add an MX record so email for your domain will come to Microsoft

1. To get started, go to your domains page at Network Solutions by using [this link](https://www.networksolutions.com/manage-it). You'll be prompted to log in.

1. On the landing page, select **Domain Names**.

1. Select the check box next to the domain that you want to modify.

1. Under **Actions**, select the three dots, and then select **Manage** in the drop-down list.

   :::image type="content" source="../../media/dns-networksolutions/networksolutions-domains-1.png" alt-text="Select Manage from the drop-down list.":::

1. Scroll down to select **Advanced Tools**, and next to **Advanced DNS Records**, select **MANAGE**.

   :::image type="content" source="../../media/dns-networksolutions/networksolutions-domains-2.png" alt-text="Next to Advanced DNS records, select MANAGE.":::

   You might have to select **Continue** to get to the Manage Advanced DNS Records page.

1. On the Manage Advanced DNS Records page, select **+ADD RECORD**.

   :::image type="content" source="../../media/dns-networksolutions/networksolutions-domains-add-record.png" alt-text="Select +ADD RECORD.":::

1. Under **Type**, select **MX** from the drop-down list.

1. In the boxes for the new record, type or copy and paste the values from the following table.

   |Refers to|Mail server|Priority|TTL|
   |---|---|---|---|
   |@|*\<domain-key\>*.mail.protection.outlook.com  <br/> **This value CANNOT end with a period (.)** <br/> **Note:** Get your *\<domain-key\>* from your Microsoft account. [How do I find this?](../get-help-with-domains/information-for-dns-records.md)|0  <br/> For more information about priority, see [What is MX priority?](../setup/domains-faq.yml)|1 Hour|

1. Select **ADD**.

   :::image type="content" source="../../media/dns-networksolutions/networksolutions-domains-MX-add.png" alt-text="Screenshot of where you select Add to add an MX record.":::

   > [!NOTE]
   > Select **Classic View** in the upper right to view the TXT record you created.

1. If there are any other MX records, delete all of them by selecting the edit tool, and then **Delete** for each record.

   :::image type="content" source="../../media/dns-networksolutions/networksolutions-domains-edit.png" alt-text="Select the Edit tool.":::

## Add the CNAME record required for Microsoft

1. To get started, go to your domains page at Network Solutions by using [this link](https://www.networksolutions.com/manage-it). You'll be prompted to log in.

1. On the landing page, select **Domain Names**.

1. Select the check box next to the domain that you want to modify.

1. Under **Actions**, select the three dots, and then select **Manage** in the drop-down list.

   :::image type="content" source="../../media/dns-networksolutions/networksolutions-domains-1.png" alt-text="Select Manage from the drop-down list.":::

1. Select **Advanced Tools**, and next to **Advanced DNS Records**, select **MANAGE**.

   :::image type="content" source="../../media/dns-networksolutions/networksolutions-domains-2.png" alt-text="Next to Advanced DNS records, select MANAGE.":::

   You might have to select **Continue** to get to the Manage Advanced DNS Records page.

1. On the Manage Advanced DNS Records page, select **+ADD RECORD**.

   :::image type="content" source="../../media/dns-networksolutions/networksolutions-domains-add-record.png" alt-text="Select +ADD RECORD.":::

1. Under **Type**, select **CNAME** from the drop-down list.

   :::image type="content" source="../../media/dns-networksolutions/networksolutions-domains-cname.png" alt-text="Select CNAME type from the drop-down list.":::

1. In the boxes for the CNAME record, type or copy and paste the values from the following table.

   |Refers to|Host Name|Alias to|TTL|
   |---|---|---|---|
   |Other Host|autodiscover|autodiscover.outlook.com **This value CANNOT end with a period (.)** <br/> 1 Hour|

   :::image type="content" source="../../media/dns-networksolutions/networksolutions-domains-cname-values.png" alt-text="Type or copy and paste the CNAME values from the table into the window.":::

1. Select **ADD**.

   > [!NOTE]
   > Select **Classic View** in the upper right to view the record you created.

## Add a TXT record for SPF to help prevent email spam

> [!IMPORTANT]
> You cannot have more than one TXT record for SPF for a domain. If your domain has more than one SPF record, you'll get email errors, as well as delivery and spam classification issues. If you already have an SPF record for your domain, don't create a new one for Microsoft. Instead, add the required Microsoft values to the current record so that you have a  *single*  SPF record that includes both sets of values.

1. To get started, go to your domains page at Network Solutions by using [this link](https://www.networksolutions.com/manage-it). You'll be prompted to log in.

1. On the landing page, select **Domain Names**.

1. Select the check box next to the domain that you want to modify.

1. Under **Actions**, select the three dots, and then select **Manage** in the drop-down list.

   :::image type="content" source="../../media/dns-networksolutions/networksolutions-domains-1.png" alt-text="Select Manage from the drop-down list.":::

1. Select **Advanced Tools**, and next to **Advanced DNS Records**, select **MANAGE**.

   :::image type="content" source="../../media/dns-networksolutions/networksolutions-domains-2.png" alt-text="Next to Advanced DNS records, select MANAGE.":::

   You might have to select **Continue** to get to the Manage Advanced DNS Records page.

1. On the Manage Advanced DNS Records page, select **+ADD RECORD**.

   :::image type="content" source="../../media/dns-networksolutions/networksolutions-domains-add-record.png" alt-text="Select +ADD RECORD.":::

1. Under **Type**, select **TXT** from the drop-down list.

   :::image type="content" source="../../media/dns-networksolutions/networksolutions-domains-TXT.png" alt-text="Select TXT from the Type drop-down list.":::

1. In the boxes for the new record, type or copy and paste the following values.

   |Refers to|TXT Value|TTL|
   |---|---|---|
   |@  <br/> (The system will change this value to **@ (None)** when you save the record.)|v=spf1 include:spf.protection.outlook.com -all  <br/> **Note:** We recommend copying and pasting this entry, so that all of the spacing stays correct.|1 Hour|

1. Select **ADD**.

   :::image type="content" source="../../media/dns-networksolutions/networksolutions-domains-add.png" alt-text="Screenshot of where you select Add to add an SPF TXT record.":::

   > [!NOTE]
   > Select **Classic View** in the upper right to view the record you created.

## Advanced option: Skype for Business

Only select this option if your organization uses Skype for Business for online communication services like chat, conference calls, and video calls, in addition to Microsoft Teams. Skype needs 4 records: 2 SRV records for user-to-user communication, and 2 CNAME records to sign-in and connect users to the service.

### Add the two required SRV records

1. To get started, go to your domains page at Network Solutions by using [this link](https://www.networksolutions.com/manage-it). You'll be prompted to log in.

1. On the landing page, select **Domain Names**.

1. Select the check box next to the domain that you want to modify.

1. Under **Actions**, select the three dots, and then select **Manage** in the drop-down list.

   :::image type="content" source="../../media/dns-networksolutions/networksolutions-domains-1.png" alt-text="Select Manage from the drop-down list.":::

1. Select **Advanced Tools**, and next to **Advanced DNS Records**, select **MANAGE**.

   :::image type="content" source="../../media/dns-networksolutions/networksolutions-domains-2.png" alt-text="Next to Advanced DNS records, select MANAGE.":::

   You might have to select **Continue** to get to the Manage Advanced DNS Records page.

1. On the Manage Advanced DNS Records page, select **+ADD RECORD**.

   :::image type="content" source="../../media/dns-networksolutions/networksolutions-domains-add-record.png" alt-text="Select +ADD RECORD.":::

1. Under **Type**, select **SRV** from the drop-down list.

   :::image type="content" source="../../media/dns-networksolutions/networksolutions-domains-srv.png" alt-text="Select SRV from the Type drop-down list.":::

1. In the boxes for the two new records, type or copy and paste the values from the following table.

   (Choose the **Service** and **Protocol** values from the drop-down lists.)

   |Type|Service|Protocol|Weight|Port|Target|Priority|TTL|
   |---|---|---|---|---|---|---|---|
   |SRV|_sip|TLS|100|443|sipdir.online.lync.com  <br/> **This value CANNOT end with a period (.)**|1|1 Hour|
   |SRV|_sipfederationtls|TCP|100|5061|sipfed.online.lync.com  <br/> **This value CANNOT end with a period (.)**|1|1 Hour|

1. Select **ADD**.

   :::image type="content" source="../../media/dns-networksolutions/networksolutions-domains-srv-add.png" alt-text="Screenshot of where you select Add to add an SRV record.":::

   > [!NOTE]
   > Select **Classic View** in the upper right to view the record you created.

1. Add the other SRV record by copying the values from the second row of the table.

> [!NOTE]
> Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Find and fix issues after adding your domain or DNS records](../get-help-with-domains/find-and-fix-issues.md).

### Add the two required CNAME records for Skype for Business

1. To get started, go to your domains page at Network Solutions by using [this link](https://www.networksolutions.com/manage-it). You'll be prompted to log in.

1. On the landing page, select **Domain Names**.

1. Select the check box next to the domain that you want to modify.

1. Under **Actions**, select the three dots, and then select **Manage** in the drop-down list.

   :::image type="content" source="../../media/dns-networksolutions/networksolutions-domains-1.png" alt-text="Select Manage from the drop-down list.":::

1. Select **Advanced Tools**, and next to **Advanced DNS Records**, select **MANAGE**.

   :::image type="content" source="../../media/dns-networksolutions/networksolutions-domains-2.png" alt-text="Next to Advanced DNS records, select MANAGE.":::

   You might have to select **Continue** to get to the Manage Advanced DNS Records page.

1. On the Manage Advanced DNS Records page, select **+ ADD RECORD**.

   :::image type="content" source="../../media/dns-networksolutions/networksolutions-domains-add-record.png" alt-text="Select +ADD RECORD.":::

1. Under **Type**, select **CNAME** from the drop-down list.

   :::image type="content" source="../../media/dns-networksolutions/networksolutions-domains-cname.png" alt-text="Select CNAME type from the drop-down list.":::

1. In the boxes for the CNAME record, type or copy and paste the values from the following table.

   |Type|Refers to|Host Name|Alias to|TTL|
   |---|---|---|---|---|
   |CNAME|Other Host|sip|sipdir.online.lync.com  <br/> **This value CANNOT end with a period (.)**|1 Hour|
   |CNAME|Other Host|lyncdiscover|webdir.online.lync.com  <br/> **This value CANNOT end with a period (.)**|1 Hour|

   :::image type="content" source="../../media/dns-networksolutions/networksolutions-domains-cname-values.png" alt-text="Type or copy and paste the CNAME values from the table into the window.":::

1. Select **ADD**.

   > [!NOTE]
   > Select **Classic View** in the upper right to view the record you created.

1. Add the other CNAME record by copying the values from the second row of the table.

> [!NOTE]
> Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Troubleshoot issues after changing your domain name or DNS records](../get-help-with-domains/find-and-fix-issues.md).

## Advanced option: Intune and Mobile Device Management for Microsoft 365

This service helps you secure and remotely manage mobile devices that connect to your domain. Mobile Device Management needs 2 CNAME records so that users can enroll devices to the service.

### Add the two required CNAME records for Mobile Device Management

1. To get started, go to your domains page at Network Solutions by using [this link](https://www.networksolutions.com/manage-it). You'll be prompted to log in.

1. On the landing page, select **Domain Names**.

1. Select the check box next to the domain that you want to modify.

1. Under **Actions**, select the three dots, and then select **Manage** in the drop-down list.

   :::image type="content" source="../../media/dns-networksolutions/networksolutions-domains-1.png" alt-text="Select Manage from the drop-down list.":::

1. Select **Advanced Tools**, and next to **Advanced DNS Records**, select **MANAGE**.

   :::image type="content" source="../../media/dns-networksolutions/networksolutions-domains-2.png" alt-text="Next to Advanced DNS records, select MANAGE.":::

   You might have to select **Continue** to get to the Manage Advanced DNS Records page.

1. On the Manage Advanced DNS Records page, select **+ADD RECORD**.

   :::image type="content" source="../../media/dns-networksolutions/networksolutions-domains-add-record.png" alt-text="Select +ADD RECORD.":::

1. Under **Type**, select **CNAME** from the drop-down list.

   :::image type="content" source="../../media/dns-networksolutions/networksolutions-domains-cname.png" alt-text="Select CNAME type from the drop-down list.":::

1. In the boxes for the CNAME record, type or copy and paste the values from the following table.

   |Type|Refers to|Host Name|Alias to|TTL|
   |---|---|---|---|---|
   |CNAME|Other Host|enterpriseregistration|enterpriseregistration.windows.net  <br/> **This value CANNOT end with a period (.)**|1 Hour|
   |CNAME|Other Host|enterpriseenrollment|enterpriseenrollment-s.manage.microsoft.com  <br/> **This value CANNOT end with a period (.)**|1 Hour|

   :::image type="content" source="../../media/dns-networksolutions/networksolutions-domains-cname-values.png" alt-text="Type or copy and paste the CNAME values from the table into the window.":::

1. Select **ADD**.

   > [!NOTE]
   > Select **Classic View** in the upper right to view the record you created.

1. Add the other CNAME record by copying the values from the second row of the table.

> [!NOTE]
> Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Troubleshoot issues after changing your domain name or DNS records](../get-help-with-domains/find-and-fix-issues.md).
