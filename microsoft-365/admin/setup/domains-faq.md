---
title: Domains Frequently Asked Questions
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
- Adm_TOC
ms.custom: 
- AdminSurgePortfolio
- okr_smb
search.appverid:
- BCS160
- MET150
- MOE150
- BEA160
- GEA150
ms.assetid: 1272bad0-4bd4-4796-8005-67d6fb3afc5a
<<<<<<< HEAD
description: "Learn more about domains by finding answers to your frequently asked questions."
=======
description: Learn more about domains (onmicrosoft domain and tranfer domain) by finding answers to your questions in FAQ.
ms.custom: 
- okr_smb
- seo-marvel-may2020
>>>>>>> ffdf1f056002c77b377a2a33833422567707e9b3
---

# Domains FAQ

::: moniker range="o365-21vianet"

> [!NOTE]
> The admin center is changing. If your experience doesn't match the details presented here, see 
[About the new Microsoft 365 admin center](https://docs.microsoft.com/microsoft-365/admin/microsoft-365-admin-center-preview?view=o365-21vianet).

::: moniker-end

This article contains answers to frequently asked questions about domains in Microsoft 365.

If you can't find an answer to your question, let us know by leaving a comment and we'll add it to the list.

In this article

- [What is MX priority?](#what-is-mx-priority)
- [How can I validate SPF records for my domain?](#how-can-i-validate-spf-records-for-my-domain)
- [What is a domain name?](#what-is-a-domain-name)
- [What happens if my DNS provider doesn't support certain record types?](#what-happens-if-my-dns-provider-doesnt-support-certain-record-types)
- [How do I set or change the default domain in Microsoft 365?](#how-do-i-set-or-change-the-default-domain-in-microsoft-365)
- [Can I add custom subdomains or multiple domains to Microsoft 365?](#can-i-add-custom-subdomains-or-multiple-domains-to-microsoft-365)
- [How do I transfer a domain from Microsoft 365 to another host?](#how-do-i-transfer-a-domain-from-microsoft-365-to-another-host)
- [Why do I have an "onmicrosoft.com" domain?](#why-do-i-have-an-onmicrosoftcom-domain)
- [Why do I have an "onmicrosoft.de" domain?](#why-do-i-have-an-onmicrosoftde-domain)
- [How do I verify my nonprofit or education status?](#how-do-i-verify-my-nonprofit-or-education-status)
    
## What is MX priority?

Mail is delivered to the mail exchange server with the lowest preference number (highest priority), so the MX record you use for mail routing should have the lowest preference number, typically 0 or  *High*  priority. 
  
- When you create an MX record, most DNS hosting providers require you to set the preference number.
    
- Some label the box  *preference*  , and some label it  *priority*  . 
    
- Some require a number, and some ask you to select  *Low*  ,  *Medium*  , or  *High*  . 
    
- If you only have one MX record, any value is fine for priority or preference.
    
- If you have more than one, make sure the MX record for mail routing is higher priority than the one used for validating that you own the domain.
    
## How can I validate SPF records for my domain?

It's important that you have or create  **only one TXT record for SPF**. If you already have an SPF record, you should append the new Microsoft 365 values to it, rather than create a new one. After you've added or updated your SPF record for Microsoft email, you should check to make sure that the syntax is correct with one of these tools: 
  
- [SPF Record Testing Tools](http://www.kitterman.com/spf/validate.html)
    
- [SPF Surveyor](https://dmarcian.com/spf-survey/)
    
- [Dig web interface](http://digwebinterface.com/)

## What is a domain name?

A domain is a unique name that appears after the **@** sign in email addresses, and after **www.** in web addresses. It typically takes the form of your organization's name and a standard Internet suffix, such as  *yourbusiness.com*  or  *stateuniversity.edu.* 
  
Using a custom domain like "**rob\@contoso.com**" with Microsoft 365 can help build credibility and recognition for your brand. 
  
<<<<<<< HEAD
You can [buy a domain in Microsoft 365 and we'll set it up automatically](../get-help-with-domains/buy-a-domain-name.md), or you can buy or bring one you already own from a domain registrar.
=======
## Can I transfer a domain I purchased from Microsoft to another provider?

Yes, but you can't transfer an Office 365 domain to another registrar until 60 days after you purchased it with Office 365.

Please note that a *Whois* query will show an Office 365 purchased domain registrar as Wild West Domains LLC. However, only Office 365 should be contacted regarding your Office 365 purchased domain.
  
Follow the steps below to get the code at Office 365, and then go to the other domain registrar's website to set up transferring your domain name (change domain or transfer domain) to that registrar.

::: moniker range="o365-worldwide"

1. In the admin center, go to the **Settings** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834818" target="_blank">Domains</a> page.

::: moniker-end

::: moniker range="o365-germany"

1. In the admin center, go to the **Settings** > <a href="https://go.microsoft.com/fwlink/p/?linkid=854615" target="_blank">Domains</a> page.

::: moniker-end

::: moniker range="o365-21vianet"

1. In the admin center, go to the **Settings** > <a href="https://go.microsoft.com/fwlink/p/?linkid=850625" target="_blank">Licenses</a> page.

::: moniker-end
    
2. On the **Domains** page, select the Office 365 domain that you want to transfer to another domain registrar, and then select **Domain Transfer** > **Enable domain transfer**.
       
4. Follow the steps to prepare for transferring your domain (transfer domain).
    
5. After you get the code, go to the website of the domain registrar where you want to manage your domain name going forward and follow their directions for transferring a domain (search for help on their website).
    
6. If you need to see the code again, on the **Domain settings** page in Office 365, select **View authorization code for domain transfer**.
    
7. After the domain transfer is complete, you'll renew your domain at the new domain registrar.
    
8. To finish the process, go back to the admin center **Domains** page and select **Complete Domain Transfer**. 

*Note: Please note that Office 365 purchased domains are not eligible for Name Server changes or transferring the domain between Office 365 Tenants.  If either of these are required, the domain registration will need to be transferred to another registrar.*
    
## How do I change how my DNS records are managed in Office 365?

### Change DNS management to a DNS host outside Office 365
   
1. Sign in to the domain registrar for your domain.
    
2. Find the area on the registrar's website where you update nameserver records, and update the nameservers to point to your domain's DNS host. (The DNS host is often the domain registrar.)
    
3. Follow a link to go to the domains setup wizard:

::: moniker range="o365-worldwide"

4. In the admin center, go to the **Settings** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834818" target="_blank">Domains</a> page.

::: moniker-end

::: moniker range="o365-germany"

4. In the admin center, go to the **Settings** > <a href="https://go.microsoft.com/fwlink/p/?linkid=854615" target="_blank">Domains</a> page.

::: moniker-end

::: moniker range="o365-21vianet"

4. In the admin center, go to the **Settings** > <a href="https://go.microsoft.com/fwlink/p/?linkid=2007048" target="_blank">Domains</a> page.

::: moniker-end
    
5. On the **Domains** page, select the domain you're switching, and select **DNS management**.
    
6. In the domains setup wizard, on the **Set up your online services** page, select **I'll manage my own DNS records**, and then select **Next**.
    
7. Add the DNS records suggested by the wizard on the **Update DNS settings** page to your registrar's website. 
    
8. After you've added the records, come back to Office 365 and select **Verify**.
    

### Change DNS management to Office 365

::: moniker range="o365-worldwide"

1. In the admin center, go to the **Settings** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834818" target="_blank">Domains</a> page..

::: moniker-end

::: moniker range="o365-germany"

1. In the admin center, go to the **Settings** > <a href="https://go.microsoft.com/fwlink/p/?linkid=854615" target="_blank">Domains</a> page.

::: moniker-end

::: moniker range="o365-21vianet"

1. In the admin center, go to the **Settings** > <a href="https://go.microsoft.com/fwlink/p/?linkid=2007048" target="_blank">Domains</a> page.

::: moniker-end
    
2. On the **Domains** page, select the domain you're switching (domain change), and select **DNS Management**.
    
3. In the domains setup wizard, on the **Set up your online services** page, select **Set up my online services for me. (Recommended)**, and then select **Next**.
    
4. If you haven't verified the domain yet, follow the steps to do that first.
    
5. On the **Update DNS settings** page, we list the nameservers for Office 365. Go to the domain registrar for your domain, and update the nameservers to the Office 365 nameservers. 
    
4. After you've updated the nameservers, **wait at least an hour**. Then, back in the wizard in Office 365, select **Verify**.
>>>>>>> ffdf1f056002c77b377a2a33833422567707e9b3
    
## What happens if my DNS provider doesn't support certain record types?

If you manage your own DNS records and your DNS host does not support all the DNS records that Microsoft 365 needs, some Microsoft 365 features won't work. We recommend that you transfer your domain to a registrar that supports all required DNS records.
  
Providers that support all required DNS records:
  
- Dynadot
    
- eNomCentral
    
- Europe Registry
    
- GoDaddy
    
- Hover
    
- MyHosting.com
    
- Name.com
    
- Nearly Free Speech
    
- Nettica
    
- Network Information Center (NIC)
    
- Network Solutions
    
- Register.com
  
<<<<<<< HEAD
## How do I set or change the default domain in Microsoft 365?
=======
## How do I set or change the onmicrosoft domain in Office 365?
>>>>>>> ffdf1f056002c77b377a2a33833422567707e9b3

You must have at least one custom domain that you've added to Microsoft 365 before you can choose a default domain.

::: moniker range="o365-worldwide"

1. In the admin center, go to the **Settings** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834818" target="_blank">Domains</a> page.

::: moniker-end

::: moniker range="o365-germany"

1. In the admin center, go to the **Settings** > <a href="https://go.microsoft.com/fwlink/p/?linkid=854615" target="_blank">Domains</a> page.

::: moniker-end

::: moniker range="o365-21vianet"

1. In the admin center, go to the **Settings** > <a href="https://go.microsoft.com/fwlink/p/?linkid=2007048" target="_blank">Domains</a> page.

::: moniker-end
    
2. On the **Domains** page, select the domain you want to set as the default for new email addresses. 
    
3. Select **Set as default**.
    
::: moniker range="o365-worldwide"

You cannot change the name of your initial  *.onmicrosoft.com*  domain. 

::: moniker-end

::: moniker range="o365-germany"

You cannot change the name of your initial  *.onmicrosoft.de*  domain. 

::: moniker-end

::: moniker range="o365-21vianet"

You cannot change the name of your initial  *.partner.onmschina.cn*  domain. 

::: moniker-end

## Can I add custom subdomains or multiple domains to Microsoft 365?

::: moniker range="o365-worldwide"

Yes. To add subdomains, you must manage your own DNS settings at your registrar's website. If you are letting Microsoft manage your DNS settings with NS records, or if you bought the domain from Microsoft, you can't add subdomains.

::: moniker-end

::: moniker range="o365-germany"

Yes! To add subdomains, you must manage your own DNS settings at your registrar's website. If you are letting Microsoft manage your DNS settings with NS records, or if you bought the domain from Microsoft, you can't add subdomains.

::: moniker-end

::: moniker range="o365-21vianet"

Yes! To add subdomains, you must manage your own DNS settings at your registrar's website. If you are letting 21Vianet manage your DNS settings with NS records, you can't add subdomains.

::: moniker-end

Typically, you can add up to 900 domains to your Microsoft 365 subscription.
  
For example, you could add the domains contoso.com and contosomarketing.com, and then add the subdomains www.contoso.com, www.partners.contoso.com, www.partners.marketing.contoso.com, and so on.
  
When you add a subdomain, it is automatically verified based on the parent domain that is being verified.
  
When you add multiple domains to Microsoft 365, you can host any of the services (like email) on any of the domains you've added.  *When you change your email to Microsoft 365, by updating a domain's MX record, ALL email sent to that domain will start coming to Microsoft 365.* 
 
::: moniker range="o365-worldwide"

> [!NOTE]
> If you added a contoso.com domain to a Microsoft 365 subscription, you can also add the subdomain xyz.contoso.com to another Microsoft 365 organization. When adding the subdomain, you are prompted to add a TXT record in the DNS hosting provider.

## How do I transfer a domain from Microsoft 365 to another host?

For the procedure to transfer a domain, see [Transfer a domain from Microsoft to another host](https://docs.microsoft.com/microsoft-365/admin/get-help-with-domains/transfer-a-domain-from-microsoft-to-another-host).

## Pilot Microsoft 365 from my custom domain

For the procedure to pilot Microsoft 365 email functionality from a custom domain to a Microsoft 365 mailbox, see [Pilot Microsoft 365 from my custom domain](https://docs.microsoft.com/microsoft-365/admin/misc/pilot-microsoft-365-from-my-custom-domain).

## Why do I have an "onmicrosoft.com" domain?

Microsoft 365 creates a domain for you, like *contoso.onmicrosoft.com*, when you sign up with the service. The user ID that you create when you sign up includes the domain, like *alan@contoso.onmicrosoft.com*. 
  
 **If you want to have your email look like *alan\@contoso.com*:** [buy the domain](../get-help-with-domains/buy-a-domain-name.md) or just follow the steps in [Add your users and domain to Microsoft 365](add-domain.md) if you own it already. 
  
- **You can't rename the onmicrosoft domain after sign-up.** For example, if the initial domain you chose was fourthcoffee.onmicrosoft.com, you can't change it to be fabrikam.onmicrosoft.com. To use a different onmicrosoft.com domain, you'd have to start a new subscription with Microsoft 365. 
    
- **You can't rename your team site URL.** Your team site URL is based on your onmicrosoft.com domain name. Unfortunately, because of the way SharePoint Online architecture works, you can't rename the team site. 
    
- **You can't remove your onmicrosoft domain.** Microsoft 365 needs to keep it around because it's used behind the scenes for your subscription. But you don't have to use the domain yourself after you've added a custom domain. 
    
You can keep using the initial onmicrosoft.com domain even after you add your domain. It still works for email and other services, so it's your choice.
  
::: moniker-end

::: moniker range="o365-germany"
## Why do I have an "onmicrosoft.de" domain?

Microsoft 365 creates a domain for you, like *contoso.onmicrosoft.de*, when you sign up with the service. The user ID that you create when you sign up includes the domain, like *alan@contoso.onmicrosoft.de*. 
  
 **If you want to have your email look like *alan@contoso.de*:** [buy the domain](../get-help-with-domains/buy-a-domain-name.md) or just follow the steps in [Add your users and domain to Microsoft 365](add-domain.md) if you own it already. 
  
- **You can't rename the onmicrosoft domain after sign-up.** For example, if the initial domain you chose was fourthcoffee.onmicrosoft.de, you can't change it to be fabrikam.onmicrosoft.de. To use a different onmicrosoft.de domain, you'd have to start a new subscription with Microsoft 365. 
    
- **You can't rename your team site URL.** Your team site URL is based on your onmicrosoft.de domain name.Unfortunately, because of the way SharePoint Online architecture works, you can't rename the team site. 
    
- **You can't remove your onmicrosoft domain.** Microsoft 365 needs to keep it around because it's used behind the scenes for your subscription. But you don't have to use the domain yourself after you've added a custom domain. 
    
You can keep using the initial onmicrosoft.de domain even after you add your domain. It still works for email and other services, so it's your choice.
  
::: moniker-end

## How do I verify my nonprofit or education status?

1. Select **Setup** in the [admin center](https://docs.microsoft.com/microsoft-365/admin/admin-home) to start the wizard. (Be sure to sign in to Microsoft 365 first.) 
    
2. To become the admin for your school, select the  **Become an admin** option in Microsoft 365. 
    
3. You'll be prompted to add a TXT DNS record at the DNS host website for your domain. Why? Because by signing in at the DNS host and adding a record for your domain, you prove to Microsoft 365 that you own the domain name.
    
4. After you add the record, you'll go back to the Microsoft 365 portal and confirm that you've added it, so Microsoft 365 can check.
    
Have a nonprofit and want to get Microsoft 365? [Make sure your organization qualifies](https://www.microsoft.com/en-us/nonprofits/eligibility) and then sign up for the service. 
  
Want to know more about becoming the admin for your school? [Learn all about it](https://docs.microsoft.com/microsoft-365/education/deploy/becoming-an-admin-in-office-365-education
<<<<<<< HEAD
).
=======
).
  
## Can I pilot Office 365 with just a few email addresses from my custom domain?

You can, but there are limitations:
  
- Your current email provider must provide email forwarding.
    
- You need to manage your Office 365-related DNS records at your DNS hosting provider, rather than having Office 365 manage these records for you. To learn what this entails, see Add your domain to Office 365 when you want to manage your own DNS records.
    
- Some Office 365 features won't be available:
- Users won't be able to see free/busy information for the users who are on the other email provider.
- Admins won't be able to administer everyone's accounts from one place.
- Users may not be able to use Office 365 spam filtering

### How to set up an Office 365 pilot
    
1. Sign in to the Microsoft 365 admin center
    
    1. Sign in to Office 365 with your work or school account.
        
    2. Go to **Settings** \> **Domains**. 
    
2. Verify that you own the domain you want to use
    
    1. On the **Domains** page, select **Add domain**. 
        
    2. In the panel, type the domain, in this example cohowinery.com, and then select **Next**. 
        
    3. On the **Verify** domain page, follow the step-by-step instructions. 
        
    4. In the drop-down list, select your DNS hosting provider, and follow the instructions to show that you own the domain.
        
    5. Select **Verify**. It takes between a few minutes and 72 hours for DNS changes to take effect. 
        
    6. When verification is successful, you'll be asked to modify your DNS records.
    
3. Mark the domain as shared in Exchange Online
    
    1. Go to the **Exchange admin center** (EAC). 
        
    2. In the **Mail flow** section, select **Accepted domains**. 
        
    3. Double-click the domain you want to modify.
        
    4. In the window that opens, select **Internal Relay**. 
        
    5. Select **Save**. This setting may require a few minutes to take effect. 
    
4. Optionally, unblock the existing email server
    
    1. Office 365 uses Exchange Online Protection (EOP) for spam protection. If EOP detects a high volume of spam being forwarded by your current mail server, it may block it, which would prevent forwarding from working. If you are confident with the spam protection your other email provider uses, you can add their server to an allow list in Office 365. However, this will also allow any spam that arrives through your original server to come through to the Office 365 mailboxes, and you won't be able to evaluate how well Office 365 prevents spam.
    
    2. Go to Exchange admin center (EAC).
        
    3. In EAC, select **Protection**, and then select **Connection filter**. 
        
    4. In the **IP Allow list**, select **+**, and add the mail server IP address that you can get from your current email provider. 
    
5. Create user accounts and set the primary (reply-to) address
    
    1. Go to the Microsoft 365 admin center.
        
    2. On the left navigation bar, select **Users** \> **Active Users**. 
        
    3. Create the user accounts.
        
    4. For each account select **+ (New)**, and fill out the required information. 
        
    5. To keep user's email the same as it is currently, the **User name** field should be exactly the same as the user's existing email address. 
        
    6. Next to User name, select your custom domain name from the drop-down list.
        
    7. Select **Create** \> **Close**. 
        
6. Update DNS records at your DNS hosting provider
    
    1. Sign in to your DNS hosting provider's website, and follow the [Create DNS records at any DNS hosting provider for Office 365 steps](../get-help-with-domains/create-dns-records-at-any-dns-hosting-provider.md). **Make the following exceptions:**
    
        1. Do not create a new MX record or change your existing MX record.
            
        2. If you already have a Sender Policy Framework (SPF) record for your previous email provider, instead of creating a new SPF (TXT) record for Exchange Online, just add "include:spf.protection.outlook.com" to the current TXT record. For example, "v=spf1 mx include:adatum.com include:spf.protection.outlook.com ~all".
            
        3. If you don't have an SPF record yet, modify the one recommended by Office 365 to include the domain for your current email provider, plus spf.protection.outlook.com. This authorizes outgoing messages from both email systems.
            
7. Set up email forwarding at your current provider
    
    1. At your current email provider, set up forwarding for your users email accounts to your onmicrosoft.com domain:
        
    2. User A's mailbox should forward to usera@yourcompany.onmicrosoft.com
        
    3. User B's mailbox should forward to userb@yourcompany.onmicrosoft.com
        
    4. When you complete this step:
        
    5. All mail sent to usera@yourcompany.com and userb@yourcompany.com will be available in Office 365.
    
    6. Notes:
        
        - Contact your current email provider for the exact steps for setting up forwarding.
            
        - You don't need to keep a copy of messages at the current email provider.
            
        - Most providers forward email leaving the Reply-to address of the sender intact, so that replies go to the original sender.
    
8. Test mail flow
    
    1. Sign in to Outlook Web App using User A's credentials.
        
    2. Perform the following tests:
        
    3. Test local Microsoft email. For example, send an email to User B. This email should be delivered immediately. In this scenario, the message will not be routed to User B's mailbox on your original server because Office 365 sees the mailbox as being local.
        
    4. Test email to someone who's on the other email system. For example, send an email to User C. This email should be delivered to User C's mailbox on your original mail server.
        
    5. From an outside account, or from an employee's email account on the other email system, verify that forwarding is set up properly on the other email system. For example, from User C's original server account or a Hotmail account, send User A an email and verify that it arrives in User A's Office 365 mailbox.
        
9. Move mailbox contents
    
    1. Since there are only two users to move, and since User A and User B are both using Outlook already, the email can be moved by opening the old .PST file in the new Outlook profile and copying the messages, calendar items, contacts, etc. as shown in Import Outlook items from an Outlook Data File (.pst). Once organized in the proper locations in the Office 365 mailbox, the items can all be accessed from any device, anywhere.
        
    2. When more mailboxes are involved, or if the employees are not already using Outlook, you can use the migration tools available in the Exchange admin center. To get started, go to Exchange admin center and follow the directions in Migrate Email from an IMAP Server to Exchange Online Mailboxes.
>>>>>>> ffdf1f056002c77b377a2a33833422567707e9b3
