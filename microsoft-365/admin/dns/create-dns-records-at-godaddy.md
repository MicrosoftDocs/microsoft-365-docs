---
title: "Connect your DNS records at GoDaddy to Microsoft 365"
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
ms.custom: 
- AdminSurgePortfolio
search.appverid:
- BCS160
- MET150
- MOE150
ms.assetid: f40a9185-b6d5-4a80-bb31-aa3bb0cab48a
description: "Learn to verify your domain and set up DNS records for email, Microsoft Teams, and other services at GoDaddy for Microsoft."
---

# Connect your DNS records at GoDaddy to Microsoft 365

 **[Check the Domains FAQ](../setup/domains-faq.yml)** if you don't find what you're looking for.

If GoDaddy is your DNS hosting provider, follow the steps in this article to verify your domain and set up DNS records for email, Teams, and so on.

## Before you begin

You have two options for setting up DNS records for your domain:

- [**Use Domain Connect**](#use-domain-connect-to-verify-and-set-up-your-domain) If you haven't set up your domain with another email service provider, use the Domain Connect steps to automatically verify and set up your new domain to use with Microsoft 365.

   OR

- [**Use the manual steps**](#create-dns-records-with-manual-setup) Verify your domain using the manual steps below and choose when and which records to add to your domain registrar. This allows you to set up new MX (mail) records, for example, at your convenience.

## Use Domain Connect to verify and set up your domain

Follow these steps to automatically verify and set up your GoDaddy domain with Microsoft 365:

1. In the Microsoft 365 admin center, select **Settings** > <a href="https://go.microsoft.com/fwlink/p/?linkid=834818" target="_blank">**Domains**</a>, and select the domain you want to set up.

1. Select the three dots (more actions) >  choose **Start setup**.

   :::image type="content" source="../../media/dns-IONOS/IONOS-DomainConnects-2.png" alt-text="Select Start setup.":::

1. On the How do you want to connect your domain? page, select **Continue**.

1. On the Add DNS records page, select **Add DNS records**.

1. On the GoDaddy login page, sign in to your account, and select **Authorize**.

   This completes your domain setup for Microsoft 365.

## Create DNS records with manual setup

After you add these records at GoDaddy, your domain will be set up to work with Microsoft services.

> [!NOTE]
> Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Troubleshoot issues after changing your domain name or DNS records](../get-help-with-domains/find-and-fix-issues.md).

### Add a TXT record for verification

Before you use your domain with Microsoft, we have to make sure that you own it. Your ability to log in to your account at your domain registrar and create the DNS record proves to Microsoft that you own the domain.

> [!NOTE]
> This record is used only to verify that you own your domain; it doesn't affect anything else. You can delete it later, if you like.

1. To get started, go to your domains page at GoDaddy by using [this link](https://account.godaddy.com/products/?go_redirect=disabled).

   If you're prompted to log in, use your login credentials, select your login name in the upper right, and then select **My Products**.

2. Under **Domains**, select **DNS** next to the domain you want to verify.

   :::image type="content" source="../../media/dns-godaddy/godaddy-manage-dns.png" alt-text="Select DNS.":::

3. Under **DNS Records**, select **ADD** on the top right corner.

   :::image type="content" source="../../media/dns-godaddy/godaddy-domains-add.png" alt-text="Select ADD.":::

4. Select **TXT** option from the filter box.

   :::image type="content" source="../../media/dns-godaddy/godaddy-add-txt-records.png" alt-text="Select TXT from the Type drop-down list.":::

5. In the boxes for the new record, type or copy and paste the values from the table.

   |Type|Name|Value|TTL|
   |---|---|---|---|
   |TXT|@|MS=ms *XXXXXXXX*<br>**Note**: This is an example. Use your specific **Destination or Points to Address** value here, from the table. [How do I find this?](../get-help-with-domains/information-for-dns-records.md)|1 hour  <br>|

   :::image type="content" source="../../media/dns-godaddy/godaddy-domains-TXTvalue.png" alt-text="Fill in the values from the table for the TXT record.":::

6. Select **Save**.

   :::image type="content" source="../../media/dns-godaddy/godaddy-domains-TXT-save.png" alt-text="Select Save.":::

   Wait a few minutes before you continue, so that the record you just created can update across the Internet.

Now that you've added the record at your domain registrar's site, you'll go back to Microsoft and request the record. When Microsoft finds the correct TXT record, your domain is verified.
  
To verify the record in Microsoft 365:
  
1. In the admin center, go to the **Settings** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834818" target="_blank">**Domains**</a>.

2. On the Domains page, select the domain that you're verifying, and select **Start setup**.

   :::image type="content" source="../../media/dns-IONOS/IONOS-DomainConnects-2.png" alt-text="Select Start setup.":::

3. Select **Continue**.
  
4. On the **Verify domain** page, select **Verify**.

> [!NOTE]
> Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Troubleshoot issues after changing your domain name or DNS records](../get-help-with-domains/find-and-fix-issues.md).

### Add an MX record so email for your domain will come to Microsoft

1. To get started, go to your domains page at GoDaddy by using [this link](https://account.godaddy.com/products/?go_redirect=disabled).

   If you're prompted to log in, use your login credentials, select your login name in the upper right, and then select **My Products**.

2. Under **Domains**, select the **DNS**.

   :::image type="content" source="../../media/dns-godaddy/godaddy-manage-dns.png" alt-text="Select DNS.":::

3. Under **Records**, select **ADD**.

   :::image type="content" source="../../media/dns-godaddy/godaddy-domains-add.png" alt-text="Select ADD.":::

4. Choose **MX** option from the filter box.

  :::image type="content" source="../../media/dns-godaddy/godaddy-domains-add-MX-records.png" alt-text="Drop down menu showing MX record selected.":::

5. In the boxes for the new record, type or copy and paste the values from the following table.

   (Choose the **Type** and **TTL** values from the drop-down list.)

   |Type|Name|Priority|Value|TTL|
   |---|---|---|---|---|
   |MX|@| 10  <br/> For more information about priority, see [What is MX priority?](../setup/domains-faq.yml)|*\<domain-key\>*.mail.protection.outlook.com  <br/> **Note:** Get your *\<domain-key\>* from your Microsoft account. [How do I find this?](../get-help-with-domains/information-for-dns-records.md)|1 hour|

   :::image type="content" source="../../media/dns-godaddy/godaddy-domains-MXvalues.png" alt-text="Fill in the values from the table for the MX record.":::

6. Select **Save**.

### Add the CNAME record required for Microsoft

1. To get started, go to your domains page at GoDaddy by using [this link](https://account.godaddy.com/products/?go_redirect=disabled).

   If you're prompted to log in, use your login credentials, select your login name in the upper right, and then select **My Products**.

2. Under **Domains**, select the three dots next to the domain you want to verify, and then select **DNS**.

   :::image type="content" source="../../media/dns-godaddy/godaddy-manage-dns.png" alt-text="Select DNS.":::

3. Under **Records**, select **ADD**.

   :::image type="content" source="../../media/dns-godaddy/godaddy-domains-add.png" alt-text="Select ADD.":::

4. Choose **CNAME** from the drop-down list.

   :::image type="content" source="../../media/dns-godaddy/godaddy-domains-CNAME-type.png" alt-text="Select CNAME from the Type drop-down list.":::


5. Create the CNAME record.

   In the boxes for the new record, type or copy and paste the values from the first row of the following table.

   (Choose the **TTL** value from the drop-down list.)

   |Type|Name|Value|TTL|
   |---|---|---|---|
   |CNAME|autodiscover|autodiscover.outlook.com|1 hour|

   :::image type="content" source="../../media/dns-godaddy/godaddy-domains-CNAME-values.png" alt-text="Fill in the values from the table for the CNAME record.":::

6. Select **Save**.

### Add a TXT record for SPF to help prevent email spam

> [!IMPORTANT]
> You cannot have more than one TXT record for SPF for a domain. If your domain has more than one SPF record, you'll get email errors, as well as delivery and spam classification issues. If you already have an SPF record for your domain, don't create a new one for Microsoft. Instead, add the required Microsoft values to the current record so that you have a  *single*  SPF record that includes both sets of values.

1. To get started, go to your domains page at GoDaddy by using [this link](https://account.godaddy.com/products/?go_redirect=disabled).

   If you're prompted to log in, use your login credentials, select your login name in the upper right, and then select **My Products**.

2. Under **Domains**, select the three dots next to the domain you want to verify, and then select **DNS**.

   :::image type="content" source="../../media/dns-godaddy/godaddy-manage-dns.png" alt-text="Select DNS from the drop-down list.":::

3. Under **Records**, select **ADD**.

   :::image type="content" source="../../media/dns-godaddy/godaddy-domains-add.png" alt-text="Select ADD.":::

4. Choose **TXT** from the drop-down list.

   :::image type="content" source="../../media\dns-godaddy\godaddy-domains-TXT-save.png" alt-text="Select TXT from the Type drop-down list.":::

5. In the boxes for the new record, type or copy and paste the following values.

   (Choose the **TTL** value from the drop-down lists.)

   |Type|Name|Value|TTL|
   |---|---|---|---|
   |TXT|@|v=spf1 include:secureserver.net -all <br/> **Note:** We recommend copying and pasting this entry, so that all of the spacing stays correct.|1 hour|

    :::image type="content" source="../../media/dns-godaddy/godaddy-add-TXTvalue-spf.png" alt-text="Fill in the values from the table for the TXT record.":::

6. Select **Save**.

## Advanced option: Microsoft Teams

Only select this option if your organization uses Microsoft Teams. Teams needs 4 records: 2 SRV records for user-to-user communication, and 2 CNAME records to sign-in and connect users to the service.

### Add the two required SRV records

1. To get started, go to your domains page at GoDaddy by using [this link](https://account.godaddy.com/products/?go_redirect=disabled).

   If you're prompted to log in, use your login credentials, select your login name in the upper right, and then select **My Products**.

2. Under **Domains**, select the three dots next to the domain you want to verify, and then select **DNS**.

   :::image type="content" source="../../media/dns-godaddy/godaddy-manage-dns.png" alt-text="Select DNS from the drop-down list.":::

3. Under **Records**, select **ADD**.

   :::image type="content" source="../../media/dns-godaddy/godaddy-domains-add.png" alt-text="Select ADD.":::

4. Choose **SRV** from the drop-down list.

   :::image type="content" source="../../media/dns-godaddy/godaddy-domains-SRV.png" alt-text="Select SRV from the Type drop-down list.":::

5. Create the first SRV record.

   In the boxes for the new record, type or copy and paste the values from the first row of the following table.

   (Choose the **Type** and **TTL** values from the drop-down lists.)

   |Type|Service|Protocol|Name|Value|Priority|Weight|Port|TTL|
   |---|---|---|---|---|---|---|---|---|
   |SRV|_sip|_tls|@|sipdir.online.lync.com|100| 1|443|1 Hour|
   |SRV|_sipfederationtls|_tcp|@| sipfed.online.lync.com| 100|1|5061|1 Hour|

   :::image type="content" source="../../media/dns-godaddy/godaddy-domains-SRV-records.png" alt-text="Fill in the values from the table for the SRV record.":::

6. Select **Save**.

7. Add the other SRV record by choosing the values from the second row of the table.

> [!NOTE]
> Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Troubleshoot issues after changing your domain name or DNS records](../get-help-with-domains/find-and-fix-issues.md).

### Add the two required CNAME records for Microsoft Teams 
  
1. To get started, go to your domains page at GoDaddy by using [this link](https://account.godaddy.com/products/?go_redirect=disabled).

   If you're prompted to log in, use your login credentials, select your login name in the upper right, and then select **My Products**.

2. Under **Domains**, select the three dots next to the domain you want to verify, and then select **Manage DNS**.

   :::image type="content" source="../../media/dns-godaddy/godaddy-manage-dns.png" alt-text="Select Manage DNS from the drop-down list.":::

3. Under **Records**, select **ADD**.

   :::image type="content" source="../../media/dns-godaddy/godaddy-domains-add.png" alt-text="Select ADD.":::

4. Choose **CNAME** from the drop-down list.

   :::image type="content" source="../../media/dns-godaddy/godaddy-domains-CNAME-type.png" alt-text="Select CNAME from the Type drop-down list.":::

5. In the empty boxes for the new records, type or copy and paste the values from the first row in the following table.

   |Type|Name|Value|TTL|
   |---|---|---|---|
   |CNAME|sip|sipdir.online.lync.com.  <br/> **This value MUST end with a period (.)**|1 Hour|
   |CNAME|lyncdiscover|webdir.online.lync.com.  <br/> **This value MUST end with a period (.)**|1 Hour|

   :::image type="content" source="../../media/dns-godaddy/godaddy-domains-CNAME-records.png" alt-text="Fill in the values from the table for the CNAME record.":::
  
1. Select **Save**.
  
1. Add the other CNAME record by choosing the values from the second row of the table.

> [!NOTE]
> Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Troubleshoot issues after changing your domain name or DNS records](../get-help-with-domains/find-and-fix-issues.md).
  
## Advanced option: Intune and Mobile Device Management for Microsoft 365

This service helps you secure and remotely manage mobile devices that connect to your domain. Mobile Device Management needs 2 CNAME records so that users can enroll devices to the service.

### Add the two required CNAME records Mobile Device Management

1. To get started, go to your domains page at GoDaddy by using [this link](https://account.godaddy.com/products/?go_redirect=disabled).

   If you're prompted to log in, use your login credentials, select your login name in the upper right, and then select **My Products**.

2. Under **Domains**, select the three dots next to the domain you want to verify, and then select **DNS**.

   :::image type="content" source="../../media\dns-godaddy\godaddy-manage-dns.png" alt-text="Select DNS from the drop-down list.":::

3. Under **Records**, select **ADD**.

   :::image type="content" source="../../media/dns-godaddy/godaddy-domains-add.png" alt-text="Select ADD.":::

4. Choose **CNAME** from the drop-down list.

   :::image type="content" source="../../media/dns-godaddy/godaddy-domains-CNAME-type.png" alt-text="Select CNAME from the Type drop-down list.":::

1. In the empty boxes for the new records, type or copy and paste the values from the first row in the following table.

   |Type|Name|Value|TTL|
   |---|---|---|---|
   |CNAME|enterpriseregistration|enterpriseregistration.windows.net.  <br/> **This value MUST end with a period (.)**|1 Hour|
   |CNAME|enterpriseenrollment|enterpriseenrollment-s.manage.microsoft.com.  <br/> **This value MUST end with a period (.)**|1 Hour|

   :::image type="content" source="../../media/dns-godaddy/godaddy-domains-CNAME-values.png" alt-text="Fill in the values from the table for the CNAME record.":::
  
1. Select **Save**.
  
1. Add the other CNAME record by choosing the values from the second row of the table.

> [!NOTE]
> Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Troubleshoot issues after changing your domain name or DNS records](../get-help-with-domains/find-and-fix-issues.md).
