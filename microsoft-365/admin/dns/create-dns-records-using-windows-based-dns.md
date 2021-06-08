---
title: "Create DNS records for Microsoft using Windows-based DNS"
f1.keywords:
- NOCSH
ms.author: pebaum
author: pebaum
manager: scotv
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
- M365-subscription-management
- Adm_O365
- Adm_NonTOC
- Adm_O365_Setup
ms.custom: AdminSurgePortfolio
search.appverid:
- BCS160
- MET150
- MOE150
ms.assetid: 9eec911d-5773-422c-9593-40e1147ffbde
description: "Learn to verify your domain and set up DNS records for email, Skype for Business Online, and other services at Windows-based DNS for Microsoft."
---

# Create DNS records for Microsoft using Windows-based DNS

 **[Check the Domains FAQ](../setup/domains-faq.yml)** if you don't find what you're looking for. 
   
If you host your own DNS records using Windows-based DNS, follow the steps in this article to set up your records for email, Skype for Business Online, and so on.
  
To get started, you need to [find your DNS records in Windows-based DNS](#find-your-dns-records-in-windows-based-dns) so you can update them. Also, if you're planning to synchronize your on-premises Active Directory with Microsoft, see [Non-routable email address used as a UPN in your on-prem Active Directory](#non-routable-email-address-used-as-a-upn-in-your-on-prem-active-directory).
  
Trouble with mail flow or other issues after adding DNS records, see [Troubleshoot issues after changing your domain name or DNS records](../get-help-with-domains/find-and-fix-issues.md). 
  
## Find your DNS records in Windows-based DNS
<a name="BKMK_find_your_dns_1"> </a>
Go to the page that has the DNS records for your domain. If you're working in Windows Server 2008, go to **Start** > **Run**. If you're working in Windows Server 2012, press the Windows key and **r**. Type **dnsmgmnt.msc**, and then select **OK**. In DNS Manager, expand **\<DNS server name\>  \> Forward Lookup Zones**. Select your domain. You're now ready to create the DNS records.
   
## Add MX record
<a name="BKMK_add_MX"> </a>

Add an MX record so email for your domain will come to Microsoft.
- The MX record you'll add includes a value (the **Points to address** value) that looks something like this: \<MX token\>.mail.protection.outlook.com, where \<MX token\> is a value like MSxxxxxxx. 
- From the MX row in the Exchange Online section of the Add DNS records page in Microsoft, copy the value listed under Points to address. You'll use this value in the record you're creating in this task. 
- On the DNS Manager page for the domain, go to **Action** > **Mail Exchanger (MX)**. To find this page for the domain, see [Find your DNS records in Windows-based DNS](#find-your-dns-records-in-windows-based-dns).  
- In the **New Resource Record** dialog box, make sure that the fields are set to precisely the following values: 
    - Host Name: 
    - @Address: Paste the Points to address  value that you just copied from Microsoft here.  
    - Pref: 
- Select **Save Changes**.
- Remove any obsolete MX records. If you have any old MX records for this domain that route email somewhere else, select the check box next to each old record, and then select **Delete** > **OK**. 
   
## Add CNAME records
<a name="BKMK_add_CNAME"> </a>

Add the CNAME records that are required for Microsoft. If additional CNAME records are listed in Microsoft, add those following the same general steps shown here.
  
> [!IMPORTANT]
> If you have Mobile Device Management (MDM) for Microsoft, then you must create two additional CNAME records. Follow the procedure that you used for the other four CNAME records, but supply the values from the following table. (If you do not have MDM, you can skip this step.) 

- On the DNS Manager page for the domain, go to **Action** > **CNAME (CNAME)**.
- In the **New Resource Record** dialog box, make sure that the fields are set to precisely the following values:  
    - Host Name: autodiscover
    - Type: 
    - CNAMEAddress: autodiscover.outlook.com
- Select **O**K.

Add the SIP CNAME record. 
- On the DNS Manager page for the domain, go to **Action** \> **CNAME (CNAME)**. 
- In the **New Resource Record** dialog box, make sure that the fields are set to precisely the following values:  
    - Host Name: sip
    - Type: CNAME
    - Address: sipdir.online.lync.com
- Select **OK**.

Add the Skype for Business Online Autodiscover CNAME record.  
- On the DNS Manager page for the domain, go to **Action** \> **CNAME (CNAME)**. In the **New Resource Record** dialog box, make sure that the fields are set to precisely the following values:  
    - Host Name: lyncdiscover
    - Type: CNAME
    - Address: webdir.online.lync.com
- Select **OK**.
   
### Add two CNAME records for Mobile Device Management (MDM) for Microsoft

> [!IMPORTANT]
> If you have Mobile Device Management (MDM) for Microsoft, then you must create two additional CNAME records. Follow the procedure that you used for the other four CNAME records, but supply the values from the following table. >(If you do not have MDM, you can skip this step.) 
  

Add the MDM Enterpriseregistration CNAME record.  
- On the DNS Manager page for the domain, go to **Action** \> **CNAME (CNAME)**. 
- In the **New Resource Record** dialog box, make sure that the fields are set to precisely the following values:  
- Host Name: enterpriseregistration
- Type: CNAME
- Address: enterpriseregistration.windows.net
- Select **OK**. 

Add the MDM Enterpriseenrollment CNAME record. 
-  On the DNS Manager page for the domain, go to **Action** \> **CNAME (CNAME)**. 
-  In the **New Resource Record** dialog box, make sure that the fields are set to precisely the following values:  
    - Host Name: enterpriseenrollment
    - Type: CNAME
    - Address: enterpriseenrollment-s.manage.microsoft.com
- Select **OK**.
   
## Add a TXT record for SPF to help prevent email spam
<a name="BKMK_add_TXT"> </a>

> [!IMPORTANT]
> You cannot have more than one TXT record for SPF for a domain. If your domain has more than one SPF record, you'll get email errors, as well as delivery and spam classification issues. If you already have an SPF record for your domain, don't create a new one for Microsoft. Instead, add the required Microsoft values to the current record so that you have a  *single*  SPF record that includes both sets of values. 
  
Add the SPF TXT record for your domain to help prevent email spam.
  
- You might already have other strings in the TXT value for this record (such as strings for marketing email), which is fine. Leave those strings in place and add this one, placing double-quotes around each string to separate them. 
- On the DNS Manager page for your domain, go to **Action** \> **Text (TXT)**. 
-  In the **New Resource Record** dialog box, make sure that the fields are set to precisely the following values. 
 > [!IMPORTANT]
> In some versions of Windows DNS Manager, the domain may have been set up so that when you create a txt record, the home name defaults to the parent domain. In this situation, when adding a TXT record, set the host name to blank (no value) instead of setting it to @ or the domain name. 

-  Host type: @
-  Record Type: TXT
-  Address: v=spf1 include:spf.protection.outlook.com -all 
         
-  Select **OK**.
   
## Add SRV records
<a name="BKMK_add_SRV"> </a>

Add the two SRV records that are required for Microsoft.

Add the SIP SRV record for Skype for Business Online web conferencing.  <br/> 
-  On the DNS Manager page for your domain, go to **Action** \> **Other New Records**. 
-   In the **Resource Record Type** window, select **Service Location (SRV)**, and then select **Create Record**. 
-   In the **New Resource Record** dialog box, make sure that the fields are set to precisely the following values:  
    -  Service: _sip
    -  Protocol: _tls
    -  Priority: 100
    -  Weight: 1
    -  Port: 443
    -  Target (Hostname): sipdir.online.lync.com
-  Select **OK**. 


Add the SIP SRV record for Skype for Business Online federation.  
-  On the DNS Manager page for your domain, go to **Action** \> **Other New Records**.  
-  In the **Resource Record Type** window, select **Service Location (SRV)**, and then select **Create Record**. 
-   In the **New Resource Record** dialog box, make sure that the fields are set to precisely the following values:  
    -  Service: _sipfederationtls
    -  Protocol: _tcp
    -  Priority: 100
    -  Weight: 1
    -  Port: 5061
    -  Target (Hostname): sipfed.online.lync.com
-  Select **OK**. 
   
## Add a record to verify that you own the domain, if you haven't already
<a name="BKMK_verify"> </a>

Before you add the DNS records to set up your Microsoft services, Microsoft has to confirm that you own the domain you're adding. To do this, you add a record, following the steps below.
  
> [!NOTE]
> This record is used only to verify that you own your domain; it doesn't affect anything else. 
  

1. Gather information from Microsoft.  <br/> 
2. In the admin center, go to the **Settings** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834818" target="_blank">Domains</a> page. 
3. On the **Domains** page, in the **Actions** column for the domain that you are verifying, select **Start setup**. 
4. On the **Add a domain to Microsoft** page, select **Start step 1**. 
5. On the **Confirm that you own your domain** page, in the **See instructions for performing this step with** drop-down list, choose **General instructions**. 
6. From the table, copy the Destination or Points to Address value. You'll need it for the next step. We recommend copying and pasting this value, so that all of the spacing stays correct.

Add a TXT record. 
-  On the DNS Manager page for your domain, go to **Action** \> **Text (TXT)**. 
-   In the **New Resource Record** dialog box, select **Edit**.  
-  In the **Custom Host Names** area of the **New Resource Record** dialog box, make sure that the fields are set to precisely the following values. 

> [!IMPORTANT] 
> In some versions of Windows DNS Manager, the domain may have been set up so that when you create a txt record, the home name defaults to the parent domain. In this situation, when adding a TXT record, set the host name to blank (no value) instead of setting it to @ or the domain name. 

- Host Name: @
- Type: TXT
- Address: Paste the Destination or Points to Address value that you just copied from Microsoft here.  
- Select **OK** > **Done**.

Verify your domain in Microsoft.  
> [!IMPORTANT]
> Wait about 15 minutes before you do this, so the record you just created can update across the Internet.       

- Go back to Microsoft and follow the steps below to request a verification check. The check looks for the TXT record you added in the previous step. When it finds the correct TXT record, the domain is verified.  
1. In the admin center, go to the **Setup** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834818" target="_blank">Domains</a> page.
2. On the **Domains** page, in the **Action** column for the domain you are verifying, select **Start setup**. 
3. On the **Confirm that you own your domain** page, select **done, verify now**, and then in the confirmation dialog box, select **Finish**. 
   
> [!NOTE]
>  Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Troubleshoot issues after changing your domain name or DNS records](../get-help-with-domains/find-and-fix-issues.md). 
  
## Non-routable email address used as a UPN in your on-prem Active Directory
<a name="BKMK_ADNote"> </a>

If you're planning to synchronize your on-premises Active Directory with Microsoft, you'll want to make sure that the Active Directory user principal name (UPN) suffix is a valid domain suffix, and not an unsupported domain suffix such as @contoso.local. If you need to change your UPN suffix, see [How to prepare a non-routable domain for directory synchronization](../../enterprise/prepare-a-non-routable-domain-for-directory-synchronization.md).
  
> [!NOTE]
>  Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Troubleshoot issues after changing your domain name or DNS records](../get-help-with-domains/find-and-fix-issues.md). 

## Related content

[Transfer a domain from Micrsoft 365 to another host](../get-help-with-domains/transfer-a-domain-from-microsoft-to-another-host.md) (article)\
[Pilot Microsoft 365 from my custom domain](../misc/pilot-microsoft-365-from-my-custom-domain.md) (article)\
[Domains FAQ](../setup/domains-faq.yml) (article)