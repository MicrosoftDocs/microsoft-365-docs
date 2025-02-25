---
title: "Using self-service sign-up in your organization"
f1.keywords:
- NOCSH
author: cmcatee-MSFT
ms.author: cmcatee
manager: scotv
ms.reviewer: enuviadenu, socheng
audience: Admin
ms.topic: conceptual
ms.service: microsoft-365-business
ms.subservice: m365-commerce-acquisition
ms.localizationpriority: medium
ms.collection:
- Tier1
- scotvorg
- M365-subscription-management
- Adm_O365
ms.custom:
- commerce_signup
- AdminSurgePortfolio
- okr_SMB
- has-azure-ad-ps-ref
- azure-ad-ref-level-one-done
search.appverid: MET150
description: "Learn about the Microsoft 365 self-service sign-up and available self-service programs such as Microsoft Power Apps, Microsoft Power Automate, and Dynamics 365 for Finance."
ms.date: 01/06/2025
---

# Using self-service sign-up in your organization

Self-service sign-up makes it easier for users in your organization to sign up for online services from Microsoft. We call this sign up process "self-service sign-up" because your users can sign up to use services paid by your subscription, or use free services, without asking you to take action on their behalf.

## How self-service sign-up works

The following example describes how self-sign up works for a school. The same process works for any organization that has self-service programs enabled in their tenant.

1. Students and faculty members have school email addresses that indicate they're associated with your institution. For example, the email address jakob@uw.edu may indicate a student at the University of Washington.
2. Students and faculty go to [our web site](https://go.microsoft.com/fwlink/p/?LinkId=536628), and use their email address to sign up for the services that your organization offers, such Microsoft 365 Apps for enterprise. They can also sign up for other free services that we offer.
3. We validate their email address, and then they can start using Microsoft 365, Power BI, or other services right away.
1. As the business admin, you can see who signs up for a subscription by selecting the subscription on the **Licensing** page in the Microsoft 365 admin center. This way you can see when there are new or unrecognized licenses for services in your tenant. To control whether users can sign up for self-service subscriptions, use the [Update-MgPolicyAuthorizationPolicy](/powershell/module/microsoft.graph.identity.signins/update-mgpolicyauthorizationpolicy?view=graph-powershell-1.0&preserve-view=true) PowerShell cmdlet with the **AllowedToSignUpEmailBasedSubscriptions** parameter. For more information, see [How do I control self-service settings?](/azure/active-directory/users-groups-roles/directory-self-service-signup#how-do-i-control-self-service-settings)

## Available self-service programs

Following are the currently available self-service programs. This list is updated as new programs are added.

| Program <br/> | Description <br/> | More Info <br/> | Website for self-service sign-up <br/> |
|:-----|:-----|:-----|:-----|
|****Office 365 A1**** <br/> |Any student or teacher can use a school email address to sign up for free Office 365 and get Office apps for the web, maximum limit of 100 GB of OneDrive cloud storage and SharePoint Online for class, team and project sites.  <br/> |[Office 365 Education Technical FAQ](/microsoft-365/education/deploy/office-365-education-self-sign-up) <br/> |[Office 365 Education](https://go.microsoft.com/fwlink/p/?linkid=140841) <br/> |
|**Power BI service**<br/> |Power BI enables users to visualize data, share discoveries, and collaborate in intuitive new ways. <br/>If your organization already subscribes, you may see options to upgrade your license to Power BI Pro or Power BI Premium Per User (PPU). These options offer you limited, free access to advanced capabilities. The Power BI service is available as a stand-alone service and as part of Microsoft Fabric. <br/> |[Power BI in your organization](https://go.microsoft.com/fwlink/?linkid=2264871) <br/> |[Microsoft Power BI](https://go.microsoft.com/fwlink/p/?LinkId=536629) <br/> |
|**Fabric**<br/> |Microsoft Fabric (Free) is a cloud-based business analytics service. <br/>The free trial includes full access to all of the Fabric experiences and features and up to 1 TB of OneLake storage. <br/> |[Fabric in your organization](https://go.microsoft.com/fwlink/?linkid=2265065) <br/> |[Microsoft Fabric](https://go.microsoft.com/fwlink/?linkid=2264760) <br/> |
|**Rights Management Services (RMS)** <br/> |RMS for individuals is a free self-service subscription for users in an organization who have been sent sensitive files that are protected by Azure Rights Management (Azure RMS), but their IT department didn't implement Azure Rights Management (Azure RMS), or Active Directory Rights Management Services (AD RMS).  <br/> |[RMS for Individuals and Azure Rights Management](/azure/information-protection/rms-for-individuals) <br/> |[Microsoft Rights Management portal](https://portal.azure.com/) so you can check whether you can open a given rights-protected document.  <br/> |
|**Microsoft Power Apps** <br/> |In Power Apps, you can manage organizational data by running an app that you created or that someone else created and shared with you. Apps run on mobile devices such as phones, or you can run them in a browser by opening Dynamics 365. You can create an infinite variety of apps - all without learning a programming language such as C#.  <br/> |[Self-service sign up for Power Apps](/powerapps/maker/signup-for-powerapps) <br/> |[Microsoft Power Apps](https://go.microsoft.com/fwlink/p/?linkid=841462) <br/> |
|**Dynamics 365 for Financials** <br/> |Get a complete business and financial management solution for small and medium-sized businesses. Dynamics 365 for Financials makes ordering, selling, invoicing, and reporting easier—starting on day one.  <br/> |[Microsoft Dynamics 365 for Financials](https://go.microsoft.com/fwlink/p/?linkid=841466) <br/> |[Microsoft Dynamics 365 for Financials](https://go.microsoft.com/fwlink/p/?linkid=841466) <br/> |
|**Microsoft Dynamics 365 for Operations** <br/> |Increase your speed of doing business. The complete ERP tools in Dynamics 365 for Operations provide global scalability and digital intelligence to help you grow at your pace.  <br/> |[Microsoft Dynamics 365 for Operations](https://go.microsoft.com/fwlink/p/?linkid=841467) <br/> |[Microsoft Dynamics 365 for Operations](https://go.microsoft.com/fwlink/p/?linkid=841467) <br/> |
|**Microsoft AppSource** <br/> |Microsoft AppSource is a destination for software-as-a-service business apps built on the Microsoft cloud platform. AppSource features hundreds of apps, add-ons, and content packs that extend the functionality of Microsoft products like Azure, Dynamics 365, Office 365, and Power BI.  <br/> |[Microsoft AppSource](https://go.microsoft.com/fwlink/p/?linkid=841474) <br/> |[Microsoft AppSource](https://go.microsoft.com/fwlink/p/?linkid=841474) <br/> |
|**Microsoft Partner Incentives** <br/> |The Microsoft Partner Network provides three types of memberships. Each type provides a set of benefits to help your business grow. As you achieve your goals, participate in the program at the level that suits your unique needs to access more benefits and develop your relationship with us and other partners in the network.  <br/> |[Microsoft Partner Incentives](https://go.microsoft.com/fwlink/p/?linkid=841469) <br/> |[Microsoft Partner Incentives](https://go.microsoft.com/fwlink/p/?linkid=841469) <br/> |
|**Microsoft Business Center** <br/> |The Microsoft Business Center is the portal for customers who make purchases through the Microsoft Products and Services Agreement (MPSA). <br/> |[Quick Start: Register for the Microsoft Business Center](https://go.microsoft.com/fwlink/p/?linkid=841479) <br/> |[Microsoft Business Center](https://go.microsoft.com/fwlink/p/?linkid=841470) <br/> |
|**Microsoft Volume License Service Center** <br/> |The Microsoft Volume License Service Center displays licenses purchased under Enterprise, Select, Education (Campus or School), Open Value, Open License, and ISV Royalty agreements.  <br/> |[VLSC Training and Resources](https://www.microsoft.com/en-us/Licensing/existing-customer/vlsc-training-and-resources.aspx) <br/> |[Volume License Service Center](https://www.microsoft.com/Licensing/servicecenter/default.aspx) <br/> |
|**Minecraft Education Edition** <br/> |By using Minecraft as a platform for learning, educators can motivate and inspire every student to achieve more, and ignite a passion for learning. Join a community of educators learning how to use Minecraft to unlock student potential.  <br/> |[Minecraft Education Edition](https://go.microsoft.com/fwlink/p/?linkid=841480) <br/> |[Minecraft Education Edition](https://go.microsoft.com/fwlink/p/?linkid=841471) <br/> |
|**Microsoft Stream** <br/> |Upload and share videos across your organization to improve communication, participation, and learning.  <br/> |[Sign up &amp; Day 0 experience](https://go.microsoft.com/fwlink/p/?linkid=841472) <br/> |[Microsoft Stream](https://go.microsoft.com/fwlink/p/?linkid=841473) <br/> |
|**Power Automate** <br/> |Power Automate is a product to help you set up automated workflows between your favorite apps and services to synchronize files, get notifications, collect data, and more.  <br/> |[Sign up and sign in for Power Automate](/power-automate/sign-up-sign-in) <br/> |[Power Automate](https://go.microsoft.com/fwlink/p/?linkid=841465) <br/> |
|**Power Virtual Agents** <br/> |Power Virtual Agents empowers teams to easily create powerful bots using a guided, no-code graphical interface without the need for data scientists or developers. Power Virtual Agents addresses many of the major issues with bot building in the industry today. It eliminates the gap between the subject matter experts and the development teams building the bots, and the long latency between teams recognizing an issue and updating the bot to address it.  <br/> |[Licensing and access details](/power-virtual-agents/requirements-licensing) <br/> |[Sign up for Power Virtual Agents](https://aka.ms/TryPVA) <br/> |
|**Microsoft Entra B2B** <br/> |Microsoft Entra business-to-business (B2B) collaboration lets you invite External Users (or "guest users") to use your paid Microsoft Entra services. Some features are free, but for any paid Microsoft Entra features, you can invite up to five guest users for each Microsoft Entra edition license that you own for an employee or a nonguest user in your tenant. <br/> |[Self-service for Microsoft Entra B2B collaboration sign-up](/azure/active-directory/b2b/self-service-portal) <br/> |[Microsoft Entra B2B collaboration licensing guidance](/azure/active-directory/b2b/licensing-guidance) <br/> |
