---
title: "How Office 365 ATP Safe Links works"
f1.keywords:
- NOCSH
ms.author: tracyp
author: msfttracyp
manager: dansimp
audience: Admin
ms.date:
ms.topic: overview
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: 
- Strat_O365_IP
- M365-security-compliance
description: "The Safe Links feature provides time-of-click verification of hyperlinks in Office documents and in email messages. Read this article to learn how ATP Safe Links works."
---

# How Office 365 ATP Safe Links works
> [!IMPORTANT] 
> For Office 365 ATP Safe Links to operate correctly, all of the Office 365 services need to be at the same version.
         
## How ATP Safe Links works with URLs in email

At a high level, here's how [ATP Safe Links](atp-safe-links.md) protection works for URLs in email (hosted in Office 365, not on-premises):
  
1. People receive email messages, some of which contain URLs.
    
2. All email goes through Exchange Online Protection, where internet protocol (IP) and envelope filters, signature-based malware protection, anti-spam and anti-malware filters are applied. 
    
3. Email arrives in people's inboxes.
    
4. A user signs in to Office 365, and goes to their email inbox.
    
5. The user opens an email message, and clicks on a URL in the email message.
    
6. The ATP Safe Links feature immediately checks the URL before opening the website. The URL is identified as blocked, malicious, or safe.
        
   - If the URL is to a website that is included in the organization's [custom blocked URLs list](set-up-a-custom-blocked-urls-list-wtih-atp.md), a [warning page](atp-safe-links-warning-pages.md) opens. 
    
   - If the URL is to a website that has been determined to be malicious, a [warning page](atp-safe-links-warning-pages.md) opens. 
    
   - If the URL goes to a downloadable file and your organization's [ATP Safe Links policies](set-up-atp-safe-links-policies.md) are configured to scan such content, the downloadable file is checked. 
    
   - If the URL is determined to be safe, the website opens.
    
## How ATP Safe Links works with URLs in Office documents 

At a high level, here's how [ATP Safe Links](atp-safe-links.md) protection works for URLs in Office 365 ProPlus or Business Premium applications (current versions of Word, Excel, and PowerPoint on Windows, Mac, or in a browser, Office apps on iOS or Android devices, Visio on Windows, OneNote in a browser):
  
1. People have installed Office 365 ProPlus or Business Premium on their computer, smartphone, or tablet. (Or, they are using Office in their browser.)
    
2. A user opens a Word, Excel, PowerPoint, OneNote (in the browser), or Visio (on desktop), and signs in to Office 365 Enterprise using their work or school account. The document contains URLs.
    
3. When the user clicks on a URL in the document, the link is checked by the ATP Safe Links service.
    
   - If the URL is to a website that is included in the organization's [custom blocked URLs list](set-up-a-custom-blocked-urls-list-wtih-atp.md), the user is taken to a [warning page](atp-safe-links-warning-pages.md).
    
   - If the URL is to a website that has been determined to be malicious, the user is taken to a [warning page](atp-safe-links-warning-pages.md).
    
   - If the URL goes to a downloadable file and the [ATP Safe Links policies](set-up-atp-safe-links-policies.md) are configured to scan such downloads, the downloadable file is checked. 
    
   - If the URL is considered safe, the user is taken to the website.
      
   - If the URL check fails, Safe Links' protection will not trigger. On the desktop clients, the user will be warned before proceeding through to the site.
      
> [!NOTE]
> It may take several seconds at the beginning of each session to verify that the user has ATP Safe Links for Office enabled. 
      
