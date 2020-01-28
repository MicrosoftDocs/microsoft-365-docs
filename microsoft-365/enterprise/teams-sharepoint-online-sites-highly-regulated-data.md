---
title: "SharePoint sites for highly regulated data"
author: JoeDavies-MSFT
f1.keywords:
- NOCSH
ms.author: josephd
manager: laurawi
ms.date: 10/31/2019
audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Priority
ms.collection: 
- M365-security-compliance
- Strat_O365_Enterprise
- SPO_Content
ms.custom:

description: Create a secure SharePoint team site to store your most valuable and sensitive files.
---

# SharePoint sites for highly regulated data

*This scenario applies to both the E3 and E5 versions of Microsoft 365 Enterprise*

Microsoft 365 Enterprise includes a full suite of cloud-based services so that you can create, store, secure, and manage your highly regulated data stored in files. This includes data that is:

- Subject to regional regulations.
- The most valuable data for your organization, such as trade secrets, financial or human resources information, and organization strategy.

>[!Note]
> A similar scenario using Microsoft Teams is [here](secure-teams-highly-regulated-data-scenario.md).
>

A Microsoft 365 Enterprise cloud-based scenario that meets this business need requires that you:

- Store files (documents, slide decks, spreadsheets, etc.) in a SharePoint team site.
- Lock down the site to prevent:
  - Access to users who are not members of the Office 365 group for the site.
  - Members of the site from granting access to others.
  - Non-members of the site from requesting access to the site.
- Configure an Office 365 retention label for your SharePoint sites as a default way to	block users from sending files outside the organization.
- Encrypt the most sensitive files of the site with encryption that travels with the file.
- Add permissions to the most sensitive files so that if even if they get shared outside of the site, opening the file still requires the valid credentials of a user account that has permission.

The following table maps the requirements of this scenario to a feature of Microsoft 365 Enterprise.

|||
|:-------|:-----|
| **Requirement** | **Microsoft 365 Enterprise feature** |
| Store files | SharePoint team sites |
| Lock down the site | Office 365 groups and SharePoint team site permissions |
| Label the files of the site | Office 365 retention labels |
| Block users when sending files outside the organization | Data Loss Prevention (DLP) policies in Office 365 |
| Encrypt all of the files of the site | Office 365 sensitivity labels or sublabels |
| Add permissions to the files of the site | Office 365 sensitivity labels or sublabels |
|||

Here is an example configuration for a secure SharePoint site.

![The SharePoint sites for highly regulated data scenario](./media/teams-sharepoint-online-sites-highly-regulated-data/end-to-end-configuration.png)

This scenario requires that you have already deployed:

- The [Identity](identity-infrastructure.md) phase and steps 1 and 2 of the [Information protection](infoprotect-infrastructure.md) phase of the foundation infrastructure. 
- [SharePoint](sharepoint-online-onedrive-workload.md).

The following phases step you through designing, configuring, and driving adoption for SharePoint sites for highly regulated data.

<a name="poster"></a>
For a 1-page summary of this scenario, see the [SharePoint sites for highly regulated data poster](./media/teams-sharepoint-online-sites-highly-regulated-data/SharePointSitesHighlyRegulatedData.pdf).

[![SharePoint sites for highly regulated data poster](./media/teams-sharepoint-online-sites-highly-regulated-data/sharepoint-sites-highly-regulated-data-poster.png)](./media/teams-sharepoint-online-sites-highly-regulated-data/SharePointSitesHighlyRegulatedData.pdf)

You can also download this poster in [PDF](https://github.com/MicrosoftDocs/microsoft-365-docs/raw/public/microsoft-365/enterprise/media/teams-sharepoint-online-sites-highly-regulated-data/SharePointSitesHighlyRegulatedData.pdf) or [PowerPoint](https://github.com/MicrosoftDocs/microsoft-365-docs/raw/public/microsoft-365/enterprise/media/teams-sharepoint-online-sites-highly-regulated-data/SharePoint-Sites-Highly-Regulated-Data.pptx) formats and print it on letter, legal, or tabloid (11 x 17)-sized paper.


## Identity and device access prerequisites

To protect access to the SharePoint site, ensure that you have configured [identity and device access policies](identity-access-policies.md) and the [recommended SharePoint access policies](sharepoint-file-access-policies.md).

## Phase 1: Design

To create a SharePoint site for highly regulated data, you must first identify its purpose. For example, the research and development department of a manufacturing organization needs a SharePoint site to store current design specifications for existing products and a place to collaborate on new products. Only members of the Research & Development department and selected executives will be allowed to access the site.

That purpose will drive the determination of essential configuration items such as:

- The Office 365 retention label to assign to the Documents portion of the site and DLP policies for the label
- The settings of an Office 365 sensitivity sublabel that users apply to highly sensitive files stored in the site

Once determined, you use these settings to configure the site in Phase 2. 

### Step 1 Office 365 retention labels and DLP policies

When applied to the Documents portion of a SharePoint team site, Office 365 retention labels provide a default method of classifying all files stored on the site.
 
For SharePoint sites for highly regulated data, you need to determine which Office 365 retention label to use.

For the design considerations of Office 365 labels, see [Office 365 classification and labels](https://docs.microsoft.com/office365/securitycompliance/secure-sharepoint-online-sites-and-files#office-365-retention-labels).

To protect sensitive information and prevent its accidental or intentional disclosure, you use DLP policies. For more information, see this [overview](https://docs.microsoft.com/office365/securitycompliance/data-loss-prevention-policies).

For SharePoint sites, you must configure a DLP policy for the Office 365 retention label assigned to the site to block users when they attempt to share files with external users. 

### Step 2: Your Office 365 sensitivity sublabel

To provide encryption and a set of permissions to your most sensitive files, users must apply an Office 365 sensitivity label or sublabel. A sublabel exists under an existing label. 

Use a sensitivity label when you need is a small number of labels for both global use and individual private teams. Use a sensitivity sublabel when you have a large number of labels or want to organize labels for secure sites the under your highly regulated label. 

The settings of the applied label or sublabel travel with the file. Even if it is leaked outside the site, only authenticated user accounts that have permissions can open it.

### Design results

You have determined the following:

- The appropriate Office 365 retention label and the DLP policy that is associated with the label
- The settings of the Office 365 sensitivity sublabel that include encryption and permissions

## Phase 2: Configure

In this phase, you take the settings determined in Phase 1 and implement them to create a SharePoint site for highly regulated data.

### Step 1: Create a private SharePoint team site with owners and members of the corresponding Office 365 group

Follow [these instructions]( https://support.office.com/article/create-a-site-in-sharepoint-online-4d1e11bf-8ddc-499d-b889-2b48d10b1ce8) to create a private SharePoint team site.

### Step 2: Configure additional permissions settings for the SharePoint team site

From the SharePoint site, configure these permission settings.

1. In the tool bar, click the settings icon, and then click **Site permissions**.
2. In the **Site permissions** pane, under **Sharing Settings**, click **Change sharing settings**.
3. Under **Sharing permissions**, choose **Only site owners can share files, folders, and the site**.
4. Turn off **Allow access requests**, and then click **Save**.

With these settings, the ability for site group members to share the site with other members or for non-members to request access to the site is disabled.

### Step 3: Configure the site for an Office 365 retention label

Use the instructions in [Protect SharePoint files with Office 365 labels and DLP](https://docs.microsoft.com/office365/enterprise/protect-sharepoint-online-files-with-office-365-labels-and-dlp) to:

1. Create and publish a retention label for highly regulated data (if needed).
2. Configure the site for the retention label created in step 1.
3. Create a DLP policy for highly regulated data that uses the retention label created in step 2 and blocks users from sending files outside the organization

#### Step 4: Create an Office 365 sensitivity sublabel for the site

Unlike a sensitivity label for highly regulated data that anyone can apply to any file, a secure site needs its own sublabel so that files with the sublabel assigned:

- Are encrypted and the encryption travels with the file.
- Contain custom permissions so that only members of the site group can open it.

To accomplish this additional level of security for files stored in the site, you must configure a new sensitivity label or a sublabel of the general label for highly regulated files. Only group members for the site will see it in the list of sublabels for the highly regulated label.

Use the instructions [here](https://docs.microsoft.com/microsoft-365/compliance/encryption-sensitivity-labels) to configure a label or a sublabel of the label you are using for highly regulated files with the following settings:

- The name of the label or sublabel contains the name of the site for easy association when assigning the label or sublabel to a file.
- Encryption is enabled.
- The site group has Co-Author permissions.

### Configuration results

You have configured the following:

- More restrictive permission settings on the SharePoint site
- An Office 365 retention label assigned to the Documents portion of the SharePoint site
- A DLP policy for the Office 365 retention label
- An Office 365 sensitivity label or sublabel that users can apply to the most sensitive files stored in the site, which encrypts the file and only allows Co-Author access for members of the team site group 

Here is the resulting configuration that uses a sublabel of the Highly regulated label.

![The SharePoint sites for highly regulated data scenario](./media/teams-sharepoint-online-sites-highly-regulated-data/end-to-end-configuration.png)

Here is an example of a user that has applied the sublabel to a file stored in the site.

![The SharePoint sites for highly regulated data scenario](./media/teams-sharepoint-online-sites-highly-regulated-data/end-to-end-configuration-example-file.png)


## Phase 3: Drive user adoption

A SharePoint site for highly regulated data can only protect that data if it is consistently used for storage and access of sensitive files. This is the hardest phase because it relies on users changing their habits and preferences. 

For example, employees that are used to storing sensitive files on USB drives or on personal cloud-based storage solutions will now have to store them exclusively in a SharePoint site for highly regulated data.

### Step 1: Train your users

After completing your configuration, train the set of users who are members of the site:

- On the importance of using the new site to protect valuable files and the consequences of a highly regulated data leak, such as legal ramifications, regulatory fines, ransomware, or loss of competitive advantage.
- How to access the site and its files.
- How to create new files on the site and upload new files stored locally.
- How the DLP policy blocks them from sharing files externally.
- How to label the most sensitive files with the label or sublabel for the site.
- How the label or sublabel protects a file even when it is leaked off the site.

This training should include hands-on exercises so that the users can experience these operations and their results.

### Step 2: Conduct periodic reviews of usage and files

In the weeks after training, the SharePoint administrator for the SharePoint site can:

- Analyze usage for the site and compare it with usage expectations.
- Verify that highly sensitive files have been properly labeled with the sensitivity label or sublabel.

  You can see which files have a label assigned by viewing a folder in SharePoint and adding the **Sensitivity** column through the **Show/hide columns** option of **Add column**.


Retrain your users as needed.

### User adoption results

Highly regulated files are stored exclusively on SharePoint sites for highly regulated data and the most sensitive files have the sensitivity label or sublabel for the site applied.

## How the Contoso Corporation used a SharePoint site for highly regulated data

The Contoso Corporation is a fictional but representative global manufacturing conglomerate. See how Contoso designed, configured, and then drove the adoption of a [secure SharePoint site](contoso-sharepoint-online-site-for-highly-confidential-assets.md) for their research teams in Paris, Moscow, New York, Beijing, and Bangalore. 

## See also

[Teams for highly regulated data](secure-teams-highly-regulated-data-scenario.md)

[Microsoft 365 Enterprise workloads and scenarios](deploy-workloads.md)

[Microsoft 365 Productivity Library](https://aka.ms/productivitylibrary) (https://aka.ms/productivitylibrary)

[Deployment guide](deploy-microsoft-365-enterprise.md)
