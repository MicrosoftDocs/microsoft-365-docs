---
title: Set up your Microsoft 365 Defender trial lab or pilot environment
description: Access Microsoft 365 Defender portal then set up your Microsoft 365 Defender trial lab environment
keywords: Microsoft 365 Defender trial setup, Microsoft 365 Defender pilot setup, try Microsoft 365 Defender, Microsoft 365 Defender evaluation lab setup
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.service: microsoft-365-security
ms.subservice: m365d
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: lovina-saldanha
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
  - m365-security
  - m365solution-scenario
  - m365solution-evalutatemtp
  - highpri
  - tier1
ms.topic: conceptual
ms.date: 02/17/2021
---

# Set up your Microsoft 365 Defender trial in a lab environment

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**
- Microsoft 365 Defender

This topic guides you to set up a dedicated lab environment. For information on setting up a trial in production, see the new [Evaluate and pilot Microsoft 365 Defender](eval-overview.md) guide.

## Create an Office 365 E5 trial tenant

> [!NOTE]
> If you already have an existing Office 365 or Azure Active Directory subscription, you can skip the Office 365 E5 trial tenant creation steps.

1. Go to the [Office 365 E5 product portal](https://www.microsoft.com/microsoft-365/business/office-365-enterprise-e5-business-software?activetab=pivot%3aoverviewtab) and select **Free trial**.

   :::image type="content" source="../../media/mtp-eval-9.png" alt-text="The Office 365 E5 free trial page" lightbox="../../media/mtp-eval-9.png":::

2. Complete the trial registration by entering your email address (personal or corporate). Click **Set up account**.

   :::image type="content" source="../../media/mtp-eval-10.png" alt-text="The Office 365 E5 trial registration setup page" lightbox="../../media/mtp-eval-10.png":::

3. Fill in your first name, last name, business phone number, company name, company size, and country or region.

   :::image type="content" source="../../media/mtp-eval-11.png" alt-text="The Office 365 E5 trial registration setup page asking for name, phone, and company details" lightbox="../../media/mtp-eval-11.png":::

   > [!NOTE]
   > The country or region you set here determines the data center region your Office 365 will be hosted.

4. Choose your verification preference: through a text message or call. Click **Send Verification Code**.

   :::image type="content" source="../../media/mtp-eval-12.png" alt-text="The Office 365 E5 trial registration setup page asking for verification preference" lightbox="../../media/mtp-eval-12.png":::

5. Set the custom domain name for your tenant, then click **Next**.

   :::image type="content" source="../../media/mtp-eval-13.png" alt-text="The Office 365 E5 trial registration setup page where you can set up your custom domain name" lightbox="../../media/mtp-eval-13.png":::

6. Set up the first identity, which will be a Global Administrator for the tenant. Fill in **Name** and **Password**. Click **Sign up**.

   :::image type="content" source="../../media/mtp-eval-14.png" alt-text="The Office 365 E5 trial registration setup page where you can set your business identity" lightbox="../../media/mtp-eval-14.png":::

7. Click **Go to Setup** to complete the Office 365 E5 trial tenant provisioning.

   :::image type="content" source="../../media/mtp-eval-15.png" alt-text="The Office 365 E5 trial registration setup page prompting to click Go to Setup button" lightbox="../../media/mtp-eval-15.png":::

8. Connect your corporate domain to the Office 365 tenant. [Optional] Choose **Connect a domain you already own** and type in your domain name. Click **Next**.

   :::image type="content" source="../../media/mtp-eval-16.png" alt-text="The Office 365 E5 Setup page where you should personalize your sign-in and email" lightbox="../../media/mtp-eval-16.png":::

9. Add a TXT or MX record to validate the domain ownership. Once you've added the TXT or MX record to your domain, select **Verify**.

   :::image type="content" source="../../media/mtp-eval-17.png" alt-text="The Office 365 E5 setup page where you should add a TXT of MX record to verify your domain" lightbox="../../media/mtp-eval-17.png":::

10. [Optional] Create more user accounts for your tenant. You can skip this step by clicking **Next**.

    :::image type="content" source="../../media/mtp-eval-18.png" alt-text="The Office 365 E5 setup page where you can add more users" lightbox="../../media/mtp-eval-18.png":::

11. [Optional] Download Office apps. Click **Next** to skip this step.

    :::image type="content" source="../../media/mtp-eval-19.png" alt-text="The Office 365 E5 page where you can install your Office apps" lightbox="../../media/mtp-eval-19.png":::

12. [Optional] Migrate email messages. Again, you can skip this step.

    :::image type="content" source="../../media/mtp-eval-20.png" alt-text="The Office 365 E5 where you can set whether to migrate email messages or not" lightbox="../../media/mtp-eval-20.png":::

13. Choose online services. Select **Exchange** and click **Next**.

    :::image type="content" source="../../media/mtp-eval-21.png" alt-text="The Office 365 E5 where you can choose your online services" lightbox="../../media/mtp-eval-21.png":::

14. Add MX, CNAME, and TXT records to your domain. When completed, select **Verify**.

    :::image type="content" source="../../media/mtp-eval-22.png" alt-text="The Office 365 E5 here you can add your DNS records" lightbox="../../media/mtp-eval-22.png":::

15. Congratulations, you have completed the provisioning of your Office 365 tenant.

    :::image type="content" source="../../media/mtp-eval-23.png" alt-text="The Office 365 E5 setup completion confirmation page" lightbox="../../media/mtp-eval-23.png":::

## Enable Microsoft 365 trial subscription

> [!NOTE]
> Signing up for a trial gives you 25 user licenses to use for a month. See [Try or buy a Microsoft 365 subscription](../../commerce/try-or-buy-microsoft-365.md) for details.

1. From [Microsoft 365 Admin Center](https://admin.microsoft.com/), click **Billing** and then navigate to **Purchase services**.

2. Select **Microsoft 365 E5** and click **Start free trial**.

   :::image type="content" source="../../media/mtp-eval-24.png" alt-text="The Microsoft 365 E5 Start free trial page" lightbox="../../media/mtp-eval-24.png":::

3. Choose your verification preference: through a text message or call. Once you have decided, enter the phone number, select **Text me** or **Call me** depending on your selection.

   :::image type="content" source="../../media/mtp-eval-25.png" alt-text="The Microsoft 365 E5 Start free trial page asking for contact details to send code to prove you are not a robot" lightbox="../../media/mtp-eval-25.png":::

4. Enter the verification code and click **Start your free trial**.

   :::image type="content" source="../../media/mtp-eval-26.png" alt-text="The Microsoft 365 E5 Start free trial page where you can fill out verification code the system sent to prove you are not a robot" lightbox="../../media/mtp-eval-26.png":::

5. Click **Try now** to confirm your Microsoft 365 E5 trial.

   :::image type="content" source="../../media/mtp-eval-27.png" alt-text="The Microsoft 365 E5 Start free trial page where you should clock the Try now button to start" lightbox="../../media/mtp-eval-27.png":::

6. Go to the **Microsoft 365 Admin Center** > **Users** > **Active users**. Select your user account, select **Manage product licenses**, then swap the license from Office 365 E5 to **Microsoft 365 E5**. Click **Save**.

   :::image type="content" source="../../media/mtp-eval-28.png" alt-text="The Microsoft 365 Admin Center page where you can select the Microsoft 365 E5 license" lightbox="../../media/mtp-eval-28.png":::

7. Select the global administrator account again then click **Manage username**.

   :::image type="content" source="../../media/mtp-eval-29.png" alt-text="The Microsoft 365 Admin Center page where you can select Account and Manage username" lightbox="../../media/mtp-eval-29.png":::

8. [Optional] Change the domain from *onmicrosoft.com* to your own domain—depending on what you chose on the previous steps. Click **Save changes**.

   :::image type="content" source="../../media/mtp-eval-30.png" alt-text="The Microsoft 365 Admin Center page where you can change your domain preference" lightbox="../../media/mtp-eval-30.png":::

## Next step

|[Phase 3: Configure & Onboard](config-m365d-eval.md) | Configure each Microsoft 365 Defender pillar for your Microsoft 365 Defender trial lab or pilot environment and onboard your endpoints.
|:-------|:-----|
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
