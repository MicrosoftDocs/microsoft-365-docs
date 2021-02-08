---
title: Create team sites - Political campaign dev environment
f1.keywords: 
  - NOCSH
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 05/21/2018
audience: ITPro
ms.topic: article
ms.collection: 
  - Ent_O365
  - Strat_O365_Enterprise

localization_priority: Priority
search.appverid: 
  - MET150
ms.custom: seo-marvel-apr2020
ms.assetid: c2112ce8-1c4b-424f-b200-59e161db2d21
description: "Summary: Create public, private, sensitive, and highly confidential SharePoint Online team sites in your political campaign dev/test environment."
ms.technology: mdo
ms.prod: m365-security
---

# Create team sites in a political campaign dev/test environment

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]

**Applies to**

- [Microsoft Defender for Office 365 plan 2](https://go.microsoft.com/fwlink/?linkid=2148715)
- 
 **Summary:** Create public, private, sensitive, and highly confidential SharePoint Online team sites in your political campaign dev/test environment. 
   
Use the instructions in this article to create a dev/test environment that includes the four different types of SharePoint Online team sites for the [Microsoft Security Guidance for Political Campaigns, Nonprofits, and Other Agile Organizations](microsoft-security-guidance-for-political-campaigns-nonprofits-and-other-agile-o.md) solution. These sites are described in detail on Topic 10, titled **SharePoint and OneDrive for Business**.

## Phase 1: Create your political campaign dev/test environment

First, follow the instructions in [Configure groups and users for a political campaign dev/test environment](configure-groups-and-users-for-a-political-campaign-dev-test-environment.md) to create your subscriptions, users, and groups.

## Phase 2: Create labels

In this phase, you create the labels for the different levels of security for SharePoint Online team site document folders.

1. If needed, sign in to the admin center with the credentials of the global administrator account of your trial subscription. For help, see [Where to sign in to Microsoft 365](https://support.microsoft.com/office/e9eb7d51-5430-4929-91ab-6157c5a050b4).

2. From the **Microsoft Office Home** tab, click the **Admin** tile.

3. From the new **Microsoft 365 admin center** tab of your browser, click **Admin centers > Security & Compliance**.

4. From the new **Home - Security & Compliance** tab of your browser, click **Classifications > Labels**.

5. From the **Home > Labels** pane, click **Create a label**.

6. On the **Name your label** pane, type **Internal**, and then click **Next**.

7. On the **Label settings** pane, click **Next**.

8. On the **Review your settings** pane, click **Create this label**, and then click **Close**.

9. Repeat steps 5-8 for these additional labels:

   - Private
   - Sensitive
   - Highly Confidential

10. From the **Home > Labels** pane, click **Publish labels**.

11. On the **Choose labels to publish** pane, click **Choose labels to publish**.

12. On the **Choose labels** pane, click **Add** and select all four labels.

13. Click **Done**.

14. On the **Choose labels to publish** pane, click **Next**.

15. On the **Choose locations** pane, click **Next**.

16. On the **Name your policy** pane, type **Campaign** in **Name**, and then click **Next**.

17. On the **Review your settings** pane, click **Publish labels**, and then click **Close**.

## Phase 3: Create your SharePoint Online team sites

In this phase, you create and configure SharePoint Online team sites for your political campaign corresponding to the four types of SharePoint Online team sites.

### Campaign wide team site

To create a baseline public SharePoint Online team site, do the following:

1. If needed, use a browser on your local computer and sign in to the admin center (<https://admin.microsoft.com>) using your global administrator account.

2. In the list of tiles, click **SharePoint**.

3. On the new **SharePoint** tab in your browser, click **+ Create site**.

4. On the **Create a site** page, click **Team site**.

5. In **Site name**, type **Campaign wide**.

6. In **Team site description**, type **SharePoint site for the entire campaign**.

7. In **Privacy settings**, select **Public - anyone in the organization can access this site**, and then click **Next**.

8. On the **Who do you want to add?** pane, click **Finish**.

Next, configure the documents folder of the Campaign wide team site for the Internal label.

1. In the **Campaign wide-Home** tab of your browser, click **Documents**.

2. Click the settings icon, and then click **Library settings**.

3. Under **Permissions and Management**, click **Apply label to items in this library**.

4. In **Settings-Apply Label**, select **Internal**, and then click **Save**.

### Campaign project 1 team site

To create a baseline private SharePoint Online team site for a project within the campaign, do the following:

1. If needed, use a browser on your local computer and sign in to the admin center (<https://admin.microsoft.com>) using your global administrator account.

2. In the list of tiles, click **SharePoint**.

3. On the new **SharePoint** tab in your browser, click **+ Create site**.

4. On the **Create a site** page, click **Team site**.

5. In **Site name**, type **Campaign project 1**.

6. In **Team site description,** type **SharePoint site for Campaign project 1**.

7. In **Privacy settings**, select **Private - only members can access this site**, and then click **Next**.

8. On the **Who do you want to add?** pane, click **Finish**.

Next, configure the documents folder of the Campaign project 1 team site for the Private label.

1. In the **Campaign project 1-Home** tab of your browser, click **Documents**.

2. Click the settings icon, and then click **Library settings**.

3. Under **Permissions and Management**, click **Apply label to items in this library**.

4. In **Settings-Apply Label**, select **Private**, and then click **Save**.

### Campaign marketing team site

To create a sensitive-level isolated SharePoint Online team site for campaign marketing resources, do the following:

1. Using a browser on your local computer, sign in to the admin center (<https://admin.microsoft.com>) using your global administrator account.

2. In the list of tiles, click **SharePoint**.

3. On the new **SharePoint** tab in your browser, click **+ Create site**.

4. On the **Create a site** page, click **Team site**.

5. In **Team site name**, type **Campaign marketing**.

6. In **Team site description**, type **SharePoint site for campaign marketing (sensitive)**.

7. In **Privacy settings**, select **Private - only members can access this site**, and then click **Next**.

8. On the **Who do you want to add?** pane, click **Finish**.

9. On the new **Campaign marketing** tab in your browser, in the tool bar, click the settings icon, and then click **Site permissions**.

10. In the **Site permissions** pane, click **Advanced permissions settings**.

11. In the new **Permissions** tab in your browser, click **Access Request Settings**.

12. In the **Access Request Settings** dialog box, clear the **Allow members to share the site and individual files and folders** and **Allow members to invite others to the site members group** check boxes, type **ITAdmin1@**\<your organization name\>**.onmicrosoft.com** in **Send all requests for access**, and then click **OK**.

13. Click **Campaign marketing Members** in the list.

14. On the **People and Groups** page, click **New**.

15. In the **Share** dialog box, type **Senior and strategic staff**, select it, and then click **Share**.

16. Repeat steps 14 and 15 for the **Analytics staff** group and the **Regular1** user account.

17. Click the back button on your browser.

18. Click **Campaign marketing Owners** in the list.

19. On the **People and Groups** page, click **New**.

20. In the **Share** dialog box, type **IT staff**, select it, and then click **Share**.

21. Click the back button on your browser.

22. Close the **People and Groups** tab in your browser, click the **Campaign marketing-Home** tab in your browser, and then close the **Site permissions** pane.

Here are the results of configuring permissions:

- The **Campaign marketing-Members** SharePoint group contains only the **Senior and strategic staff** group (which contains the Candidate, ChiefOfStaff, and Strategic1 user accounts), the **Campaign marketing** group (which contains the global administrator user account), the **Analytics staff** group (which contains the DataScientist1 user account), and the **Regular1** user account.

- The **Campaign marketing-Owners** SharePoint group contains only the **IT staff** group (which contains only the ITAdmin1 and ITAdmin2 user accounts).

- The **Campaign marketing-Visitors** SharePoint group contains no groups or user accounts.

- Members cannot modify site-level permissions (this can only be done by members of the **Campaign marketing-Owners** group).

- Other user accounts cannot access the site or its resources, but can request access to the site, which will send an email to the ITAdmin1 user account mailbox.

Next, configure the documents folder of the Campaign marketing team site for the Sensitive label.

1. In the **Campaign marketing-Home** tab of your browser, click **Documents**.

2. Click the settings icon, and then click **Library settings**.

3. Under **Permissions and Management**, click **Apply label to items in this library**.

4. In **Settings-Apply Label**, select **Sensitive**, and then click **Save**.

Next, configure a data loss prevention (DLP) policy that notifies users when they share a document on a SharePoint Online team site with the Sensitive label outside the organization. This DLP policy will apply to resources in the Campaign marketing site.

1. From the **Microsoft Office Home** tab in your browser, click the **Security & Compliance** tile.

2. On the new **Security & Compliance** tab in your browser, click **Data loss prevention > Policy**.

3. In the **Data loss prevention** pane, click **+ Create a policy**.

4. In the **Start with a template or create a custom policy** pane, click **Custom**, and then click **Next**.

5. In the **Name your policy** pane, type **Sensitive label SharePoint Online team sites** in **Name**, and then click **Next**.

6. In the **Choose locations** pane, click **Let me choose specific locations**, and then click **Next**.

7. In the list of locations, disable the **Exchange email** and **OneDrive accounts** locations, and then click **Next**.

8. In the **Customize the types of sensitive info you want to protect** pane, click **Edit**.

9. In the **Choose the types of content to protect** pane, click **Add** in the drop-down box, and then click **Labels**.

10. In the **Labels** pane, click **+ Add**, select the **Sensitive** label, click **Add**, and then click **Done**.

11. In the **Choose the types of content to protect** pane, click **Save**.

12. In the **Customize the types of sensitive info you want to protect** pane, click **Next**.

13. In the **What do you want to do if we detect sensitive info?** pane, click **Customize the tip and email**.

14. In the **Customize policy tips and email notifications** pane, click **Customize the policy tip text**.

15. In the text box, type or paste in the following:

    - To share with a user outside the organization, download the file and then open it. Click File, then Protect Document, and then Encrypt with Password, and then specify a strong password. Send the password in a separate email or other means of communication.

16. Click **OK**.

17. In the **What do you want to do if we detect sensitive info?** pane, clear the **Block people from sharing, and restrict access to shared content** check box, and then click **Next**.

18. In the **Do you want to turn on the policy or test things out first?** pane, click **Yes, turn it on right away**, and then click **Next**.

19. In the **Review your settings** pane, click **Create**, and then click **Close**.

### Campaign strategy team site

To create an isolated SharePoint Online team site at the highly confidential level for campaign strategy resources, do the following:

1. If needed, use a browser on your local computer and sign in to the admin center (<https://admin.microsoft.com>) using your global administrator account.

2. In the list of tiles, click **SharePoint**.

3. On the new **SharePoint** tab in your browser, click **+ Create site**.

4. On the **Create a site** page, click **Team site**.

5. In **Team site name**, type **Campaign strategy**.

6. In **Team site description**, type **SharePoint site for campaign strategy (highly confidential)**.

7. In **Privacy settings**, select **Private - only members can access this site**, and then click **Next**.

8. On the **Who do you want to add?** pane, click **Finish**.

9. On the new **Campaign strategy** tab in your browser, in the tool bar, click the settings icon, and then click **Site permissions**.

10. In the **Site permissions** pane, click **Advanced permissions settings**.

11. In the new **Permissions** tab in your browser, click **Access Request Settings**.

12. In the **Access Request Settings** dialog box, clear **Allow members to share the site and individual files and folders** and **Allow members to invite others to the site members group** (so that all three check boxes are cleared), and then click **OK**.

13. Click **Campaign strategy Members** in the list.

14. On the **People and Groups** page, click **New**.

15. In the **Share** dialog box, type **Senior and strategic staff**, select it, and then click **Share**.

16. Click **Campaign strategy Owners** in the list.

17. On the **People and Groups** page, click **New**.

18. In the **Share** dialog box, type **IT staff**, select it, and then click **Share**.

19. Click the back button on your browser.

20. Close the **People and Groups** tab in your browser, click the **Campaign strategy-Home** tab in your browser, and then close the **Site permissions** pane.

Here are the results of configuring permissions:

- The **Campaign strategy-Members** SharePoint group contains only the **Senior and strategic staff** group (which contains only the Candidate, ChiefOfStaff, and Strategic1 user accounts) and the **Campaign strategy** group (which contains only the global administrator user account).

- The **Campaign strategy-Owners** SharePoint group contains only the **IT staff** group (which contains only the ITAdmin1 and ITAdmin2 user accounts).

- The **Campaign strategy-Visitors** SharePoint group contains no groups or user accounts.

- Members cannot modify site-level permissions (this can only be done by members of the **Campaign strategy-Owners** group).

- Other user accounts cannot access the site or its resources or request access to the site. Additional permissions to the site must be done by the global administrator or by a member of the **Campaign strategy-Owners** group.

Next, configure the documents folder of the Campaign strategy team site for the Highly Confidential label.

1. In the **Campaign strategy-Home** tab of your browser, click **Documents**.

2. Click the settings icon, and then click **Library settings**.

3. Under **Permissions and Management**, click **Apply label to items in this library**.

4. In **Settings-Apply Label**, select **Highly Confidential**, and then click **Save**.

Next, configure a DLP policy that blocks users when they share a document on a SharePoint Online team site with the Highly Confidential label outside the organization. This DLP policy will apply to resources in the Campaign strategy site.

1. If needed, use a browser on your local computer and sign in to the admin center (<https://admin.microsoft.com>) with an account that has the Security Administrator or Company Administrator role.

2. From the **Microsoft Office Home** tab in your browser, click the **Security & Compliance** tile.

3. On the new **Security & Compliance** tab in your browser, click **Data loss prevention > Policy**.

4. In the **Data loss prevention** pane, click **+ Create a policy**.

5. In the **Start with a template or create a custom policy** pane, click **Custom**, and then click **Next**.

6. In the **Name your policy** pane, type **Highly Confidential label SharePoint Online team sites** in **Name**, and then click **Next**.

7. In the **Choose locations** pane, click **Let me choose specific locations**, and then click **Next**.

8. In the list of locations, disable the **Exchange email** and **OneDrive accounts** locations, and then click **Next**.

9. In the **Customize the types of sensitive info you want to protect** pane, click **Edit**.

10. In the **Choose the types of content to protect** pane, click **Add** in the drop-down box, and then click **Labels**.

11. In the **Labels** pane, click **+ Add**, select the **Highly Confidential** label, click **Add**, and then click **Done**.

12. In the **Choose the types of content to protect** pane, click **Save**.

13. In the **Customize the types of sensitive info you want to protect** pane, click **Next**.

14. In the **What do you want to do if we detect sensitive info?** pane, click **Customize the tip and email**.

15. In the **Customize policy tips and email notifications** pane, click **Customize the policy tip text**.

16. In the text box, type or paste in the following:

    - To share with a user outside the organization, download the file and then open it. Click File, then Protect Document, and then Encrypt with Password, and then specify a strong password. Send the password in a separate email or other means of communication.

17. Click **OK**.

18. In the **What do you want to do if we detect sensitive info?** pane, select **Require a business justification to override**, and then click **Next**.

19. In the **Do you want to turn on the policy or test things out first?** pane, click **Yes, turn it on right away**, and then click **Next**.

20. In the **Review your settings** pane, click **Create**, and then click **Close**.

Use the instructions in [Activate Azure RMS with the Microsoft 365 admin center](https://docs.microsoft.com/information-protection/deploy-use/activate-office365).

Next, configure Azure Information Protection with a new scoped policy and sub-label for protection and permissions with the following steps:

1. Sign in to the admin center with an account that has the Security Administrator or Company Administrator role. For help, see [Where to sign in to Office 365](https://support.microsoft.com/office/e9eb7d51-5430-4929-91ab-6157c5a050b4).

2. In a separate tab of your browser, go to the Azure portal (<https://portal.azure.com>).

3. In the search pane, type **information**, and then click **Azure Information Protection**.

4. Click **Labels**.

5. Right-click the **Highly Confidential** label, and then click **Add a sub-label**.

6. Type **CampaignStrategy** in **Name** and **Label for documents in the Campaign strategy team site** in **Description**.

7. In **Set permissions for documents and emails containing this label**, click **Protect**.

8. In the **Protection** section, click **Azure (cloud key)**.

9. On the **Protection** blade, under **Protection settings**, click **+ Add permissions**.

10. On the **Add permissions** blade, under **Specify users and groups**, click **+ Browse directory**.

11. On the **AAD Users and Groups** pane, select **Senior and strategic staff**, and then click **Select**.

12. Under **Choose permissions from the preset or set custom**, click **Custom**, and then click the **View Rights**, **Edit Content**, **Save**, **Reply**, and **Reply all** check boxes.

13. Click **OK** twice.

14. On the **Sub-label** blade, click **Save**, and then click **OK**.

15. On the **Azure Information protection** blade, click **Policies > + Add a new policy**.

16. Type **CampaignStrategy** in **Name** and **Documents in the Campaign strategy team site** in **Description**.

17. Click **Select which users or groups get this policy > User/Groups**, and then select **Senior and strategic staff**.

18. Click **Select \> OK**.

19. Click **Add or remove labels**. In the **Policy: Add or remove labels** pane, click **CampaignStrategy**, and then click **OK**.

20. Click **Save**, and then click **OK**.

You are now ready to begin creating documents in these four sites and test access to them with various user accounts.

To protect a document with Azure Information Protection and this new label, you must [install the Azure Information Protection client](https://docs.microsoft.com/information-protection/rms-client/install-client-app) on a test machine, install Office from the admin center, and then sign in from Microsoft Word with an account in the **Senior and strategic staff** group of your trial subscription.

## See Also

[Microsoft Security Guidance for Political Campaigns, Nonprofits, and Other Agile Organizations](microsoft-security-guidance-for-political-campaigns-nonprofits-and-other-agile-o.md)

[Configure groups and users for a political campaign dev/test environment](configure-groups-and-users-for-a-political-campaign-dev-test-environment.md)

[Cloud adoption Test Lab Guides (TLGs)](https://docs.microsoft.com/microsoft-365/enterprise/cloud-adoption-test-lab-guides-tlgs)

[Cloud adoption and hybrid solutions](https://docs.microsoft.com/office365/enterprise/cloud-adoption-and-hybrid-solutions)
