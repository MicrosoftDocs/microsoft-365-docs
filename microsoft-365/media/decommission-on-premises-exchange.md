---
title: "How and when to decommission your on-premises Exchange servers in a hybrid deployment"
ms.author: v-mapenn
author: mattpennathe3rd
manager: serdars
audience: ITPro
ms.reviewer:
ms.topic: article
ms.prod: exchange-server-it-pro
localization_priority: Normal
ms.collection:
- Hybrid
- Strat_EX_EXOBlocker
- M365-email-calendar
ms.assetid: 4f884b7a-3b8a-4207-8843-65d3141731dc
description: "Read this article if you are ready to move from an Exchange hybrid deployment to a full cloud implementation."
---

# How and when to decommission your on-premises Exchange servers in a hybrid deployment

Read this article if you are ready to move from an Exchange hybrid deployment to a full cloud implementation.

One of the more attractive options for getting a company to Exchange Online is to use the hybrid deployment approach described in [Exchange Server hybrid deployments](https://docs.microsoft.com/exchange/exchange-hybrid). This is the only option that allows you to easily on-board and off-board mailboxes (all other native options are on-board only). In addition to the ability to off-board, a hybrid configuration has the following key options.

This topic will help you understand the options for decommissioning Exchange hybrid, and when each of those options should be implemented. There are many variances in when and how to decommission Exchange hybrid servers. Taking the time to understand the implications and properly plan the full or partial decommissioning of on-premises servers is important.

- **Cross-premises availability**. This allows you to see a user's free/busy information while scheduling a meeting, regardless of their mailbox premises.

- **Cross-premises archive**. This allows a customer to move only a user's archive mailbox to the cloud. This is often the first step for customers to try Office 365, and, more specifically, Exchange Online.

- **Cross-premises discovery searches**. This allows a customer to perform an e-discovery search that will crawl mailboxes and archives in both premises (this requires you to configure OAuth authentication).

- **Outlook Web App URL redirection**. This allows for users to be redirected to the proper premises for Outlook Web App access.

- **No profile recreation after move**. Unlike other migration options, the mailbox GUID doesn't change. This means that you do not have to recreate your profile or re-download the OST after a mailbox move.

Depending on your organization's needs, a hybrid deployment is the best option for providing the most seamless user and coexistence experience.

## Other methods to migrate to Exchange Online

A hybrid deployment is not for everyone; in fact there are usually better options. Many of the tenants that have chosen to deploy a hybrid configuration are under fifty seats. While the list of advantages of a hybrid deployment may sound attractive, it comes with a hefty price with regards to complexity. Some of the smaller tenants require the features of a hybrid deployment, but, for most tenants, it would be a much better experience to use either a cutover, staged, or IMAP migration option. There is a program called FastTrack you can use when deciding on the migration approach to take. Information on FastTrack is described on the [Office 365 FastTrack page](https://www.microsoft.com/fasttrack/microsoft-365/office-365).

Use the following table to decide what type of migration works for your organization. (For more information, see [Ways to migrate multiple email accounts to Office 365](https://support.office.com/article/0a4913fe-60fb-498f-9155-a86516418842).)

|**Existing organization**|**Number of mailboxes to migrate**|**Do you want to manage user accounts in your on-premises organization?**|**Migration type**|
|:-----|:-----|:-----|:-----|
|Exchange 2003 or later|Less than 2,000 mailboxes|No|Cutover Exchange migration|
|Exchange 2007 or Exchange 2003|Less than 2,000 mailboxes|No|Staged Exchange migration|
|Exchange 2007 or Exchange 2003|More than 2,000 mailboxes<sup>\*</sup>|Yes|Staged Exchange migration or remote move migration in an Exchange hybrid deployment|
|Exchange 2010 or later|More than 2,000 mailboxes<sup>\*</sup>|Yes|Remote move migration in an Exchange hybrid deployment|
|Exchange 2000 Server or earlier versions|No maximum|Yes|IMAP migration|
|Non-Exchange on-premises messaging system|No maximum|Yes|IMAP migration|

<sup>\*</sup>Some organizations with fewer than 2,000 mailboxes may benefit from features and capabilities that are only available with a hybrid deployment. It's important to carefully consider the benefits of a hybrid deployment with the complexity that introduces. We strongly recommend that customers with fewer than 2,000 mailboxes consider cutover or staged migration before proceeding with a hybrid deployment.

## Why you may not want to decommission Exchange servers from on-premises

Customers with a hybrid configuration often find after a period of time that all of their mailboxes have been moved to Exchange Online. At this point, they may decide to remove the Exchange servers from on-premises. However, they discover that they can no longer manage their cloud mailboxes.

When directory synchronization is enabled for a tenant and a user is synchronized from on-premises, most of the attributes cannot be managed from Exchange Online and must be managed from on-premises. This is not due to the hybrid configuration, but it occurs because of directory synchronization. In addition, even if you have directory synchronization in place without running the Hybrid Configuration Wizard, you still cannot manage most of the recipient tasks from the cloud. For more information, see this [blog article](https://techcommunity.microsoft.com/t5/Exchange-Team-Blog/Decommissioning-your-Exchange-2010-servers-in-a-Hybrid/ba-p/597185).

## Can third-party management tools be used?

The question of whether a third-party management tool or ADSIEDIT can be used is often asked. The answer is you can use them, but they are not supported. The Exchange Management Console, the Exchange admin center (EAC), and the Exchange Management Shell are the only supported tools that are available to manage Exchange recipients and objects. If you decide to use third-party management tools, it would be at your own risk. Third-party management tools often work fine, but Microsoft does not validate these tools.

## Common scenarios

It is not simple to move from a hybrid configuration to the cloud. The process for getting into a hybrid configuration is one that we have taken a lot of time to get right. While there are issues, we feel we have done a pretty good job of making the almost impossible task of going hybrid a fairly easy wizard-based process.

However, we have put little effort into how to get you from a hybrid configuration to the cloud only. Depending on your immediate goals, this process can be fairly simple with some guidance. The following are three common hybrid scenarios along with our recommendation for how to properly achieve the end goal of the customer.

Since the hybrid customer base is very diverse, trying to fit all of them into "common" scenarios is difficult. We attempted to provide some high-level scenarios for on-premises Exchange Server decommissioning below, so as you read through these scenarios and form a plan to decommission, you will need to determine the scenario that best fits your needs.

### Scenario one

 **Issue**: My organization has been running in a hybrid configuration and I have all of my mailboxes in Exchange Online. I do not need to manage my users from on-premises and no longer have a need for directory synchronization or password synchronization.

 **Solution**: Since all of the users will be managed in Office 365, and there are no additional directory synchronization requirements, you can safely disable directory synchronization and remove Exchange from the on-premises environment.

![Remove Exchange from the on-premises environment](media/f9c2a2cb-4c16-4ca3-8244-b89c1cdf0744.jpg)

### To disable directory synchronization and uninstall Exchange hybrid

1. Run `Get-OrganizationConfig | Format-List PublicFoldersEnabled` and ensure that it is not set to Remote. If it is set to Remote, and the public folders are something you want to continue to access, you would need to migrate them to Exchange Online. For more information, see [Use batch migration to migrate legacy public folders to Office 365 and Exchange Online](https://docs.microsoft.com/exchange/collaboration-exo/public-folders/batch-migration-of-legacy-public-folders).

2. Assuming that you have already moved all of the mailboxes to Exchange Online, you can point the MX and Autodiscover DNS records to Exchange Online, instead of to on-premises. For more information, see [Reference: External Domain Name System records for Office 365](https://technet.microsoft.com/library/hh852557.aspx).

   > [!IMPORTANT]
   > Make sure to update both the internal and external DNS, or you may have inconsistent client connectivity behavior.

3. Next, you should remove the Service Connection Point (SCP) values on your Exchange servers. This ensures that no SCP's are returned, and the client will instead use the DNS method for Autodiscover. Some examples are shown below:

   Exchange Server 2010 or 2013:

   ```PowerShell
   Get-ClientAccessServer | Set-ClientAccessServer -AutoDiscoverServiceInternalUri $Null
   ```

   Exchange Server 2016 or later:

   ```PowerShell
   Get-ClientAccessService | Set-ClientAccessService -AutoDiscoverServiceInternalUri $Null
   ```

   > [!NOTE]
   > If you have Exchange 2007 servers in the environment, you will have to run a similar command on your Exchange 2007 servers to null out the settings.

4. There are inbound and outbound connectors created by the Hybrid Configuration Wizard that you will want to delete. Use the following steps to do this:

   1. Log in to the [Office 365 Admin portal](https://portal.office.com) and sign in as the Tenant Administrator.

   2. Select the option to manage **Exchange**.

   3. Navigate to **Mail Flow** -\> **Connectors**.

   4. You can now disable or delete the inbound and outbound connectors. The HCW creates connectors with unique namespace **inbound from \<unique identifier\>** and **outbound from \<unique identifier\>** as shown in the graphic below.

       ![Hybrid Configuration Wizard creates connectors with unique namespace](media/7b1b6f0b-43d6-4407-8cd7-7dd52e016697.jpg)

5. Remove the organization relationship created by the Hybrid Configuration Wizard. Use the following steps to do this:

   1. Log in to the [Office 365 Admin portal](https://portal.office.com) and sign in as the Tenant Administrator.

   2. Select the option to manage Exchange.

   3. Navigate to **Organization**.

   4. Under **Organization Sharing**, remove the organization named **O365 to On-Premises - \<unique identifier\>** as shown in the graphic below.

       ![Remove the Organization Relationship created by the Hybrid Configuration Wizard](media/2f0c1077-8785-487a-87a5-a75f0a4f0fea.jpg)

6. If OAuth is configured for an Exchange hybrid deployment, you will want to disable the configuration from both on-premises and Office 365. In most environments, these steps can be skipped because only a small subset of our customers have OAuth configured.

   To disable the on-premises configuration:

   1. From an Exchange server, open the Exchange Management Shell.

   2. Run the following command:

      ```PowerShell
      Get-IntraorganizationConnector -Identity ExchangeHybridOnPremisesToOnline | Set-IntraOrganizationConnector -Enabled $False
      ```

   To disable the Exchange Online configuration:

   1. Connect Windows PowerShell to Exchange Online.

   2. Run the following command:

      ```PowerShell
      Get-IntraorganizationConnector -Identity ExchangeHybridOnlineToOnPremises | Set-IntraOrganizationConnector -Enabled $False
      ```

     **Note**: The _Identity_ parameter assumes that you used the Hybrid Configuration Wizard to configure OAuth. If this is not the case, you may need to adjust the value you specified for the identity of the connectors.

7. Disable directory synchronization for your tenants. When this step is completed, all user management tasks will be done from the Office 365 management tools. This means you will no longer use the Exchange Management Console or Exchange admin center (EAC). For more information on how to disable directory synchronization, see [Turn off directory synchronization for Office 365](https://docs.microsoft.com/office365/enterprise/turn-off-directory-synchronization).

8. You can now safely uninstall Exchange from the on-premises servers.

### Scenario two

 **Issue**: My organization has been running in a hybrid configuration for about a year now and have finally moved my last mailbox to the cloud. I plan to keep Active Directory Federation Services (AD FS) for user authentication of my Exchange Online mailboxes. (This scenario would apply to any customer that is planning on keeping directory synchronization).

 **Solution**: Since the customer is planning on keeping AD FS, they will also have to keep directory synchronization since it is a prerequisite. Because of that, they cannot fully remove the Exchange servers from the on-premises environment. However, they can decommission most of the Exchange servers, but leave a couple of servers behind for user management. Keep in mind that the servers that are left running can be run on virtual machines since the workload is almost completely shifted to Exchange Online.

The graphic below describes the desired end state:

![Decommission Exchange servers with some remaining](media/d7734579-6999-45b2-9a0f-a23f18353a49.jpg)

The graphic below describes the actual end state:

![State before decommissioning Exchange servers](media/c692f0af-6536-4bc9-950d-58a1e486525f.jpg)

> [!TIP]
> If you choose to remove ADFS from your infrastructure, Azure AD Connect will synchronize your on-premises credentials with the cloud. Each service will authenticate users independently: <br/>• **Office 365 identity services** will manage online requests <br/>• **Active directory** will manage the internal authentication <br/><br/> If you don't have any on-premises mailbox(es), you can safely decommission most of your exchange server(s), leaving one or more for user management purposes, because the source of authority is still defined as on-premises.

### To keep AD FS and directory synchronization and decommission most of the Exchange servers

1. Run `Get-OrganizationConfig |fl PublicFoldersEnabled` and ensure that it is not set to remote. If it is set to remote and you want to continue to access the public folders, you would need to migrate them to Exchange Online. For information on how to do this, see [Use batch migration to migrate legacy public folders to Office 365 and Exchange Online](https://docs.microsoft.com/exchange/collaboration-exo/public-folders/batch-migration-of-legacy-public-folders).

   > [!IMPORTANT]
   > If migrating public folders to Exchange Online is not an option, and you still need them for your users, you should not move forward.

2. After you have moved all of the mailboxes to Exchange Online, the first thing you would want to do to decommission most of the Exchange servers is point the MX and Autodiscover DNS records to Exchange Online instead of to on-premises. For more information, see [Reference: External Domain Name System records for Office 365](https://technet.microsoft.com/library/hh852557.aspx).

   > [!IMPORTANT]
   > Make sure to update both the internal and external DNS, or you may have inconsistent client connectivity and mail flow behaviors.

3. Next, you should remove the Service Connection Point (SCP) values on your Exchange servers. This ensures that no SCP's are returned, and the client will instead use the DNS method for Autodiscover. An example is shown below:

   Exchange Server 2010 or 2013:

   ```PowerShell
   Get-ClientAccessServer | Set-ClientAccessServer -AutoDiscoverServiceInternalUri $Null
   ```

   Exchange Server 2016 or later:

   ```PowerShell
   Get-ClientAccessService | Set-ClientAccessService -AutoDiscoverServiceInternalUri $Null
   ```

   > [!NOTE]
   > If you have Exchange 2007 servers in the environment, you will have to run a similar command on your Exchange 2007 servers to null out the settings

4. To prevent the hybrid configuration objects from being recreated in the future, you should remove the hybrid configuration object from Active Directory. To do this, open the Exchange Management Shell and run the following:

   ```PowerShell
   Remove-HybridConfiguration
   ```

5. Remove all Exchange servers with the exception of the servers you will retain for user management and creation. Two servers should be sufficient for user management, although you could possibly get by with one server. In addition, there is no need to have a Database Availability Group or any other high availability options.

6. If OAuth is configured for an Exchange hybrid deployment, you will want to disable the configuration from both on-premises and Office 365. In most environments, these steps can be skipped because only a small subset of our customers have OAuth configured.

   To disable the on-premises configuration:

   1. Open the Exchange Management Shell from an Exchange server.

   2. Run the following command:

      ```PowerShell
      Set-IntraorganizationConnector -Identity ExchangeHybridOnPremisesToOnline | Set-IntraOrganizationConnector -Enabled $False
      ```

   To disable the Exchange Online configuration:

   1. Connect Windows PowerShell to Exchange Online.

   2. Run the following command:

      ```PowerShell
      Get-IntraorganizationConnector -Identity ExchangeHybridOnlineToOnPremises | Set-IntraOrganizationConnector -Enabled $False
      ```

   **Note**: The Identity parameter assumes that you used the Hybrid Configuration Wizard to configure OAuth. If this is not the case, you may need to adjust the value you specified for the identity of the connectors.

7. There are inbound and outbound connectors created by the Hybrid Configuration Wizard that you will want to delete. Use the following steps to do this:

   1. Log in to the [Office 365 Admin portal](https://portal.office.com) and sign in as the Tenant Administrator.

   2. Select the option to manage **Exchange**.

   3. Navigate to **Mail Flow** -\> **Connectors**.

   4. You can now disable or delete the inbound and outbound connectors. The HCW creates connectors with unique namespace **inbound from \<unique identifier\>** and **outbound from \<unique identifier\>** as shown in the graphic below.

      ![Hybrid Configuration Wizard creates connectors with unique namespace](media/7b1b6f0b-43d6-4407-8cd7-7dd52e016697.jpg)

8. Remove the organization relationship created by the Hybrid Configuration Wizard. Use the following steps to do this:

   1. Log in to the [Office 365 Admin portal](https://portal.office.com) and sign in as the Tenant Administrator.

   2. Select the option to manage **Exchange**.

   3. Navigate to **Organization**.

   4. Under **Organization Sharing**, remove the organization named **O365 to On-Premises - \<unique identifier\>** as shown in the graphic below.

      ![Remove the Organization Relationship created by the Hybrid Configuration Wizard](media/2f0c1077-8785-487a-87a5-a75f0a4f0fea.jpg)

### Scenario three

**Issue**: I want to remove my Exchange servers on-premises after moving all of my mailboxes to Exchange Online. However, we discovered that they are using Exchange for other purposes, such as for a Simple Mail Transfer Protocol (SMTP) relay for an application or for access to public folders. If you have a need for Exchange servers on-premises to meet the current needs of your organization, it may not be in your best interest to remove the on-premises servers.

**Solution**: We recommend against removing Exchange and the hybrid configuration at this point. If you were to even start the process by pointing the Autodiscover Records to Exchange Online, you would immediately break some features like hybrid public folder access. You could change the MX record to point to Exchange Online Protection if it is not already, you could even remove some of the on-premises Exchange servers. However, you would need to keep enough in place to handle the remaining hybrid functions. Usually, this would lead to a very small on-premises footprint.
