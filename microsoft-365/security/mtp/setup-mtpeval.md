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


Creating a Microsoft Threat Protection evaluation lab and deploying it is a three-phase process:

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

Sign up for an Office 365 or Azure Active Directory subscription to generate a *.onmicrosoft.com* tenant that you can use to sign up for your Microsoft 365 E5 license. 

>[!NOTE]
>If you already have an existing Office 365 or Azure Active Directory subscription, you can skip the Office 365 E5 trial tenant creation steps.

In this phase, you'll be guided to:
- Create an Office 365 E5 trial tenant
- Enable Microsoft 365 trial subscription


## Create an Office 365 E5 trial tenant
>[!NOTE]
>If you already have an existing Office 365 or Azure Active Directory subscription, you can skip the Office 365 E5 trial tenant creation steps.

1. Go to the [Office 365 E5 product portal](https://www.microsoft.com/microsoft-365/business/office-365-enterprise-e5-business-software?activetab=pivot%3aoverviewtab) and select **Free trial**.
![Image of_page](../../media/mtp-eval-9.png) <br>
  
2. Complete the trial registration by entering your email address (personal or corporate). Click **Set up account**.
![Image of_page](../../media/mtp-eval-10.png) <br> 

3. Fill in your first name, last name, business phone number, company name, company size and Country or region.  
<br>![Image of_page](../../media/mtp-eval-11.png) <br>
>[!NOTE]
>The country or region you set here determines the data center region your Office 365 will be hosted.
  
4. Choose your verification preference: through a text message or call. Click **Send Verification Code**. 
![Image of_page](../../media/mtp-eval-12.png) <br>

5. Set the custom domain name for your tenant, then click **Next**.
<br>![Image of_page](../../media/mtp-eval-13.png) <br>
 
6. Set up the first identity which will be a Global Administrator for the tenant. Fill in **Name** and **Password**. Click **Sign up**.
![Image of_page](../../media/mtp-eval-14.png) <br>

7. Click **Go to Setup** to complete the Office 365 E5 trial tenant provisioning.
<br>![Image of_page](../../media/mtp-eval-15.png) <br>

8. Connect your corporate domain to the Office 365 tenant. [Optional] Choose **Connect a domain you already own** and type in your domain name. Click **Next**.
<br>![Image of_page](../../media/mtp-eval-16.png) <br>
 
9. You will need to add a TXT or MX record to validate the domain ownership. Once you’ve added the TXT or MX record to your domain, select **Verify**.
<br>![Image of_page](../../media/mtp-eval-17.png) <br>
 
10. [Optional] Create more user accounts for your tenant. You can skip this step by clicking **Next**.
![Image of_page](../../media/mtp-eval-18.png) <br>
 
11. [Optional] Download Office apps. Click **Next** to skip this step. 
<br>![Image of_page](../../media/mtp-eval-19.png) <br>

12. [Optional] Migrate email messages. Again, you can skip this step.
<br>![Image of_page](../../media/mtp-eval-20.png) <br>
 
13. Choose online services. Select **Exchange** and click **Next**. 
<br>![Image of_page](../../media/mtp-eval-21.png) <br>

14. Add MX, CNAME and TXT records to your domain. When completed, select **Verify**.
<br>![Image of_page](../../media/mtp-eval-22.png) <br>
 
15. Congratulations, you have completed the provisioning of your Office 365 tenant.
 ![Image of_page](../../media/mtp-eval-23.png) <br>

## Enable Microsoft 365 trial subscription

>[!NOTE]
>Signing up for a trial gives you 25 user licenses to use for a month. See [Try or Buy an M365 subscription](https://docs.microsoft.com/microsoft-365/commerce/try-or-buy-microsoft-365?view=o365-worldwide#try-or-buy-a-microsoft-365-subscription-1) for details.

1. From [Microsoft 365 Admin Center](https://admin.microsoft.com/), click **Billing** and then navigate to **Purchase services**.

2. Select **Microsoft 365 E5** and click **Start free trial**. 
![Image of_page](../../media/mtp-eval-24.png) <br>

3. Choose your verification preference: through a text message or call. Once you have decided, enter the phone number, select **Text me** or **Call me** depending on your selection.
![Image of_page](../../media/mtp-eval-25.png) <br>
 
4. Enter the verification code and click **Start your free trial**. 
<br>![Image of_page](../../media/mtp-eval-26.png) <br>

5. Click **Try now** to confirm your Microsoft 365 E5 trial.
<br>![Image of_page](../../media/mtp-eval-27.png) <br>
 
6. Go to the **Microsoft 365 Admin Center** > **Users** > **Active users**. Select your user account, select **Manage product licenses**, then swap the license from Office 365 E5 to **Microsoft 365 E5**. Click **Save**.
![Image of_page](../../media/mtp-eval-28.png) <br>
 
7. Select the global administrator account again then click **Manage username**.
<br>![Image of_page](../../media/mtp-eval-29.png) <br>

8. [Optional] Change the domain from *onmicrosoft.com* to your own domain—depending on what you chose on the previous steps. Click **Save changes**.
<br>![Image of_page](../../media/mtp-eval-30.png) <br>



## Next step
|||
|:-------|:-----|
|![Phase 3: Configure](../../media/onboard.png) <br>[Phase 3: Configure](config-mtpeval.md) | Configure each Microsoft Threat Protection pillar for your Microsoft Threat Protection evaluation lab
