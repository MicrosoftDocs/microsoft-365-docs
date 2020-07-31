---
# This template provides a structure for M365 admin SMB articles.
# For details about MAX content metadata requirements, see https://review.docs.microsoft.com/office-authoring-guide/metadata-for-max-content-on-dmc

title: "Article title goes here"      # (Required) Very important for SEO. See https://aka.ms/seo-for-writers-cheat-sheet
f1.keywords:
- NOCSH
ms.author: YourMicrosoftAlias         # (Required) Your Microsoft alias without @microsoft.com
author: YourGitHubUserName            # (Required) Your GitHub alias, not your Microsoft alias
manager: MicrosoftAliasOfManager      # (Required for MARVEL) Your manager's Microsoft alias without @microsoft.com
audience: Admin                       # (Required) Always Admin for admin SMB articles (options: Admin, ITPro, Developer)
ms.topic: article                     # (Required) Choose from: article, overview, reference 
ms.service: o365-administration       # (Required) Always o365-administration for admin SMB articles 
localization_priority: Normal         # (Required) Choose from: Normal, Priority, None
ms.collection:                        # (Required) Always M365-subscription-management for admin SMB articles   
- M365-subscription-management        # See metadata requirements link above for additional allowed values; not more than 2 allowed
- Adm_O365
- Adm_TOC
ms.custom: AdminSurgePortfolio        # (Optional) To help with reporting, always include AdminSurgePortfolio for admin SMB articles
search.appverid:                      # (Required for Minimaven content) Always MET150 for admin SMB articles
- MET150
description: "Brief summary of article here"   # (Optional) Helps with SEO. Recommended character length is 120-158 characters.
---

# Title

Add intro text here, if needed.

## Before you begin

Include this section for how-to articles. List anything that's required before the user begins the task. If there are multiple requirements, add them as a bulleted list. Include things like required permissions or admin roles, required licenses, links to tasks that must be completed before beginning this one, etc.

## Configure email forwarding

1. In the admin center, go to the **Users** / [Active users](https://go.microsoft.com/fwlink/p/?linkid=834822) page.
2. Select the name of the user whose email you want to forward to open the properties page. 
3. On the **Mail** tab, select **Manage email forwarding**. 
4. On the email forwarding page, select **Forward all emails sent to this mailbox**, enter the forwarding address, and choose whether you want to keep a copy of forwarded emails. If you don't see this option, make sure a license is assigned to the user account. Select **Save changes**.
    
    **To forward to multiple email addresses**, you can ask the user to set up a rule in Outlook to forward to the addresses. To learn more, see [Use rules to automatically forward messages](https://support.office.com/article/use-rules-to-automatically-forward-messages-45aa9664-4911-4f96-9663-ece42816d746). 
    
     Or, in the admin center, [create a distribution group](../setup/create-distribution-lists.md), [add the addresses to it](add-user-or-contact-to-distribution-list.md), and then set up forwarding to point to the DL using the instructions in this article.
    
5. Don't delete the account of the user who's email you're forwarding or remove their license!  If you do, email forwarding will stop.

## Next steps

Share the [Employee quick start guide](https://support.office.com/article/b9700090-ce64-4046-ab92-ce8488a7bc0f.aspx) with your new users to set things up, like [Office on a PC or Mac](https://support.office.com/article/4414eaaf-0478-48be-9c42-23adc4716658.aspx) and [Office mobile apps](https://support.office.com/article/7dabb6cb-0046-40b6-81fe-767e0b1f014f.aspx).

## Related content

[Lorem ipsum dolor sit amet](https://docs.microsoft.com/microsoft-365/admin/?view=o365-worldwide) (video)
[Risus at ultrices mi tempus imperdiet](https://docs.microsoft.com/microsoft-365/admin/?view=o365-worldwide) (article)
[Vestibulum morbi blandit cursus](https://docs.microsoft.com/microsoft-365/admin/?view=o365-worldwide) (article)
[Consequat mauris nunc congue](https://docs.microsoft.com/microsoft-365/admin/?view=o365-worldwide) (article)
[Orci a scelerisque purus semper](https://docs.microsoft.com/microsoft-365/admin/?view=o365-worldwide) (blog post)
