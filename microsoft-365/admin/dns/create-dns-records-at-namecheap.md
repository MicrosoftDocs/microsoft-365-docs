---
title: "Connect your DNS records at Namecheap to Microsoft 365"
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
ms.assetid: 54ae2002-b38e-43a1-82fa-3e49d78fda56
description: "Learn to verify your domain and set up DNS records for email, Teams, and other services at Namecheap for Microsoft."
---

# Connect your DNS records at Namecheap to Microsoft 365

 **[Check the Domains FAQ](../setup/domains-faq.yml)** if you don't find what you're looking for.

If Namecheap is your DNS hosting provider, follow the steps in this article to verify your domain and set up DNS records for email, Microsoft Teams, and so on.

After you add these records at Namecheap, your domain will be set up to work with Microsoft services.

> [!NOTE]
> Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Troubleshoot issues after changing your domain name or DNS records](../get-help-with-domains/find-and-fix-issues.md).

## Add a TXT record for verification

Before you use your domain with Microsoft, we have to make sure that you own it. Your ability to log in to your account at your domain registrar and create the DNS record proves to Microsoft that you own the domain.

> [!NOTE]
> This record is used only to verify that you own your domain; it doesn't affect anything else. You can delete it later, if you like.

1. To get started, go to your domains page at Namecheap by using [this link](https://www.namecheap.com/myaccount/login.aspx?ReturnUrl=%2f). You'll be prompted to Sign in and Continue.

     :::image type="content" source="../../media/1827f9fc-4dc9-4f9d-a392-7817c47b00b3.png" alt-text="Sign in to Namecheap.":::

1. On the landing page, under **Account**, choose **Domain List** from the drop-down list.

     :::image type="content" source="../../media/3f457d64-4589-422c-ae34-fc24b0e819eb.png" alt-text="Select Domain List from the drop-down list.":::

1. On the Domain List page, select the domain you want to edit, and then select **Manage**.

     :::image type="content" source="../../media/fb2020d8-707c-4148-835e-304ac6244d66.png" alt-text="Select Manage.":::

1. Select **Advanced DNS**.

     :::image type="content" source="../../media/05a4f0b9-1d27-448e-9954-2b23304c5f65.png" alt-text="Select Advanced DNS.":::

1. In the **HOST RECORDS** section, select **ADD NEW RECORD**.

     :::image type="content" source="../../media/8849abfe-deb6-4f6a-b56d-e69be9a28b0f.png" alt-text="Select ADD NEW RECORD.":::

1. In the **Type** drop-down, select **TXT Record**.

    > [!NOTE]
    > The **Type** drop-down automatically appears when you select **ADD NEW RECORD**.

     :::image type="content" source="../../media/a5b40973-19b5-4c32-8e1b-1521aa971836.png" alt-text="Select TXT Record.":::

1. In the boxes for the new record, type or copy and paste the values from the following table.

    (Choose the **TTL** value from the drop-down list.)

    |Type|Host|Value|TTL|
    |---|---|---|---|
    |TXT|@|MS=ms *XXXXXXXX*  <br/>**Note:** This is an example. Use your specific **Destination or Points to Address** value here, from the table.  [How do I find this?](../get-help-with-domains/information-for-dns-records.md)|30 min|

     :::image type="content" source="../../media/fe75c0fd-f85c-4bef-8068-edaf9779b7f1.png" alt-text="Copy and paste the values from the table.":::

1. Select the **Save Changes** (check mark) control.

     :::image type="content" source="../../media/b48d2c67-66b5-4aa4-8e59-0c764f236fac.png" alt-text="Select the Save Changes control.":::

1. Wait a few minutes before you continue, so that the record you just created can update across the Internet.

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

1. To get started, go to your domains page at Namecheap by using [this link](https://www.namecheap.com/myaccount/login.aspx?ReturnUrl=%2f). You'll be prompted to Sign in and Continue.

     :::image type="content" source="../../media/1827f9fc-4dc9-4f9d-a392-7817c47b00b3.png" alt-text="Sign in to Namecheap.":::

1. On the landing page, under **Account**, choose **Domain List** from the drop-down list.

     :::image type="content" source="../../media/3f457d64-4589-422c-ae34-fc24b0e819eb.png" alt-text="Choose Domain List from the drop-down list.":::

1. On the **Domain List** page, select the domain that you want to edit, and then select **Manage**.

     :::image type="content" source="../../media/fb2020d8-707c-4148-835e-304ac6244d66.png" alt-text="Select Manage.":::

1. Select **Advanced DNS**.

     :::image type="content" source="../../media/05a4f0b9-1d27-448e-9954-2b23304c5f65.png" alt-text="Select Advanced DNS.":::

1. In the **MAIL SETTINGS** section, select **Custom MX** from the **Email Forwarding** drop-down list.

    (You may have to scroll down.)

     :::image type="content" source="../../media/40199e2c-42cf-4c3f-9936-3cbe5d4e81a4.png" alt-text="Select Custom MX.":::

1. Select **Add New Record**.

     :::image type="content" source="../../media/8d169b81-ba48-4d51-84ea-a08fa1616457.png" alt-text="ADD NEW RECORD.":::

1. In the boxes for the new record, type or copy and paste the values, from the following table.

    (The **Priority** box is the unnamed box to the right of the **Value** box. Choose the **TTL** value from the drop-down list.)

    |Type|Host|Value|Priority|TTL|
    |---|---|---|---|---|
    |MX Record|@|\<*domain-key*\>.mail.protection.outlook.com.  <br/> **This value MUST end with a period (.)** <br/> **Note:** Get your *\<domain-key\>* from your Microsoft account.  [How do I find this?](../get-help-with-domains/information-for-dns-records.md)|0  <br/> For more information about priority, see [What is MX priority?](../setup/domains-faq.yml)|30 min|

     :::image type="content" source="../../media/f3b76d62-5022-48c1-901b-8615a8571309.png" alt-text="Copy and paste the values from the table.":::

1. Select the **Save Changes** (check mark) control.

     :::image type="content" source="../../media/ef4e3112-36d2-47c8-a478-136a565dd71d.png" alt-text="Select the Save Changes control.":::

1. If there are any other MX records, use the following two-step process to remove each of them:

    First, select **Delete** (trash can) for the record that you want to remove.

     :::image type="content" source="../../media/7a7a751f-29c2-495f-8f55-98ca37ce555a.png" alt-text="Select Delete.":::

    Second, select **Yes** to confirm the deletion.

     :::image type="content" source="../../media/85ebc0c7-8787-43ee-9e7b-647375b3345c.png" alt-text="Select Yes.":::

    Remove all MX records except for the one that you added earlier in this procedure.

## Add the CNAME record required for Microsoft

1. To get started, go to your domains page at Namecheap by using [this link](https://www.namecheap.com/myaccount/login.aspx?ReturnUrl=%2f). You'll be prompted to Sign in and Continue.

     :::image type="content" source="../../media/1827f9fc-4dc9-4f9d-a392-7817c47b00b3.png" alt-text="Sign in to Namecheap.":::

1. On the landing page, under **Account**, choose **Domain List** from the drop-down list.

     :::image type="content" source="../../media/3f457d64-4589-422c-ae34-fc24b0e819eb.png" alt-text="Select Domain List.":::

1. On the **Domain List** page, select the domain that you want to edit, and then select **Manage**.

     :::image type="content" source="../../media/fb2020d8-707c-4148-835e-304ac6244d66.png" alt-text="Select Manage.":::

1. Select **Advanced DNS**.

     :::image type="content" source="../../media/05a4f0b9-1d27-448e-9954-2b23304c5f65.png" alt-text="Select Advanced DNS.":::

1. In the **HOST RECORDS** section, select **ADD NEW RECORD**.

     :::image type="content" source="../../media/8849abfe-deb6-4f6a-b56d-e69be9a28b0f.png" alt-text="Select ADD NEW RECORD.":::

1. In the **Type** drop-down, select **CNAME Record**.

    > [!NOTE]
    > The **Type** drop-down automatically appears when you select **ADD NEW RECORD**.

     :::image type="content" source="../../media/0898f3b2-06ab-4364-a86a-a603a25b39f4.png" alt-text="Select CNAME Record.":::

1. In the empty boxes for the new record, select **CNAME** for the **Record Type**, and then type or copy and paste the values from the first row in the following table.

    |Type|Host|Value|TTL|
    |---|---|---|---|
    |CNAME|autodiscover|autodiscover.outlook.com.  <br/> **This value MUST end with a period (.)**|Automatic|

     :::image type="content" source="../../media/f79c5679-34eb-4544-8517-caa2e8a4111a.png" alt-text="Copy and paste the values from the table.":::

1. Select the **Save Changes** (check mark) control.

     :::image type="content" source="../../media/91a5cce4-ca41-41ec-b976-aafe681a4d68.png" alt-text="Select the Save Changes control.":::

## Add a TXT record for SPF to help prevent email spam

> [!IMPORTANT]
> You cannot have more than one TXT record for SPF for a domain. If your domain has more than one SPF record, you'll get email errors, as well as delivery and spam classification issues. If you already have an SPF record for your domain, don't create a new one for Microsoft. Instead, add the required Microsoft values to the current record so that you have a *single*  SPF record that includes both sets of values.

1. To get started, go to your domains page at Namecheap by using [this link](https://www.namecheap.com/myaccount/login.aspx?ReturnUrl=%2f). You'll be prompted to Sign in and Continue.

1. On the landing page, under **Account**, choose **Domain List** from the drop-down list.

     :::image type="content" source="../../media/3f457d64-4589-422c-ae34-fc24b0e819eb.png" alt-text="Select Domain List.":::

1. On the **Domain List** page, select the domain that you want to edit, and then select **Manage**.

     :::image type="content" source="../../media/fb2020d8-707c-4148-835e-304ac6244d66.png" alt-text="Select Manage.":::

1. Select **Advanced DNS**.

     :::image type="content" source="../../media/05a4f0b9-1d27-448e-9954-2b23304c5f65.png" alt-text="Select Advanced DNS.":::

1. In the **HOST RECORDS** section, select **ADD NEW RECORD**.

     :::image type="content" source="../../media/8849abfe-deb6-4f6a-b56d-e69be9a28b0f.png" alt-text="Select ADD NEW RECORD.":::

1. In the **Type** drop-down, select **TXT Record**.

    > [!NOTE]
    > The **Type** drop-down automatically appears when you select **ADD NEW RECORD**.

     :::image type="content" source="../../media/c5d1fddb-28b5-48ec-91c9-3e5d3955ac80.png" alt-text="Select TXT Record.":::

1. In the boxes for the new record, type or copy and paste the following values from the following table.

    (Choose the **TTL** value from the drop-down list.)

    |Type|Host|Value|TTL|
    |---|---|---|---|
    |TXT|@|v=spf1 include:spf.protection.outlook.com -all  <br/> **Note:** We recommend copying and pasting this entry, so that all of the spacing stays correct.|30 min|

     :::image type="content" source="../../media/ea0829f1-990b-424b-b26e-9859468318dd.png" alt-text="Copy and paste the values from the table.":::

1. Select the **Save Changes** (check mark) control.

     :::image type="content" source="../../media/f2846c36-ace3-43d8-be5d-a65e2c267619.png" alt-text="Select the Save Changes control.":::

## Advanced option: Microsoft Teams

Only select this option if your organization uses Microsoft Teams. Teams needs 4 records: 2 SRV records for user-to-user communication, and 2 CNAME records to sign-in and connect users to the service.

### Add the two required SRV records

1. To get started, go to your domains page at Namecheap by using [this link](https://www.namecheap.com/myaccount/login.aspx?ReturnUrl=%2f). You'll be prompted to sign in.

     :::image type="content" source="../../media/1827f9fc-4dc9-4f9d-a392-7817c47b00b3.png" alt-text="Sign in to Namecheap.":::

1. On the landing page, under **Account**, choose **Domain List** from the drop-down list.

     :::image type="content" source="../../media/3f457d64-4589-422c-ae34-fc24b0e819eb.png" alt-text="Choose Domain List.":::

1. On the **Domain List** page, select the domain that you want to edit, and then select **Manage**.

     :::image type="content" source="../../media/fb2020d8-707c-4148-835e-304ac6244d66.png" alt-text="Select Manage.":::

1. Select **Advanced DNS**.

     :::image type="content" source="../../media/05a4f0b9-1d27-448e-9954-2b23304c5f65.png" alt-text="Select Advanced DNS.":::

1. In the **HOST RECORDS** section, select **ADD NEW RECORD**.

     :::image type="content" source="../../media/8849abfe-deb6-4f6a-b56d-e69be9a28b0f.png" alt-text="Select ADD NEW RECORD.":::

1. In the **Type** drop-down, select **SRV Record**.

    > [!NOTE]
    > The **Type** drop-down automatically appears when you select **ADD NEW RECORD**.

     :::image type="content" source="../../media/fd55cd7c-2243-4de1-8d39-2c3f7ea3ae51.png" alt-text="Select the SRV Record type.":::

1. In the empty boxes for the new records, type or copy and paste the values from the first row in the following table.

    |Service|Protocol|Priority|Weight|Port|Target|TTL|
    |---|---|---|---|---|---|---|
    |_sip|_tls|100|1|443|sipdir.online.lync.com.  <br/> **This value MUST end with a period (.)**|Automatic|
    |_sipfederationtls|_tcp|100|1|5061|sipfed.online.lync.com.  <br/> **This value MUST end with a period (.)**|Automatic|

     :::image type="content" source="../../media/ff9566ea-0096-4b7f-873c-027080a23b56.png" alt-text="Copy and paste the values from the table.":::

1. Select the **Save Changes** (check mark) control.

     :::image type="content" source="../../media/48a8dee4-c66d-449d-8759-9e9784c82b13.png" alt-text="Select the Save Changes control.":::

1. Add the other SRV record by choosing the values from the second row of the table.

> [!NOTE]
> Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Troubleshoot issues after changing your domain name or DNS records](../get-help-with-domains/find-and-fix-issues.md).

### Add the two required CNAME records for Teams

1. In the **HOST RECORDS** section, select **ADD NEW RECORD**.

     :::image type="content" source="../../media/8849abfe-deb6-4f6a-b56d-e69be9a28b0f.png" alt-text="Select ADD NEW NAME.":::

1. In the **Type** drop-down, select **CNAME**.

    > [!NOTE]
    > The **Type** drop-down automatically appears when you select **ADD NEW RECORD**.

     :::image type="content" source="../../media/fd55cd7c-2243-4de1-8d39-2c3f7ea3ae51.png" alt-text="Select CNAME.":::

1. In the empty boxes for the new records, type or copy and paste the values from the first row in the table.

    |Type|Host|Value|TTL|
    |---|---|---|---|
    |CNAME|sip|sipdir.online.lync.com.  <br/> **This value MUST end with a period (.)**|Automatic|
    |CNAME|lyncdiscover|webdir.online.lync.com.  <br/> **This value MUST end with a period (.)**|Automatic|

     :::image type="content" source="../../media/91a5cce4-ca41-41ec-b976-aafe681a4d68.png" alt-text="Copy and paste the CNAME values from the table.":::

1. Select the **Save Changes** (check mark) control.

     :::image type="content" source="../../media/91a5cce4-ca41-41ec-b976-aafe681a4d68.png" alt-text="Select the Save Changes control.":::

1. Add the other CNAME record by choosing the values from the second row of the table.

> [!NOTE]
> Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Troubleshoot issues after changing your domain name or DNS records](../get-help-with-domains/find-and-fix-issues.md).

## Advanced option: Intune and Mobile Device Management for Microsoft 365

This service helps you secure and remotely manage mobile devices that connect to your domain. Mobile Device Management needs two CNAME records so that users can enroll devices to the service.

### Add the two required CNAME records for Mobile Device Management

1. To get started, go to your domains page at Namecheap by using [this link](https://www.namecheap.com/myaccount/login.aspx?ReturnUrl=%2f). You'll be prompted to sign in.

     :::image type="content" source="../../media/1827f9fc-4dc9-4f9d-a392-7817c47b00b3.png" alt-text="Sign in to Namecheap.":::

1. On the landing page, under **Account**, choose **Domain List** from the drop-down list.

     :::image type="content" source="../../media/3f457d64-4589-422c-ae34-fc24b0e819eb.png" alt-text="Select Domain List.":::

1. On the **Domain List** page, select the domain that you want to edit, and then select **Manage**.

     :::image type="content" source="../../media/fb2020d8-707c-4148-835e-304ac6244d66.png" alt-text="Select Manage.":::

1. Select **Advanced DNS**.

     :::image type="content" source="../../media/05a4f0b9-1d27-448e-9954-2b23304c5f65.png" alt-text="Select Manage DNS Records from the drop-down list.":::

1. In the **HOST RECORDS** section, select **ADD NEW RECORD**.

     :::image type="content" source="../../media/8849abfe-deb6-4f6a-b56d-e69be9a28b0f.png" alt-text="Select ADD NEW RECORD.":::

1. In the **Type** drop-down, select **CNAME Record**.

    > [!NOTE]
    > The **Type** drop-down automatically appears when you select **ADD NEW RECORD**.

     :::image type="content" source="../../media/0898f3b2-06ab-4364-a86a-a603a25b39f4.png" alt-text="Select CNAME Record.":::

1. In the empty boxes for the new records, type or copy and paste the values from the first row in the table.

    |Type|Host|Value|TTL|
    |---|---|---|---|
    |CNAME|enterpriseregistration|enterpriseregistration.windows.net.  <br/> **This value MUST end with a period (.)**|Automatic|
    |CNAME|enterpriseenrollment|enterpriseenrollment-s.manage.microsoft.com.  <br/> **This value MUST end with a period (.)**|Automatic|

     :::image type="content" source="../../media/f79c5679-34eb-4544-8517-caa2e8a4111a.png" alt-text="Copy and paste the values from the table.":::

1. Select the **Save Changes** control.

     :::image type="content" source="../../media/91a5cce4-ca41-41ec-b976-aafe681a4d68.png" alt-text="Select the Save Changes control.":::

1. Add the other CNAME record by choosing the values from the second row of the table.

> [!NOTE]
> Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Troubleshoot issues after changing your domain name or DNS records](../get-help-with-domains/find-and-fix-issues.md).
