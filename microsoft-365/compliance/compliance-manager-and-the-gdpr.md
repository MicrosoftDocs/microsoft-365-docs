---
title: "Microsoft Compliance Manager and the GDPR"
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
audience: Admin
ms.topic: article
ms.service: O365-seccomp
ms.localizationpriority: null
ROBOTS: NOINDEX, NOFOLLOW
ms.collection: M365-security-compliance
search.appverid: 
- MOE150
- MET150
description: "Microsoft Compliance Manager is a free workflow-based risk assessment tool in the Microsoft Service Trust Portal. Compliance Manager enables you to track, assign, and verify regulatory compliance activities related to Microsoft cloud services."
---

# Microsoft Compliance Manager and the GDPR

The General Data Protection Regulation (GDPR) enacted by the European Union can impact your compliance strategy and mandate specific actions to manage user and customer information used in Compliance Manager.

## User Privacy settings

Certain regulations require that an organization must be able to delete user history data. Compliance Manager provides **User Privacy Settings** functions that allow administrators to:
  
- [Search for a user](#search-for-a-user)
- [Export a report of account data history](#export-a-report-of-account-data-history)
- [Delete user data history](#delete-user-data-history)
  
## Search for a user

To search for a user account:
  
1. Enter the user email alias (the information to the left of the @ symbol) and choose the domain name from the  domain suffix list on the right. For organizations with multiple registered domains, double check the domain name suffix to ensure that it is correct.

2. When you have the username correctly entered, select **Search**.

3. For user accounts not returned, the page displays **User not found**. Check the user's email address information and make corrections as necessary. To retry, select **Search**.

4. For user accounts returned, the text of the button changes from **Search** to **Clear**. This indicates that the returned user account is the operating context for the additional functions and that these functions apply to this user account.

5. To clear search results and search for a different user, select **Clear**.

## Export a report of account data history

For each user account identified, you can generate a report of dependencies linked to the account. This information allows you to reassign open Action Items or ensure access to previously uploaded evidence.
  
 To generate and export a report:
  
1. Select **Export** to generate and download a report of the Compliance Manager control Action Items currently assigned to the returned user account, and the list of documents uploaded by that user. If there are no assigned actions or uploaded documents, an error message states "No data for this user".

2. The report downloads in the background of the active browser window — if you don't see a download popup that you want to check your browser download history.

3. Open the document to review the report data.

> [!IMPORTANT]
> The report data is not a historical list that retains and displays state changes to Action Item assignment history. The generated report is a snapshot of the control Action Items assigned at the time that the report is run (date and time stamp written into the report). For example, any subsequent reassignment of Action Items result in different snapshot report data if the report is generated again for the same user.
  
## Delete user data history

Sets all control Action Items assigned to the returned user to 'unassigned'. Sets the **uploaded by** value for any documents uploaded by the returned user to 'user removed'.
  
To delete the user account Action Item and document upload history:
  
1. Select **Delete**.

    A confirmation dialog is displayed: "*This removes all control Action Item assignments and the document upload history for the selected user. This action is permanent. Are you sure you want to continue?*"

2. To continue select **OK**, otherwise select **Cancel**.
