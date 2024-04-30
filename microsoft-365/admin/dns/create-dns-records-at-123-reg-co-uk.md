---
title: "Connect your DNS records at 123-reg.co.uk to Microsoft 365"
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
ms.assetid: 1f2d08c9-2a88-4d2f-ae1f-e39f9e358b17
description: "Learn to verify your domain and set up DNS records for email, Skype for Business Online, and other services at 123-reg.co.uk for Microsoft."
---

# Connect your DNS records at 123-reg.co.uk to Microsoft 365

 **[Check the Domains FAQ](../setup/domains-faq.yml)** if you don't find what you're looking for.

If 123-reg.co.uk is your DNS hosting provider, follow the steps in this article to verify your domain and set up DNS records for email, Skype for Business Online, and so on.

After you add these records at 123-reg.co.uk, your domain will be set up to work with Microsoft services.

> [!NOTE]
> Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Find and fix issues after adding your domain or DNS records](../get-help-with-domains/find-and-fix-issues.md).

## Add a TXT record for verification

Before you use your domain with Microsoft, we have to make sure that you own it. Your ability to log in to your account at your domain registrar and create the DNS record proves to Microsoft that you own the domain.

> [!NOTE]
> This record is used only to verify that you own your domain; it doesn't affect anything else. You can delete it later, if you like.

1. To get started, go to your domains page at 123-reg.co.uk by using [this link](https://www.123-reg.co.uk/secure/cpanel/domain/overview) and follow the prompt to log in.

2. Select **Domains**, and on the Domain name overview page, select the name of the domain that you want to verify or go to Control panel.

   :::image type="content" source="../../media/dns-123reg/123reg-domains-1.png" alt-text="Select the domain you want to verify.":::

3. On the Manage domain page, under **Advanced domain settings**, choose **Manage DNS**.

   :::image type="content" source="../../media/dns-123reg/123reg-domains-2.png" alt-text="Select Manage DNS from the drop-down list.":::

4. On the Manage your DNS page, select the **Advanced DNS** tab.

   :::image type="content" source="../../media/dns-123reg/123reg-domains-3.png" alt-text="Select the Advanced DNS tab.":::

5. In the **Type** box for the new record choose **TXT/SPF** from the drop-down list, and then type or copy and paste the other values from the following table.

    |Hostname|Type|Destination TXT/SPF|
    |---|---|---|
    |@|TXT/SPF|MS=ms*XXXXXXXX* <br/> **Note:** This is an example. Use your specific **Destination or Points to Address** value here, from the table. [How do I find this?](../get-help-with-domains/information-for-dns-records.md)|

   :::image type="content" source="../../media/dns-123reg/123reg-domains-TypeTXTSPF.png" alt-text="Select the TXT/SPF type from the drop-down list, and fill in the values.":::

6. Select **Add**.

   :::image type="content" source="../../media/dns-123reg/123reg-domains-TXTSPF-Add.png" alt-text="Screenshot of where you select Add to add a domain verification TXT record.":::

   Wait a few minutes before you continue, so that the record you just created can update across the Internet.

Now that you've added the record at your domain registrar's site, you'll go back to Microsoft and request a search for the record. When Microsoft finds the correct TXT record, your domain is verified.

To verify the record in Microsoft 365:

1. In the admin center, go to the **Settings** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834818" target="_blank">**Domains**</a>.

1. On the Domains page, select the domain that you're verifying, and select **Start setup**.

    :::image type="content" source="../../media/dns-IONOS/IONOS-DomainConnects-2.png" alt-text="Select Start setup.":::

1. Select **Continue**.

1. On the **Verify domain** page, select **Verify**.

> [!NOTE]
> Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Troubleshoot issues after changing your domain name or DNS records](../get-help-with-domains/find-and-fix-issues.md).

## Add an MX record so email for your domain will come to Microsoft

1. To get started, go to your domains page at 123-reg.co.uk by using [this link](https://www.123-reg.co.uk/secure/cpanel/domain/overview). You'll be prompted to log in first.

2. On the Domain name overview page, select the name of the domain that you want to edit.

   :::image type="content" source="../../media/dns-123reg/123reg-domains-1.png" alt-text="Select the name of the domain you want to edit.":::

3. On the Manage domain page, under **Advanced domain settings**, choose **Manage DNS**.

   :::image type="content" source="../../media/dns-123reg/123reg-domains-2.png" alt-text="Select Manage DNS from the drop-down list.":::

4. On the Manage your DNS page, select the **Advanced DNS** tab.

   :::image type="content" source="../../media/dns-123reg/123reg-domains-3.png" alt-text="Select the Advanced DNS tab.":::

5. In the **Type** box for the new record choose **MX** from the drop-down list, and then type or copy and paste the other values from the following table.

    |Hostname|Type|Priority|Destination MX|
    |---|---|---|---|
    |@|MX|1 <br/> For more information about priority, see [What is MX priority?](../setup/domains-faq.yml)|*\<domain-key\>*.mail.protection.outlook.com. <br/> **This value MUST end with a period (.)** <br/> **Note:** Get your \<domain-key\> from your Microsoft account. [How do I find this?](../get-help-with-domains/information-for-dns-records.md)|

   :::image type="content" source="../../media/dns-123reg/123reg-domains-MX.png" alt-text="Select the MX type from the drop-down list, and fill in the values.":::

6. Select **Add**.

   :::image type="content" source="../../media/dns-123reg/123reg-domains-MX-Add.png" alt-text="Screenshot of where you select Add to add an MX record.":::

7. If there are any other MX records, remove each one by selecting the **Delete (trash can)** icon for that record.

   :::image type="content" source="../../media/dns-123reg/123reg-domains-MX-delete.png" alt-text="Select Delete (trash can).":::

## Add the CNAME record required for Microsoft

1. To get started, go to your domains page at 123-reg.co.uk by using [this link](https://www.123-reg.co.uk/secure/cpanel/domain/overview). You'll be prompted to log in first.

2. On the Domain name overview page, select the name of the domain that you want to edit.

   :::image type="content" source="../../media/dns-123reg/123reg-domains-1.png" alt-text="Select the name of the domain you want to edit.":::

3. On the Manage domain page, under **Advanced domain settings**, choose **Manage DNS**.

   :::image type="content" source="../../media/dns-123reg/123reg-domains-2.png" alt-text="Select Manage DNS from the drop-down list.":::

4. On the Manage your DNS page, select the **Advanced DNS** tab.

   :::image type="content" source="../../media/dns-123reg/123reg-domains-3.png" alt-text="Select the Advanced DNS tab.":::

5. Add the CNAME record.

    In the **Type** box for the new record choose **CNAME** from the drop-down list, and then type or copy and paste the other values from the following table.

    |Hostname|Type|Destination CNAME|
    |---|---|---|
    |autodiscover|CNAME|autodiscover.outlook.com. <br/> **This value MUST end with a period (.)**|

   :::image type="content" source="../../media/dns-123reg/123reg-domains-CNAME.png" alt-text="Select the CNAME type from the drop-down list, and fill in the values.":::

6. Select **Add**.

   :::image type="content" source="../../media/dns-123reg/123reg-domains-CNAME-Add.png" alt-text="Screenshot of where you select Add to add a CNAME record.":::

## Add a TXT record for SPF to help prevent email spam

> [!IMPORTANT]
> You cannot have more than one TXT record for SPF for a domain. If your domain has more than one SPF record, you'll get email errors, as well as delivery and spam classification issues. If you already have an SPF record for your domain, don't create a new one for Microsfot. Instead, add the required Microsoft values to the current record so that you have a *single* SPF record that includes both sets of values. Need examples? Check out these [External Domain Name System records for Microsoft](../../enterprise/external-domain-name-system-records.md). To validate your SPF record, you can use one of these [SPF validation tools](../setup/domains-faq.yml).

1. To get started, go to your domains page at 123-reg.co.uk by using [this link](https://www.123-reg.co.uk/secure/cpanel/domain/overview). You'll be prompted to log in first.

2. On the Domain name overview page, select the name of the domain that you want to edit.

   :::image type="content" source="../../media/dns-123reg/123reg-domains-1.png" alt-text="Select the name of the domain you want to edit.":::

3. On the Manage domain page, under **Advanced domain settings**, choose **Manage DNS**.

   :::image type="content" source="../../media/dns-123reg/123reg-domains-2.png" alt-text="Select Manage DNS from the drop-down list.":::

4. On the Manage your DNS page, select the **Advanced DNS** tab.

   :::image type="content" source="../../media/dns-123reg/123reg-domains-3.png" alt-text="Select the Advanced DNS tab.":::

5. In the **Type** box for the new record choose **TXT/SPF** from the drop-down list, and then type or copy and paste the other values from the following table.

    |Hostname|Type|Destination TXT/SPF|
    |---|---|---|
    |@|TXT/SPF|v=spf1 include:spf.protection.outlook.com -all <br/> **Note:** We recommend copying and pasting this entry, so that all of the spacing stays correct.|

   :::image type="content" source="../../media/dns-123reg/123reg-domains-TypeTXTSPF.png" alt-text="Select the TXT/SPF type from the drop-down list, and fill in the values.":::

6. Select **Add**.

## Advanced option: Skype for Business

Only select this option if your organization uses Skype for Business for online communication services like chat, conference calls, and video calls, in addition to Microsoft Teams. Skype needs 4 records: 2 SRV records for user-to-user communication, and 2 CNAME records to sign-in and connect users to the service.

### Add the two required SRV records

1. To get started, go to your domains page at 123-reg.co.uk by using [this link](https://www.123-reg.co.uk/secure/cpanel/domain/overview). You'll be prompted to log in first.

2. On the Domain name overview page, select the name of the domain that you want to edit.

   :::image type="content" source="../../media/dns-123reg/123reg-domains-1.png" alt-text="Select the name of the domain you want to edit.":::

3. On the Manage domain page, under **Advanced domain settings**, choose **Manage DNS**.

   :::image type="content" source="../../media/dns-123reg/123reg-domains-2.png" alt-text="Select Manage DNS from the drop-down list.":::

4. On the Manage your DNS page, select the **Advanced DNS** tab.

   :::image type="content" source="../../media/dns-123reg/123reg-domains-3.png" alt-text="Select the Advanced DNS tab.":::

5. Add the first of the two SRV records:

   In the **Type** box for the new record choose **SRV** from the drop-down list, and then type or copy and paste the other values from the following table.

    |Hostname|Type|Priority|TTL|Destination SRV|
    |---|---|---|---|---|
    |_sip._tls|SRV|100|3600|1 443 sipdir.online.lync.com. **This value MUST end with a period (.)** <br/> **Note:** We recommend copying and pasting this entry, so that all of the spacing stays correct.|
    |_sipfederationtls._tcp|SRV|100|3600|1 5061 sipfed.online.lync.com. **This value MUST end with a period (.)** <br/> **Note:** We recommend copying and pasting this entry, so that all of the spacing stays correct.|

   :::image type="content" source="../../media/dns-123reg/123reg-domains-TypeTXTSPF.png" alt-text="Select the TXT/SPF type from the drop-down list, and fill in the values.":::

6. Select **Add**.

   :::image type="content" source="../../media/dns-123reg/123reg-domains-TXTSPF-Add.png" alt-text="Screenshot of where you select Add to add an SRV record.":::

7. Add the other SRV record.

> [!NOTE]
> Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Find and fix issues after adding your domain or DNS records](../get-help-with-domains/find-and-fix-issues.md).

### Add the two required CNAME records for Skype for Business

1. To get started, go to your domains page at 123-reg.co.uk by using [this link](https://www.123-reg.co.uk/secure/cpanel/domain/overview). You'll be prompted to log in first.

1. On the Domain name overview page, select the name of the domain that you want to edit.

   :::image type="content" source="../../media/dns-123reg/123reg-domains-1.png" alt-text="Select the name of the domain you want to edit.":::

1. On the Manage domain page, under **Advanced domain settings**, choose **Manage DNS**.

   :::image type="content" source="../../media/dns-123reg/123reg-domains-2.png" alt-text="Select Manage DNS from the drop-down list.":::

1. On the Manage your DNS page, select the **Advanced DNS** tab.

   :::image type="content" source="../../media/dns-123reg/123reg-domains-3.png" alt-text="Select the Advanced DNS tab.":::

1. Add the first CNAME record.

    In the **Type** box for the new record choose **CNAME** from the drop-down list, and then type or copy and paste the other values from the following table.

    |Hostname|Type|Destination CNAME|
    |---|---|---|
    |sip|CNAME|sipdir.online.lync.com. <br/> **This value MUST end with a period (.)**|
    |lyncdiscover|CNAME|webdir.online.lync.com. <br/> **This value MUST end with a period (.)**|

   :::image type="content" source="../../media/dns-123reg/123reg-domains-CNAME.png" alt-text="Select the CNAME type from the drop-down list, and fill in the values.":::

1. Select **Add**.

   :::image type="content" source="../../media/dns-123reg/123reg-domains-CNAME-Add.png" alt-text="Screenshot of where you select Add to add CNAME records for Skype for Business.":::

1. Add the other CNAME record.

> [!NOTE]
> Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Troubleshoot issues after changing your domain name or DNS records](../get-help-with-domains/find-and-fix-issues.md).

## Advanced option: Intune and Mobile Device Management for Microsoft 365

This service helps you secure and remotely manage mobile devices that connect to your domain. Mobile Device Management needs two CNAME records so that users can enroll devices to the service.

### Add the two required CNAME records for Mobile Device Management

1. To get started, go to your domains page at 123-reg.co.uk by using [this link](https://www.123-reg.co.uk/secure/cpanel/domain/overview). You'll be prompted to log in first.

1. On the Domain name overview page, select the name of the domain that you want to edit.

   :::image type="content" source="../../media/dns-123reg/123reg-domains-1.png" alt-text="Select the name of the domain you want to edit.":::

1. On the Manage domain page, under **Advanced domain settings**, choose **Manage DNS**.

   :::image type="content" source="../../media/dns-123reg/123reg-domains-2.png" alt-text="Select Manage DNS from the drop-down list.":::

1. On the Manage your DNS page, select the **Advanced DNS** tab.

   :::image type="content" source="../../media/dns-123reg/123reg-domains-3.png" alt-text="Select the Advanced DNS tab.":::

1. Add the first CNAME record.

    In the **Type** box for the new record choose **CNAME** from the drop-down list, and then type or copy and paste the other values from the following table.

   |Hostname|Type|Destination CNAME|
   |---|---|---|
   |enterpriseregistration|CNAME|enterpriseregistration.windows.net. <br/> **This value MUST end with a period (.)**|
   |enterpriseenrollment|CNAME|enterpriseenrollment.manage.microsoft.com. <br/> **This value MUST end with a period (.)**|

   :::image type="content" source="../../media/dns-123reg/123reg-domains-CNAME.png" alt-text="Select the CNAME type from the drop-down list, and fill in the values.":::

1. Select **Add**.

   :::image type="content" source="../../media/dns-123reg/123reg-domains-CNAME-Add.png" alt-text="Screenshot of where you select Add to add CNAME records for Mobile Device Management.":::

1. Add the other CNAME record.

> [!NOTE]
> Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Troubleshoot issues after changing your domain name or DNS records](../get-help-with-domains/find-and-fix-issues.md).
