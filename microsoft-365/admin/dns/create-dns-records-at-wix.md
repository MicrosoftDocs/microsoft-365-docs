---
title: "Connect your DNS records at Wix to Microsoft 365"
f1.keywords:
- CSH
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 05/30/2024
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
ms.assetid: 7173c635-58b3-400f-95e0-97abe915565e
description: "Learn to verify your domain and set up DNS records for email, Skype for Business Online, and other services at Wix for Microsoft."
---

# Connect your DNS records at Wix to Microsoft 365

**[Check the Domains FAQ](../setup/domains-faq.yml)** if you don't find what you're looking for.

If Wix is your DNS hosting provider, follow the steps in this article to verify your domain and set up DNS records for email, Skype for Business Online, and so on.

After you add these records at Wix, your domain will be set up to work with Microsoft services.

> [!NOTE]
> Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Troubleshoot issues after changing your domain name or DNS records](../get-help-with-domains/find-and-fix-issues.md).

[!INCLUDE [How to get tech support for SMB](../../includes/smb-how-to-get-tech-support.md)]

## Add a TXT record for verification

Before you use your domain with Microsoft, we have to make sure you own it. Your ability to log in to your account at your domain registrar and create the DNS record proves to Microsoft that you own the domain.

> [!NOTE]
> This record is used only to verify that you own your domain; it doesn't affect anything else. You can delete it later if you like.

> [!NOTE]
> WIX does not support DNS entries for subdomains.

1. To get started, go to your domains page at Wix by using [this link](https://premium.wix.com/wix/api/mpContainerStaticController#/domains?referralAdditionalInfo=account). You're prompted to log in first.

2. Select **Domains** \> **...**, and then select **Manage DNS Records** from the dropdown list.

   :::image type="content" source="../../media/dns-wix/wix-domains-1.png" alt-text="Select Manage DNS Records from the drop-down list.":::

3. Select **+ Add Record** in the **TXT (Text)** row of the DNS editor.

   :::image type="content" source="../../media/dns-wix/wix-domains-TXT-add-record.png" alt-text="Screenshot of where you select Add record to add a domain verification TXT record.":::

4. In the boxes for the new record, type or copy and paste the values from the following table.

   |Host Name|TXT Value|TTL|
   |---|---|---|
   |Automatically populated (leave blank)|MS=ms*XXXXXXXX* <br/> **Note:** This is an example. Use your specific **Destination or Points to Address** value here, from the table. [How do I find this?](../get-help-with-domains/information-for-dns-records.md)|One Hour|

5. Select**Save**.

   :::image type="content" source="../../media/dns-wix/wix-domains-txt-save.png" alt-text="Screenshot of where you select Save to add domain verification TXT record.":::

   Wait a few minutes before you continue, so that the record you created can update across the Internet.


Now that you added the record at your domain registrar's site, go back to Microsoft and request the record. When Microsoft finds the correct TXT record, your domain is verified.

To verify the record in Microsoft 365:

1. In the admin center, go to the **Settings** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834818" target="_blank">**Domains**</a>.

1. On the Domains page, select the domain that you're verifying, and select **Start setup**.

    :::image type="content" source="../../media/dns-IONOS/IONOS-DomainConnects-2.png" alt-text="Select Start setup.":::

1. Select **Continue**.

1. On the **Verify domain** page, select **Verify**.

> [!NOTE]
> Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Troubleshoot issues after changing your domain name or DNS records](../get-help-with-domains/find-and-fix-issues.md).

## Add an MX record so email for your domain comes to Microsoft

1. To get started, go to your domains page at Wix by using [this link](https://premium.wix.com/wix/api/mpContainerStaticController#/domains?referralAdditionalInfo=account). You're prompted to log in first.

1. Select **Domains** \> **...**, and then select **Manage DNS Records** from the dropdown list.

   :::image type="content" source="../../media/dns-wix/wix-domains-1.png" alt-text="Select Manage DNS Records from the drop-down list.":::

1. Under **MX (Mail exchange)**, select **Edit MX Records**.

   :::image type="content" source="../../media/dns-wix/wix-domains-edit-mx-records.png" alt-text="Select Edit MX Records.":::

1. Choose **Other** from the drop-down list, and select **+ Add record**.

   :::image type="content" source="../../media/dns-wix/wix-domains-other.png" alt-text="Select Other from the drop-down list.":::

1. In the boxes for the new record, type or copy and paste the values from the following table:

   |Host Name|Points to|Priority|TTL|
   |---|---|---|---|
   |Automatically populated|*\<domain-key\>*.mail.protection.outlook.com <br/> **Note:** Get your *\<domain-key\>* from your Microsoft account.  [How do I find this?](../get-help-with-domains/information-for-dns-records.md)|0 <br/> For more information about priority, see [What is MX priority?](../setup/domains-faq.yml)|One Hour|

1. If there are any other MX records listed, delete each of them.

  :::image type="content" source="../../media/dns-wix/wix-domains-mx-delete.png" alt-text="Select Delete.":::

1. Select **Save**.

## Add the CNAME record required for Microsoft

1. To get started, go to your domains page at Wix by using [this link](https://premium.wix.com/wix/api/mpContainerStaticController#/domains?referralAdditionalInfo=account). You're prompted to log in first.

2. Select **Domains** \> **...**, and then select **Manage DNS Records** from the dropdown list.

   :::image type="content" source="../../media/dns-wix/wix-domains-1.png" alt-text="Select Manage DNS Records from the drop-down list.":::

3. Select **+ Add Record** in the **CNAME (Aliases)** row of the DNS editor for the CNAME record.

   :::image type="content" source="../../media/dns-wix/wix-domains-cname-add-record.png" alt-text="Screenshot of where you select Add a record to add a CNAME record.":::

4. In the boxes for the new record, type or copy and paste the values from the following table:

   |Host Name|Value|TTL|
   |---|---|---|
   |autodiscover|autodiscover.outlook.com|One Hour|

5. Select **Save**.

   :::image type="content" source="../../media/dns-wix/wix-domains-cname-save.png" alt-text="Screenshot of where you select Save to add a CNAME record.":::

   Wait a few minutes before you continue, so that the record you created can update across the Internet.

## Add a TXT record for SPF to help prevent email spam

> [!IMPORTANT]
> You cannot have more than one TXT record for SPF for a domain. If your domain has more than one SPF record, you'll get email errors, as well as delivery and spam classification issues. If you already have an SPF record for your domain, don't create a new one for Microsoft. Instead, add the required Microsoft values to the current record so that you have a *single* SPF record that includes both sets of values.

1. To get started, go to your domains page at Wix by using [this link](https://premium.wix.com/wix/api/mpContainerStaticController#/domains?referralAdditionalInfo=account). You're prompted to log in first.

2. Select **Domains** \> **...**, and then select **Manage DNS Records** from the dropdown list.

   :::image type="content" source="../../media/dns-wix/wix-domains-1.png" alt-text="Select Manage DNS Records from the drop-down list.":::

3. Select **+ Add Record** in the **TXT (Text)** row of the DNS editor.

   :::image type="content" source="../../media/dns-wix/wix-domains-TXT-add-record.png" alt-text="Screenshot of where you select Add a record to add an SPF TXT record.":::

   **Note**: Wix provides an SPF row in the DNS editor. Ignore that row and use the **TXT (Text)** row to enter the SPF values below.

4. In the boxes for the new record, type or copy and paste the values from the following table:

   |Host Name|Value|TTL|
   |---|---|---|
   |[leave this blank]|v=spf1 include:spf.protection.outlook.com -all <br/> **Note:** We recommend copying and pasting this entry, so that all of the spacing stays correct.|One Hour|

5. Select **Save**.

   :::image type="content" source="../../media/dns-wix/wix-domains-txt-save.png" alt-text="Screenshot of where you select Save to add an SPF TXT record.":::

   Wait a few minutes before you continue, so that the record you created can update across the Internet.

## Advanced option: Skype for Business

Only select this option if your organization uses Skype for Business for online communication services like chat, conference calls, and video calls, in addition to Microsoft Teams. Skype needs four records: two SRV records for user-to-user communication, and two CNAME records to sign-in and connect users to the service.

### Add the two required SRV records

1. To get started, go to your domains page at Wix by using [this link](https://premium.wix.com/wix/api/mpContainerStaticController#/domains?referralAdditionalInfo=account). You're prompted to log in first.

1. Select **Domains** \> **...**, and then select **Manage DNS Records** from the dropdown list.

   :::image type="content" source="../../media/dns-wix/wix-domains-1.png" alt-text="Select Manage DNS Records from the drop-down list.":::

1. Select **+ Add Record** in the **SRV** row of the DNS editor.

   :::image type="content" source="../../media/dns-wix/wix-domains-srv-add-record.png" alt-text="Screenshot of where you select Add a record to add an SRV record.":::

1. In the boxes for the new record, type or copy and paste the values from the first row in the table:

   |Service|Protocol|Host name|Weight|Port|Target|Priority|TTL|
   |---|---|---|---|---|---|---|---|
   |sip|tls|Automatically populated|1|443|sipdir.online.lync.com|100|One Hour|
   |sipfed|tcp|Automatically populated|1|5061|sipfed.online.lync.com|100|One Hour|

1. Select **Save**.

   :::image type="content" source="../../media/dns-wix/wix-domains-srv-save.png" alt-text="Screenshot of where you select Save to add a SRV record.":::

1. Add the other SRV record by copying the values from the second row of the table.

> [!NOTE]
> Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Find and fix issues after adding your domain or DNS records](../get-help-with-domains/find-and-fix-issues.md).

### Add the two required CNAME records for Skype for Business

1. Select **+ Add another** in the **CNAME (Aliases)** row of the DNS editor, and enter the values from the first row in the following table.

   |Type|Host|Value|TTL|
   |---|---|---|---|
   |CNAME|sip|sipdir.online.lync.com. <br/> **This value MUST end with a period (.)**|One Hour|
   |CNAME|lyncdiscover|webdir.online.lync.com. <br/> **This value MUST end with a period (.)**|One Hour|

1. Select **Save**.

   :::image type="content" source="../../media/dns-wix/wix-domains-cname-save.png" alt-text="Screenshot of where you select Save to add CNAME records for Skype for Business.":::

1. Add the other CNAME record by copying the values from the second row of the table.

> [!NOTE]
> Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Troubleshoot issues after changing your domain name or DNS records](../get-help-with-domains/find-and-fix-issues.md).

## Advanced option: Intune and Mobile Device Management for Microsoft 365

This service helps you secure and remotely manage mobile devices that connect to your domain. Mobile Device Management needs two CNAME records so that users can enroll devices to the service.

### Add the two required CNAME records for Mobile Device Management

1. To get started, go to your domains page at Wix by using [this link](https://premium.wix.com/wix/api/mpContainerStaticController#/domains?referralAdditionalInfo=account). You're prompted to log in first.

1. Select **Domains** \> **...**, and then select **Manage DNS Records** from the dropdown list.

   :::image type="content" source="../../media/dns-wix/wix-domains-1.png" alt-text="Select Manage DNS Records from the drop-down list.":::

1. Select **+ Add Record** in the **CNAME (Aliases)** row of the DNS editor for the CNAME record.

   :::image type="content" source="../../media/dns-wix/wix-domains-cname-add-record.png" alt-text="Screenshot of where you select Add a record to add CNAME records for Mobile Device Management.":::

1. Enter the values from the first row in the following table.

    |Type|Host|Value|TTL|
    |---|---|---|---|
    |CNAME|enterpriseregistration|enterpriseregistration.windows.net. <br/> **This value MUST end with a period (.)**|One Hour|
    |CNAME|enterpriseenrollment|enterpriseenrollment.manage.microsoft.com. <br/> **This value MUST end with a period (.)**|One Hour|

1. Select **Save**.

   :::image type="content" source="../../media/dns-wix/wix-domains-cname-save.png" alt-text="Screenshot of where you select Save to add CNAME records for Mobile Device Management.":::

1. Add the other CNAME record by copying the values from the second row of the table.

> [!NOTE]
> Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Troubleshoot issues after changing your domain name or DNS records](../get-help-with-domains/find-and-fix-issues.md).
