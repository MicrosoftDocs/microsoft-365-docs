---
title: "Admin submissions in Office 365, O365 submissions, Office 365 spam problem, O365 false negative, submit phish in office 365, submit email for scanning, suspicious email in Office 365, scan a mail, have Microsoft scan for phish, have Microsoft scan for spam, submit e-mail, submit email, dodgy email, bad actor mail, suspicious, untrusted mail, report phish emails to Microsoft, report phish emails to Microsoft, report malicious email to Microsoft, report scam email to Microsoft, report malware in email to Microsoft, spam email in inbox office 365, virus in email office 365"
ms.author: tracyp
author: MSFTTracyP
manager: dansimp
ms.date: 08/06/2019
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150  
ms.collection:
- M365-security-compliance
description: "Learn how to submit suspicious emails, phishing emails, spam emails, URLs, and files from an Office 365 tenant to Microsoft for scanning."
---

# How to submit suspected spam, phish, URLs, and files to Microsoft for Office 365 scanning
Admins and security professionals can submit emails by selecting the email file or supplying the network message ID. They can also submit URLs, and files for scanning by Microsoft in Office 365. The submissions section includes User Reported messages and is available to all customers using Exchange Online Protection (EOP) or higher SKUs.

When submitting an email information about any policies, settings, or configurations that may have allowed the incoming email into the tenant will be displayed if those settings overrode the scan verdict. Policies that may have allowed a mail include an individual user's safe sender list as well as tenant level policies such as Exchange Transport Rules (ETR). If the content is determined to be malicious, additional information may be displayed on the threats found. Finally customers who have Office 365 Advanced Threat Protection (ATP) with Threat Intelligence (TI) will see additional rich data about their submissions similar to what is shown in Threat Explorer. 

## How to direct suspicious content to Microsoft for Office 365 scanning
To submit content to Microsoft click the **New submission** button in the top left hand side of the submissions page. A flyout on the right side of the page appears with the option to submit either an email, URL, or file. 

### Submit a questionable email to Microsoft
![Email submission example](../media/submission-flyout-email.PNG)
1. Admin submissions supports email file submissions with the file types .msg, and .eml formats. It also supports submissions via Network Message ID. To submit an email select **email** and specify the email **network message ID** or upload the email file. In order to save an email as a file [follow these instructions when using Outlook](https://support.office.com/en-us/article/save-a-message-as-a-file-4821bcd4-7687-4d6d-a486-b89a291a56e2). 

2. Specify the recipient(s) to run the policy check against. The policy check will determine if the email bypassed scanning due to user or tenant level policies. An example would be checking if Safe Senders Policy or an Exchange Transport Rule applied to the specified users. There is also a button to select all recipients to save time.  

3. Specify if the email should have been filtered or not. If the email should have been filtered (False Negative) then specify if it should have been filtered as Spam, Phishing, or Malware. If it was blocked and should not have been filtered (False Positive) then select "Should not have been filtered".  

4. Click the **Submit** button.

#### Things to know 
If the filter was bypassed due to tenant or user settings upon submission information about the policy or setting that allowed or blocked the content will be displayed, but not a rescan result. This is because the original Microsoft verdict was overridden by tenant or user settings. 

If the filter was not bypassed due to one or more policies, the rescan will complete in several minutes. Additional information about the submission can be viewed by clicking on the status link when the status updates to completed located in the table of submissions under the submission graph. This includes the results of the policy check and the rescan verdict. 

It should be noted this does not run the content through the entire Office 365 ATP filtering stack again but runs a partial rescan based on certain attributes of the mail, URL, or file. Additionally all email submissions must contain a network message ID and belong to the same Office365 tenant that is performing the submission to be valid. 

### Send a suspect URL to Microsoft
![Email submission example](../media/submission-url-flyout.png)
1. To submit a URL select **URL** from the flyout. Type in the full URL including the protocol (**https://**). 

* When selecting **Should have been filtered** specify if the URL is phishing or malware.

2. Click the **Submit** button. 


### Submit a suspected file to Microsoft
![Email submission example](../media/submission-file-flyout.PNG)
1. To submit a file select **File** from the flyout and then upload the file to be scanned. 

2. Click the **Submit** button.


## Related topics

[Office 365 Advanced Threat Protection Plan 2](office-365-ti.md)
  
[Protect against threats in Office 365](protect-against-threats.md)
  
[View reports for Office 365 Advanced Threat Protection](view-reports-for-atp.md)
  
