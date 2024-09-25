---
title: "Connect your DNS records at Amazon Web Services (AWS) to Microsoft 365"
f1.keywords:
- CSH
ms.author: nkagole
author: nataliekagole
manager: scotv
ms.date: 08/12/2024
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
ms.assetid: 7a2efd75-0771-4897-ba7b-082fe5bfa9da
description: "Learn to verify your domain and set up DNS records for email, Skype for Business Online, and other services at Amazon Web Services (AWS) for Microsoft."
---

# Connect your DNS records at Amazon Web Services (AWS) to Microsoft 365

 **[Check the Domains FAQ](../setup/domains-faq.yml)** if you don't find what you're looking for.

If AWS is your DNS hosting provider, follow the steps in this article to verify your domain and set up DNS records for email, Skype Online for Business, and so on.

After you add these records at AWS, your domain will be set up to work with Microsoft services.

> [!NOTE]
> Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Find and fix issues after adding your domain or DNS records](../get-help-with-domains/find-and-fix-issues.md).

## Add a TXT record for verification

Before you use your domain with Microsoft, we have to make sure that you own it. Your ability to log in to your account at your domain registrar and create the DNS record proves to Microsoft that you own the domain.

> [!NOTE]
> This record is used only to verify that you own your domain; it doesn't affect anything else. You can delete it later, if you like.

1. To get started, go to your domains page at AWS by using [this link](https://console.aws.amazon.com/route53/home). You'll be prompted to log in first.

2. On the landing page, under **Domains**, select **Registered domains**.

3. Under **Domain Name**, select the domain you want to set up in Microsoft 365.

    **Note**: If you haven't created a hosted zone for your domain, select **Create hosted zone** and complete the steps before moving to the next step.

   :::image type="content" source="../../media/dns-aws/aws-domains-1.png" alt-text="Screenshot of Registered Domains where you select the Domain Name for the domain verification TXT record.":::

4. Select **Hosted Zones** in the top left navigation panel.

   :::image type="content" source="../../media/dns-aws/aws-domains-2.png" alt-text="Select Manage DNS from the drop-down list.":::

5. Under **Hosted zone name**, select the domain name for the hosted zone version of the domain you want to verify.

   :::image type="content" source="../../media/dns-aws/aws-domains-3.png" alt-text="Screenshot of Hosted zones where you select the Domain name for the domain verification TXT record.":::

6. Select **Create record**.

   :::image type="content" source="../../media/dns-aws/aws-domains-create-record.png" alt-text="Screenshot of where you select Create record to add a domain verification TXT record.":::

7. In the boxes for the new record, type or copy and paste the values from the following table.

    (Choose the **Type** and **Routing policy** values from the drop-down lists.)

    > [!TIP]
    > The quotation marks required by the onscreen instructions are supplied automatically. You don't need to type them manually.

    |Record name|Record type|Value|TTL (Seconds)|Routing policy|
    |:-----|:-----|:-----|:-----|:-----|
    |(Leave this field empty.)|TXT - Used to verify email senders|MS=ms*XXXXXXXX* <br/> **Note:** This is an example. Use your specific **Destination or Points to Address** value here, from the table in Microsoft 365. [How do I find this?](../get-help-with-domains/information-for-dns-records.md)|300|Simple|

8. Select **Create records**.

   :::image type="content" source="../../media/dns-aws/aws-domains-txt-create-records.png" alt-text="Screenshot of where you select Create records to add a domain verification TXT record.":::

   Wait a few minutes before you continue, so that the record you just created can update across the Internet.

Now that you've added the record at your domain registrar's site, you'll go back to Microsoft and request a search for the record. When Microsoft finds the correct TXT record, your domain is **verified**.

To verify the record in Microsoft 365:

1. In the admin center, go to the **Settings** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834818" target="_blank">**Domains**</a>.

1. On the Domains page, select the domain that you're verifying, and select **Start setup**.

    :::image type="content" source="../../media/dns-aws/aws-domains-start-setup.png"  alt-text="Select Start setup.":::

1. Select **Continue**.

1. On the **Verify domain** page, select **Verify**.

> [!NOTE]
> Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Find and fix issues after adding your domain or DNS records](../get-help-with-domains/find-and-fix-issues.md).

## Add an MX record so email for your domain will come to Microsoft 365

1. To get started, go to your domains page at AWS by using [this link](https://console.aws.amazon.com/route53/home). You'll be prompted to log in first.

1. On the landing page, under **Domains**, select **Registered domains**.

1. Under **Domain Name**, select the domain you want to set up in Microsoft 365.

    **Note**: If you haven't created a hosted zone for your domain, select **Create hosted zone** and complete the steps before moving to the next step.

   :::image type="content" source="../../media/dns-aws/aws-domains-1.png" alt-text="Screenshot of Registered Domains where you select the Domain Name for the MX record.":::

1. Select **Hosted Zones** in the top left navigation panel.

   :::image type="content" source="../../media/dns-aws/aws-domains-2.png" alt-text="Select Manage DNS from the drop-down list.":::

1. Under **Hosted zone name**, select the domain name for the hosted zone version of the domain you want to verify.

   :::image type="content" source="../../media/dns-aws/aws-domains-3.png" alt-text="Select the domain name for the hosted zone version of the domain.":::

1. Select **Create record**.

   :::image type="content" source="../../media/dns-aws/aws-domains-create-record.png" alt-text="Screenshot of where you select Create record to add an MX record.":::

1. In the boxes for the new record, type or copy and paste the values from the following table.

    (Choose the **Type** and **Routing policy** values from the drop-down lists.)

    > [!TIP]
    > The quotation marks required by the onscreen instructions are supplied automatically. You don't need to type them manually.

    |Record name|Record type|Value|TTL (Seconds)|Routing policy|
    |:-----|:-----|:-----|:-----|:-----|
    |(Leave this field empty.)|MX - Specifies mail servers|0 *\<domain-key\>*.mail.protection.outlook.com. <br/> The 0 is the MX priority value. Add it to the beginning of the MX value, separated from the remainder of the value by a space. <br/> **This value MUST end with a period (.)** <br/> **Note:** Get your \<*domain-key*\> from your Microsoft 365 account. [How do I find this?](../get-help-with-domains/information-for-dns-records.md)|300|Simple routing|

1. Select **Create records**.

   :::image type="content" source="../../media/dns-aws/aws-domains-mx-create-records.png" alt-text="Screenshot of where you select Create records to add an MX record":::

1. If there are any other MX records, remove them by selecting the record, and then selecting **Delete**.

## Add the CNAME record required for Microsoft 365

1. To get started, go to your domains page at AWS by using [this link](https://console.aws.amazon.com/route53/home). You'll be prompted to log in first.

1. On the landing page, under **Domains**, select **Registered domains**.

1. Under **Domain Name**, select the domain you want to set up in Microsoft 365.

    **Note**: If you haven't created a hosted zone for your domain, select **Create hosted zone** and complete the steps before moving to the next step.

   :::image type="content" source="../../media/dns-aws/aws-domains-1.png" alt-text="Screenshot of Registered Domains where you select the Domain Name for the CNAME record.":::

1. Select **Manage DNS**.

   :::image type="content" source="../../media/dns-aws/aws-domains-2.png" alt-text="Select Manage DNS from the drop-down list.":::

1. Under **Domain name**, select the domain name for the hosted zone version of the domain you want to verify.

   :::image type="content" source="../../media/dns-aws/aws-domains-3.png" alt-text="Screenshot of Hosted zones where you select the Domain name for the MX record.":::

1. Select **Create record**.

   :::image type="content" source="../../media/dns-aws/aws-domains-create-record.png" alt-text="Screenshot of where you select Create record to add a CNAME record":::

1. In the boxes for the new record, type or copy and paste the values from the following table.

    (Choose the **Type** and **Routing policy** values from the drop-down lists.)

    |Record name|Record type|Value|TTL|Routing policy|
    |:-----|:-----|:-----|:-----|:-----|
    |autodiscover|CNAME - Routes traffic to another domain name|autodiscover.outlook.com. <br/> **This value MUST end with a period (.)**|300|Simple|

1. Select **Create records**.

   :::image type="content" source="../../media/dns-aws/aws-domains-cname-create-records.png" alt-text="Screenshot of where you select Create records to add a CNAME record":::

## Add a TXT record for SPF to help prevent email spam

> [!IMPORTANT]
> You cannot have more than one TXT record for SPF for a domain. If your domain has more than one SPF record, you'll get email errors, as well as delivery and spam classification issues. If you already have an SPF record for your domain, don't create a new one for Microsoft. Instead, add the required Microsoft values to the current record so that you have a *single* SPF record that includes both sets of values. Need examples? Check out these [External Domain Name System records for Microsoft](../../enterprise/external-domain-name-system-records.md). To validate your SPF record, you can use one of these[SPF validation tools](../setup/domains-faq.yml).

1. To get started, go to your domains page at AWS by using [this link](https://console.aws.amazon.com/route53/home). You'll be prompted to log in first.

1. On the landing page, under **Domains**, select **Registered domains**.

1. Under **Domain Name**, select the domain you want to set up in Microsoft 365.

    **Note**: If you haven't created a hosted zone for your domain, select **Create hosted zone** and complete the steps before moving to the next step.

   :::image type="content" source="../../media/dns-aws/aws-domains-1.png" alt-text="Screenshot of Registered Domains where you select the Domain Name for the SPF TXT record.":::

1. Select **Manage DNS**.

   :::image type="content" source="../../media/dns-aws/aws-domains-2.png" alt-text="Select Manage DNS from the drop-down list.":::

1. Under **Domain name**, select the domain name for the hosted zone version of the domain you want to verify.

   :::image type="content" source="../../media/dns-aws/aws-domains-3.png" alt-text="Screenshot of Hosted zones where you select the Domain name for the SPF TXT record.":::

1. Select **Create record**.

   :::image type="content" source="../../media/dns-aws/aws-domains-create-record.png" alt-text="Screenshot of where you select Create record to add an SPF TXT record.":::

1. In the boxes for the new record, type or copy and paste the values from the following table.

    (Choose the **Type** value from the drop-down lists.)

    |Record type|Value|
    |:-----|:-----|
    |TXT- Used to verify email senders and for application-specific values|v=spf1 include:spf.protection.outlook.com -all <br/> (The quotation marks required by the onscreen instructions are supplied automatically. You don't need to type them manually.) <br/> **Note:** We recommend copying and pasting this entry, so that all of the spacing stays correct.|

1. Select **Create records**.

   :::image type="content" source="../../media/dns-aws/aws-domains-txt-create-records.png" alt-text="Screenshot of where you select Create records to add an SPF TXT record.":::

## Advanced option: Skype for Business

Only select this option if your organization uses Skype for Business for online communication services like chat, conference calls, and video calls, in addition to Microsoft Teams. Skype needs 4 records: 2 SRV records for user-to-user communication, and 2 CNAME records to sign-in and connect users to the service.

### Add the two required SRV records

1. To get started, go to your domains page at AWS by using [this link](https://console.aws.amazon.com/route53/home). You'll be prompted to log in first.

1. On the landing page, under **Domains**, select **Registered domains**.

1. Under **Domain Name**, select the domain you want to set up in Microsoft 365.

    **Note**: If you haven't created a hosted zone for your domain, select **Create hosted zone** and complete the steps before moving to the next step.

   :::image type="content" source="../../media/dns-aws/aws-domains-1.png" alt-text="Screenshot of Registered Domains where you select the Domain Name for the SRV records for Skype for Business.":::

1. Select **Manage DNS**.

   :::image type="content" source="../../media/dns-aws/aws-domains-2.png" alt-text="Select Manage DNS from the drop-down list.":::

1. Under **Domain name**, select the domain name for the hosted zone version of the domain you want to verify.

   :::image type="content" source="../../media/dns-aws/aws-domains-3.png" alt-text="Screenshot of Hosted zones where you select the Domain name for the SRV records for Skype for Business.":::

1. Select **Create record**.

   :::image type="content" source="../../media/dns-aws/aws-domains-create-record.png" alt-text="Screenshot of where you select Create record to add an SRV record.":::

1. In the boxes for the new record, type or copy and paste the values from the following table.

    (Choose the **Type** and **Routing Policy** values from the drop-down lists.)

    |Record name|Record type|Value|TTL (Seconds)|Routing policy|
    |:-----|:-----|:-----|:-----|:-----|
    |_sip._tls|SRV - Application-specific values that id servers|100 1 443 sipdir.online.lync.com. **This value MUST end with a period (.)**> <br/> **Note:** We recommend copying and pasting this entry, so that all of the spacing stays correct.|300|Simple|
    |_sipfederationtls._tcp|SRV - Application-specific values that id servers|100 1 5061 sipfed.online.lync.com. **This value MUST end with a period (.)** <br/> **Note:** We recommend copying and pasting this entry, so that all of the spacing stays correct.|300|Simple|

1. To add the other SRV record, select **Add another record**, create a record using the values from the next row in the table, and then again select **Create records**.

   :::image type="content" source="../../media/dns-aws/aws-domians-srv-create-records.png" alt-text="Screenshot of where you select Create records to add an SRV record.":::

> [!NOTE]
> Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Find and fix issues after adding your domain or DNS records](../get-help-with-domains/find-and-fix-issues.md).

### Add the two required CNAME records for Skype for Business

1. To get started, go to your domains page at AWS by using [this link](https://console.aws.amazon.com/route53/home). You'll be prompted to log in first.

1. On the landing page, under **Domains**, select **Registered domains**.

1. Under **Domain Name**, select the domain you want to set up in Microsoft 365.

    **Note**: If you haven't created a hosted zone for your domain, select **Create hosted zone** and complete the steps before moving to the next step.

   :::image type="content" source="../../media/dns-aws/aws-domains-1.png" alt-text="Screenshot of Registered Domains where you select the Domain Name for the CNAME records for Skype for Business.":::

1. Select **Manage DNS**.

   :::image type="content" source="../../media/dns-aws/aws-domains-2.png" alt-text="Screenshot of Registered Domains where you select Manage DNS for the CNAME records for Skype for Business.":::

1. Under **Domain name**, select the domain name for the hosted zone version of the domain you want to verify.

   :::image type="content" source="../../media/dns-aws/aws-domains-3.png" alt-text="Screenshot of Hosted zones where you select the Domain name for the CNAME records for Skype for Business.":::

1. Select **Create record**.

   :::image type="content" source="../../media/dns-aws/aws-domains-create-record.png" alt-text="Screenshot of where you select Create record to add CNAME records for Skype for Business.":::

1. In the boxes for the new record, type or copy and paste the values from the following table.

    (Choose the **Type** and **Routing policy** values from the drop-down lists.)

    |Record name|Record type|Value|TTL|Routing policy|
    |:-----|:-----|:-----|:-----|:-----|
    |sip|CNAME - Canonical name|sipdir.online.lync.com. <br/> **This value MUST end with a period (.)**|300|Simple|
    |lyncdiscover|CNAME - Canonical name|webdir.online.lync.com. <br/> **This value MUST end with a period (.)**|300|Simple|

1. To add the other CNAME record, select **Add another record**, create a record using the values from the next row in the table.

1. Select **Create records**.

   :::image type="content" source="../../media/dns-aws/aws-domains-cname-create-records.png" alt-text="Screenshot of where you select Create records to add CNAME records for Skype for Business.":::

> [!NOTE]
> Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Troubleshoot issues after changing your domain name or DNS records](../get-help-with-domains/find-and-fix-issues.md).

## Advanced option: Intune and Mobile Device Management for Microsoft 365

This service helps you secure and remotely manage mobile devices that connect to your domain. Mobile Device Management needs two CNAME records so that users can enroll devices to the service.

### Add the two required CNAME records for Mobile Device Management

1. To get started, go to your domains page at AWS by using [this link](https://console.aws.amazon.com/route53/home). You'll be prompted to log in first.

1. On the landing page, under **Domains**, select **Registered domains**.

1. Under **Domain Name**, select the domain you want to set up in Microsoft 365.

    **Note**: If you haven't created a hosted zone for your domain, select **Create hosted zone** and complete the steps before moving to the next step.

   :::image type="content" source="../../media/dns-aws/aws-domains-1.png" alt-text="Screenshot of Registered Domains where you select the Domain Name for the  CNAME records for Mobile Device Management.":::

1. Select **Manage DNS**.

   :::image type="content" source="../../media/dns-aws/aws-domains-2.png" alt-text="Select Manage DNS from the drop-down list.":::

1. Under **Domain name**, select the domain name for the hosted zone version of the domain you want to verify.

   :::image type="content" source="../../media/dns-aws/aws-domains-3.png" alt-text="Screenshot of Hosted zones where you select the Domain name for the CNAME records for Mobile Device Management.":::

1. Select **Create record**.

   :::image type="content" source="../../media/dns-aws/aws-domains-create-record.png" alt-text="Screenshot of where you select Create record to add CNAME records for Mobile Device Management.":::

1. In the boxes for the new record, type or copy and paste the values from the following table.

    (Choose the **Type** and **Routing policy** values from the drop-down lists.)

    |Record name|Record type|Value|TTL|Routing policy|
    |:-----|:-----|:-----|:-----|:-----|
    |enterpriseregistration|CNAME - Canonical name|enterpriseregistration.windows.net. <br/> **This value MUST end with a period (.)**|300|Simple|
    |enterpriseenrollment|CNAME - Canonical name|enterpriseenrollment-s.manage.microsoft.com. <br/> **This value MUST end with a period (.)**|300|Simple|

1. To add the other CNAME record, select **Add another record**, create a record using the values from the next row in the table.

1. Select **Create records**.

   :::image type="content" source="../../media/dns-aws/aws-domains-cname-create-records.png" alt-text="Screenshot of where you select Create records to add CNAME records for Mobile Device Management.":::

> [!NOTE]
> Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Troubleshoot issues after changing your domain name or DNS records](../get-help-with-domains/find-and-fix-issues.md).
