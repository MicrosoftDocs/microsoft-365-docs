---
title: "Anti-spam protection FAQ"
ms.author: krowley
author: kccross
manager: dansimp
ms.date: 12/9/2016
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
ms.assetid: c534a35d-b121-45da-9d0a-ce738ce51fce
ms.collection:
- M365-security-compliance
description: "This topic provides frequently asked questions and answers about anti-spam protection. Answers are applicable for Microsoft Exchange Online and Exchange Online Protection (EOP) customers."
---

# Anti-spam protection FAQ

This topic provides frequently asked questions and answers about anti-spam protection. Answers are applicable for Microsoft Exchange Online and Exchange Online Protection (EOP) customers. 
  
> [!TIP]
> For questions and answers about safe sender and blocked sender lists, see [Safe sender and blocked sender lists in Exchange Online](safe-sender-and-blocked-sender-lists-faq.md). For questions and answers about the quarantine, see [Quarantine FAQ](quarantine-faq.md). 
  
 **Q. By default, what happens to a spam-detected message?**
  
A. **For inbound messages:** The majority of spam is deleted via connection filtering, which is based on the IP address of the sender. The service then inspects the contents of the message. By default, content-filtered spam is sent to the recipient's Junk Email folder. You can change this action. For example, you can choose to send spam messages to the quarantine instead by configuring the content filter policy. 
  
> [!IMPORTANT]
> For EOP standalone customers: In order to ensure that the **Move message to Junk Email folder** action will work with on-premises mailboxes, you must configure two Exchange mail flow rules (also known as transport rules) on your on-premises servers to detect spam headers added by EOP. For details, see [Ensure that spam is routed to each user's Junk Email folder](ensure-that-spam-is-routed-to-each-user-s-junk-email-folder.md). 
  
 **For outbound messages:** The message is either routed through the higher risk delivery pool or is bounced and not delivered, in which case the sender should receive a delivery status notification (DSN) message telling them that the message couldn't be delivered. 
  
 **Q. What's a zero-day spam variant and how is it handled by the service?**
  
A. A zero-day spam variant is a first generation, previously unknown variant of spam that's never been captured or analyzed, so our spam content filters don't yet have any information available for detecting it. After a zero-day spam sample is captured and analyzed by our spam analysts, if it meets the spam classification criteria, our spam content filters are updated to detect it, and it's no longer considered "zero-day." ( **Note:** If you receive a message that may be a zero-day spam variant, in order to help us improve the service, please submit the message to Microsoft using one of the methods described in [Submit spam, non-spam, and phishing scam messages to Microsoft for analysis](submit-spam-non-spam-and-phishing-scam-messages-to-microsoft-for-analysis.md).)
  
 **Q. Do I need to configure the service to provide anti-spam protection?**
  
A. After you sign up for the service and add your domain, spam filtering is automatically enabled company-wide through the default anti-spam policies. The default policies are tuned to protect you without needing any additional configuration (aside from the exception noted above for EOP standalone customers). As an admin, you can edit the default anti-spam policies so that they're tailored to best meet the needs of your organization. For greater granularity, you can also create custom content filter policies and apply them to specified users, groups, or domains in your organization. Custom policies always take precedence over the default policy, but you can change the priority (that is, the running order) of your custom policies.
  
For more about configuring your anti-spam policies, see the following topics:
  
[Configure the connection filter policy](configure-the-connection-filter-policy.md)
  
[Configure your spam filter policies](configure-your-spam-filter-policies.md)
  
[Configure the outbound spam policy](configure-the-outbound-spam-policy.md)
  
 **Q. If I make a change to an anti-spam policy, how long does it take after I save my changes for them to take effect?**
  
A. It may take up to 1 hour for the changes to take effect.
  
 **Q. Is bulk email filtering automatically enabled?**
  
A. By default, the **Bulk mail** advanced spam filtering option is enabled for new customers. For migrated customers, this setting will match your FOPE configuration. For more information about bulk email, see [What's the difference between junk email and bulk email?](what-s-the-difference-between-junk-email-and-bulk-email.md)
  
 **Q. Does the service provide URL filtering?**
  
A. Yes the service has a URL filter that checks for URLs within messages. If URLs associated with known spam or malicious content are detected then the message is marked as spam.
  
 **Q. How can customers using the service send false negative (spam) and false positive (non-spam) messages to Microsoft?**
  
A. Spam and non-spam messages can be submitted to Microsoft for analysis in several ways. For more information, see [Submit spam, non-spam, and phishing scam messages to Microsoft for analysis](submit-spam-non-spam-and-phishing-scam-messages-to-microsoft-for-analysis.md). 
  
 **Q. Can I get spam reports?**
  
A. Yes, for example you can get a spam detection report in the Microsoft 365 admin center. This report shows spam volume as a count of unique messages. For more information about reporting, see the following links:
  
Exchange Online customers: [Monitoring, Reporting, and Message Tracing in Exchange Online](https://technet.microsoft.com/library/87bdeeae-bd80-4a3b-95c5-62fbaf97c2e8.aspx)
  
Exchange Online Protection customers: [Reporting and message trace in Exchange Online Protection](reporting-and-message-trace-in-exchange-online-protection.md)
  
 **Q. Someone sent me a message and I can't find it. I suspect that it may have been detected as spam. Is there a tool that I can use to find out?**
  
A. Yes, the message trace tool enables you to follow email messages as they pass through the service, in order to find out what happened to them. For more information about how to use the message trace tool to find out why a message was marked as spam, see [Was a message marked as spam?](https://technet.microsoft.com/library/aa49e3f9-a5b1-4410-aac2-ddbbf3f5bfb2.aspx#BKMB_Whywasamessagemarkedasspam)
  
 **Q. Will the service throttle (rate limit) my mail if my users send outbound spam?**
  
A. If more than half of the mail that is sent from a user through the service within a certain time frame (for example, per hour), is determined to be spam by Office 365, the user will be blocked from sending messages. In most cases, if an outbound message is determined to be spam, it is routed through the high-risk delivery pool, which reduces the probability of the normal outbound-IP pool being added to a block list.
  
You can send a notification to a specified email address when a sender is blocked sending outbound spam. For more information about this setting, see [Configure the outbound spam policy](configure-the-outbound-spam-policy.md).
  
 **Q. Can I use a third-party anti-spam and anti-malware provider in conjunction with Exchange Online?**
  
A. Yes, you may configure another spam and malware filtering service to protect your Exchange Online mailboxes. To do this for inbound mail, you should redirect your email messages to the third-party provider by changing your MX records to point to the third-party provider, and then redirect the messages to EOP for additional processing. To do this for outbound mail, please configure the message delivery destination to the third-party provider (smart host).
  
 **Q. Does Microsoft have any documentation about how I can protect myself from phishing scams?**
  
A. Yes we do, please consult the following articles:
  
[Get help with phishing scams, lottery fraud, and other types of scams](https://go.microsoft.com/fwlink/p/?LinkId=325606)
  
[Email and web scams: How to help protect yourself](https://go.microsoft.com/fwlink/p/?LinkID=325607)
  
 **Q. Are spam and malware messages being investigated as to who sent them, or being transferred to law enforcement entities?**
  
A. The service focuses on spam and malware detection and removal, though we may occasionally investigate especially dangerous or damaging spam or attack campaigns and pursue the perpetrators. This may involve working with our legal and digital crime units to take down a spammer botnet, blocking the spammer from using the service (if they're using it for sending outbound email), and passing the information on to law enforcement for criminal prosecution.
  
 **Q. What are a set of best outbound mailing practices that will ensure that my mail is delivered?**
  
A. The guidelines presented below are best practices for sending outbound email messages.
  
1. **The sending domain of the email should resolve in DNS.**
    
    For example, if the sender is user@example.com, the domain example.com resolves to the IP address 192.0.43.10. If a sending domain has no A-record and no MX record in DNS, the service will route the message through its higher risk delivery pool regardless of whether or not the content of the message is spam. For more information about the higher risk delivery pool, see [High-risk delivery pool for outbound messages](high-risk-delivery-pool-for-outbound-messages.md). 
    
2. **The sending IP address of the outbound mail server should have a reverse DNS (PTR) entry.**
    
    For example, if sending from the IP address 192.0.43.10, the reverse DNS entry for this IP is 43-10.any.icann.org. 
    
3. **The HELO/EHLO and MAIL FROM commands should be consistent and be present in the form of a domain name rather than an IP address.**
    
    The HELO/EHLO command should be configured to match the reverse DNS of the sending IP address so that the domain remains the same across the various parts of the message headers.
    
4. **Ensure that proper SPF records are set up in DNS.**
    
    SPF records are a mechanism for validating that mail sent from a domain really is coming from that domain and is not spoofed. For more information about SPF records, see the following links:
    
    [Set up SPF in Office 365 to help prevent spoofing](set-up-spf-in-office-365-to-help-prevent-spoofing.md)
    
    [Domains FAQ](/office365/admin/setup/domains-faq)
    
5. **Signing email with DKIM, sign with relaxed canonicalization.**
    
    If a sender wants to sign their messages using Domain Keys Identified Mail (DKIM) and they want to send outbound mail through the service, they should sign using the relaxed header canonicalization algorithm. Signing with strict header canonicalization may invalidate the signature when it passes through the service.
    
6. **Domain owners should have accurate information in the WHOIS database.**
    
    This identifies the owners of the domain and how to contact them by entering the stable parent company, point of contact, and name servers.
    
7. **For bulk mailers, the From: name should reflect who is sending the message, while the subject line of the message should be a brief summary on what the message is about.**
    
    The message body should have a clear indication of the offering, service, or product. For example, if a sender is sending out a bulk mailing for the Contoso company, the following is what the email From and Subject should resemble:
    
    From: marketing@contoso.com
    
    Subject: New updated catalog for the Christmas season! 
    
    The following is an example of what not to do because it is not descriptive:
    
    From: user@hotmail.com
    
    Subject: Catalogs
    
8. **If sending a bulk mailing to many recipients and the message is in newsletter format, there should be a way of unsubscribing at the bottom of the message.**
    
    The unsubscribe option should resemble the following:
    
    This message was sent to example@contoso.com by sender@fabrikam.com. Update Profile/Email Address | Instant removal with **SafeUnsubscribe**™ | Privacy Policy
    
9. **If sending bulk email, list acquisition should be performed using double opt-in. If you are a bulk mailer, double opt-in is an industry best practice.**
    
    Double opt-in is the practice of requiring a user to take two actions to sign up for marketing mail:
    
1. Once when the user clicks on a previously unchecked check box where they opt-in to receive further offers or email messages from the marketer.
    
2. A second time when the marketer sends a confirmation email to the user's provided email address asking them to click on a time-sensitive link that will complete their confirmation.
    
    Using double opt-in builds a good reputation for bulk email senders.
    
10. **Bulk senders should create transparent content for which they can be held accountable:**
    
1. Verbiage requesting that recipients add the sender to the address book should clearly state that such action is not a guarantee of delivery.
    
2. When constructing redirects in the body of the message, use a consistent link style.
    
3. Don't send large images or attachments, or messages that are solely composed of an image.
    
4. When employing tracking pixels (web bugs or beacons), clearly state their presence in your public privacy or P3P settings.
    
11. **Format outbound delivery status notifications.**
    
    When generating delivery status notification messages, senders should follow the format of a bounce as specified in [RFC 3464](https://go.microsoft.com/fwlink/?LinkId=279715).
    
12. **Remove bounced email addresses for non-existent users.**
    
    If you receive an NDR indicating that an email address is no longer in use, remove the non-existent email alias from your list. Email addresses change over time, and people sometimes discard them.
    
13. **Use Hotmail's Smart Network Data Services (SNDS) program.**
    
    Hotmail uses a program called Smart Network Data Services that allows senders to check complaints submitted by end users. The SNDS is the primary portal for troubleshooting delivery problems to Hotmail.
    
## For more information

[Office 365 Email Anti-Spam Protection](https://support.office.com/article/6a601501-a6a8-4559-b2e7-56b59c96a586)
  
[Safe sender and blocked sender lists in Exchange Online](safe-sender-and-blocked-sender-lists-faq.md)
  
[Anti-spam message headers](anti-spam-message-headers.md)
  
[Backscatter messages and EOP](backscatter-messages-and-eop.md)
  

