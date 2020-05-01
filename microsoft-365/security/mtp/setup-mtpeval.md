---
title: Set up your Microsoft Threat Protection evaluation lab 
description: Access Microsoft 365 Security Center then setup your Microsoft Threat Protection evaluation lab
keywords:  Microsoft Threat Protection trial setup, try Microsoft Threat Protection, Microsoft Threat Protection evaluation lab setup  
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dolmont
author: DulceMontemayor
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article 
---

# Set up your Microsoft Threat Protection evaluation lab 

**Applies to:**
- Microsoft Threat Protection 


Deploying Microsoft Threat Protection is a three-phase process:

<br>
<table border="0" width="100%" align="center">
  <tr style="text-align:center;">
    <td align="center" style="width:25%; border:0;" >
      <a href= "https://docs.microsoft.com/microsoft-365/security/mtp/prepare-mtpeval?view=o365-worldwide"> 
        <img src="../../media/prepare.png" alt="Prepare your Microsoft Threat Protection evaluation lab" title="Prepare your Microsoft Threat Protection evaluation lab" />
      <br/>Phase 1: Prepare </a><br>
    </td>
     <td align="center"bgcolor="#d5f5e3">
      <a href="https://docs.microsoft.com/microsoft-365/security/mtp/setup-mtpeval?view=o365-worldwide">
        <img src="../../media/setup.png" alt="Set up your Microsoft Threat Protection evaluation lab" title="Set up your Microsoft Threat Protection evaluation lab" />
      <br/>Phase 2: Setup & Onboard </a><br>
    </td>
    <td align="center">
      <a href="https://docs.microsoft.com/microsoft-365/security/mtp/config-mtpeval?view=o365-worldwide">
        <img src="../../media/onboard.png" alt="
Configure each Microsoft Threat Protection pillar for your Microsoft Threat Protection evaluation lab" title="
Configure each Microsoft Threat Protection pillar for your Microsoft Threat Protection evaluation lab" />
      <br/>Phase 3: Configure </a><br>
</td>


  </tr>
</table>

You are currently in the set up phase. Take the initial steps to access Microsoft 365 Security Center then setup your evaluation lab.

The first step is to sign up for an Office 365 or Azure Active Directory subscription. This will generate a *.onmicrosoft.com* tenant that you can then use to sign up for Microsoft 365 E5 license. 

>[!NOTE]
>If you already have an existing Office 365 or Azure Active Directory subscription, you can skip the Office 365 E5 trial tenant creation steps.

In this phase, you'll be guided to:
- Create an Office 365 E5 trial tenant
- Enable Microsoft 365 trial subscription


## Create an Office 365 E5 trial tenant
>[!NOTE]
>If you already have an existing Office 365 or Azure Active Directory subscription, you can skip the Office 365 E5 trial tenant creation steps.

1. Go to the [Office 365 E5 product portal](https://www.microsoft.com/microsoft-365/business/office-365-enterprise-e5-business-software?activetab=pivot%3aoverviewtab) and select **Free trial**.

  
2. Complete the trial registration by entering your email address (personal or corporate). Click **Set up account**.
 

3. Fill in your first name, last name, business phone number, company name, company size and Country or region.  

>[!NOTE]
>The country or region you set here determines the data center region your Office 365 will be hosted.
  
4. Choose your verification preference: through a text message or call. Click **Send Verification Code**. 

5. Set the custom domain name for your tenant, then click **Next**.
 
6. Set up the first identity which will be a Global Administrator for the tenant. Fill in **Name** and **Password**. Click **Sign up**.
 
7. Click **Go to Setup** to complete the Office 365 E5 trial tenant provisioning

8. Connect your corporate domain to the Office 365 tenant. [Optional] Choose **Connect a domain you already own** and type in your domain name. Click **Next**.
 
9. You will need to add a TXT or MX record to validate the domain ownership. Once you’ve added the TXT or MX record to your domain, select **Verify**.
 
10. [Optional] Create more user accounts for your tenant. You can skip this step by clicking **Next**.
 
11. [Optional] Download Office apps. Click **Next** to skip this step. 

12. [Optional] Migrate email messages. Again, you can skip this step. 
 
13. Choose online services. Select **Exchange** and click **Next**. 

14. Add MX, CNAME and TXT records to your domain. When completed, select **Verify**.
 
15. Congratulations, you have completed the provisioning of your Office 365 tenant.


## Enable Microsoft 365 trial subscription

To gain access into which licenses are provisioned to your company, and to check the state of the licenses, go to the admin center.

1. From the **Partner portal**, click on the **Administer services > Office 365**.

2. Clicking on the **Partner portal** link will leverage the **Admin on behalf** option and will give you access to the customer admin center.

   ![Image of O365 admin portal](images/atp-O365-admin-portal-customer.png)





## Next step
|||
|:-------|:-----|
|![Phase 3: Configure](../../media/onboard.png) <br>[Phase 3: Configure](config-mtpeval.md) | Configure each Microsoft Threat Protection pillar for your Microsoft Threat Protection evaluation lab
