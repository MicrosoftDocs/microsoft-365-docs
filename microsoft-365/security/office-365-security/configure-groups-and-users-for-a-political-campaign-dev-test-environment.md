---
title: Configure groups & users - Political campaign dev/test environment
f1.keywords: 
  - NOCSH
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 12/15/2017
audience: ITPro
ms.topic: article
ms.collection: 
  - Ent_O365
  - Strat_O365_Enterprise

localization_priority: Priority
search.appverid: 
  - MET150
ms.assetid: 0e22bcf3-bad3-42a4-b44f-276e0cf4790f
description: "Summary: Create Office 365 and Enterprise Mobility + Security (EMS) trial subscriptions with users and groups for a political campaign dev/test environment."
ms.custom: seo-marvel-apr2020
ms.technology: mdo
ms.prod: m365-security
---

# Configure groups and users for a political campaign dev/test environment

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]

**Applies to**
- [Microsoft Defender for Office 365 plan 2](office-365-atp.md)

 **Summary:** Create Office 365 and Enterprise Mobility + Security (EMS) trial subscriptions with users and groups for a political campaign dev/test environment.

Use the instructions in this article to create a dev/test environment that includes simplified user accounts and groups for the [Microsoft Security Guidance for Political Campaigns, Nonprofits, and Other Agile Organizations](microsoft-security-guidance-for-political-campaigns-nonprofits-and-other-agile-o.md) solution.

## Phase 1: Create your Office 365 dev/test environment

In this phase, you obtain trial subscriptions for Office 365 E5 and Enterprise Mobility + Security (EMS) E5 for a fictional organization that represents a political campaign.

First, follow the instructions in **Phase 2** of [The lightweight base configuration](../../enterprise/lightweight-base-configuration-microsoft-365-enterprise.md).

Next, sign up for the EMS E5 trial subscription and add it to the same organization as your trial subscription.

1. If needed, sign in to the admin center with the credentials of the global administrator account of your trial subscription. For help, see [Where to sign in](https://support.microsoft.com/office/e9eb7d51-5430-4929-91ab-6157c5a050b4).

2. Click the **Admin** tile.

3. On the **Microsoft 365 admin center** tab in your browser, in the left navigation, click **Billing > Purchase services**.

4. On the **Purchase services** page, find the **Enterprise Mobility + Security E5** item. Hover your mouse pointer over it and click **Start free trial**.

5. On the **Confirm your order** page, click **Try now**.

6. On the **Order receipt** page, click **Continue**.

Next, enable the EMS E5 license for your global administrator account.

1. On the **Microsoft 365 admin center** tab in your browser, in the left navigation, click **Users > Active users**.

2. Click your global administrator account, and then click **Edit** for **Product licenses**.

3. On the **Product licenses** pane, turn the product license for **Enterprise Mobility + Security E5** to **On**, click **Save,** and then click **Close** twice.

## Phase 2: Create and configure your Azure Active Directory (AD) groups

In this phase, you create and configure the Azure AD groups for your campaign.

First, create a set of groups for a typical political campaign with the Azure portal.

1. On a separate tab in your browser, go to the Azure portal at <https://portal.azure.com>. If needed, sign in with the credentials of the global administrator account for your Office 365 E5 trial subscription.

2. In the Azure portal, click **Azure Active Directory > Users and groups > All groups**.

3. Do the following steps for each group name in this list:

   - Senior and strategic staff

   - IT staff

   - Analytics staff

   - Regular core staff

   - Operations staff

   - Field staff

1. On the **All groups** blade, click **+ New group**.

2. Type the group name from the list in **Name**.

3. Select **Dynamic user** in **Membership**.

4. Click **Yes** for **Enable Office features**.

5. Click **Add dynamic query**.

6. In **Add users where**, select **department**.

7. In the next field, select **Equals**.

8. In the next field, type the group name from the list.

9. Click **Add query**, and then click **Create**.

10. Click **Users and groups - All groups**.

Next, you configure the groups so that members are automatically assigned Office 365 E5 and EMS E5 licenses.

1. In the Azure portal, click **Azure Active Directory > Licenses > All products**.

2. In the list, select **Enterprise Mobility + Security E5** and **Office 365 Enterprise E5**, and then click **+ Assign**.

3. In the **Assign license** blade, click **Users and groups**.

4. In the list of groups, select the following:

   - Analytics staff

   - Field staff

   - IT staff

   - Operations staff

   - Regular core staff

   - Senior and strategic staff

5. Click **Select**, and then click **Assign**.

6. Close the Azure portal tab in your browser.

## Phase 3: Add your user accounts

In this phase, you add the example user accounts for your political campaign.

First, you [Connect with the Azure Active Directory PowerShell for Graph module](../../enterprise/connect-to-microsoft-365-powershell.md).

Next, you fill in your organization name, your location, and a common password, and then run these commands from the PowerShell command prompt or Integrated Script Environment (ISE):

```powershell
$orgName="<organization name, such as contoso for the contoso.onmicrosoft.com trial subscription domain name>"
$location="<the ISO ALPHA2 country code, such as US for the United States>"
$commonPassword="<common password for all the new accounts>"

$PasswordProfile=New-Object -TypeName Microsoft.Open.AzureAD.Model.PasswordProfile
$PasswordProfile.Password=$commonPassword

$deptName="Senior and strategic staff"
$userNames=@("Candidate","ChiefOfStaff","Strategic1")
foreach ($element in $userNames){ New-AzureADUser -DisplayName $element -PasswordProfile $PasswordProfile -UserPrincipalName ($element + "@" + $orgName + ".onmicrosoft.com") -AccountEnabled $true -MailNickName $element -Department $deptName -UsageLocation $location }
$deptName="IT staff"
$userNames=@("ITAdmin1","ITAdmin2")
foreach ($element in $userNames){ New-AzureADUser -DisplayName $element -PasswordProfile $PasswordProfile -UserPrincipalName ($element + "@" + $orgName + ".onmicrosoft.com") -AccountEnabled $true -MailNickName $element -Department $deptName -UsageLocation $location }
$deptName="Analytics staff"
$userNames=@("DataScientist1")
foreach ($element in $userNames){ New-AzureADUser -DisplayName $element -PasswordProfile $PasswordProfile -UserPrincipalName ($element + "@" + $orgName + ".onmicrosoft.com") -AccountEnabled $true -MailNickName $element -Department $deptName -UsageLocation $location }
$deptName="Regular core staff"
$userNames=@("Regular1","Regular2")
foreach ($element in $userNames){ New-AzureADUser -DisplayName $element -PasswordProfile $PasswordProfile -UserPrincipalName ($element + "@" + $orgName + ".onmicrosoft.com") -AccountEnabled $true -MailNickName $element -Department $deptName -UsageLocation $location }
$deptName="Operations staff"
$userNames=@("Operations1")
foreach ($element in $userNames){ New-AzureADUser -DisplayName $element -PasswordProfile $PasswordProfile -UserPrincipalName ($element + "@" + $orgName + ".onmicrosoft.com") -AccountEnabled $true -MailNickName $element -Department $deptName -UsageLocation $location }
$deptName="Field staff"
$userNames=@("FieldConsultant1")
foreach ($element in $userNames){ New-AzureADUser -DisplayName $element -PasswordProfile $PasswordProfile -UserPrincipalName ($element + "@" + $orgName + ".onmicrosoft.com") -AccountEnabled $true -MailNickName $element -Department $deptName -UsageLocation $location }
```

> [!IMPORTANT]
> The use of a common password here is for automation and ease of configuration for a dev/test environment. This is not recommended for production subscriptions. As you sign in with each of these new user accounts, you will be prompted to change the password.

Use these steps to verify that dynamic group membership and group-based licensing are working correctly.

1. From the **Microsoft Office Home** tab of your browser, click the **Admin** tile.

2. From the new **Microsoft 365 admin center** tab of your browser, click **Users**.

3. In the list of users, click **Candidate**.

4. In the pane that lists the properties of the **Candidate** user account, verify that:

   - It is a member of the **Senior and strategic staff** group (in **Group memberships**).

   - It has been assigned the **Enterprise Mobility + Security E5** and **Office 365 Enterprise E5** licenses (in **Product licenses**).

5. Close the **Candidate** user account pane.

## Record values for future reference

Record these values for working with the Office 365 and EMS trial subscriptions for this dev/test environment:

- Your trial subscription organization name: ![Underline](../../media/Common-Images/TableLine.png)

  For example, for the trial subscription domain name of contoso.onmicrosoft.com, the organization name is "contoso".

- The global administrator name: ![Underline](../../media/Common-Images/TableLine.png).onmicrosoft.com

  Record the password for this account and the common initial password for the other user accounts in a secure location.

## Next step

Build the four different types of SharePoint Online team sites in this dev/test environment with [Create team sites in a political campaign dev/test environment](create-team-sites-in-a-political-campaign-dev-test-environment.md).

## See also

[Microsoft Security Guidance for Political Campaigns, Nonprofits, and Other Agile Organizations](microsoft-security-guidance-for-political-campaigns-nonprofits-and-other-agile-o.md)

[Create team sites in a political campaign dev/test environment](create-team-sites-in-a-political-campaign-dev-test-environment.md)

[Cloud adoption Test Lab Guides (TLGs)](../../enterprise/cloud-adoption-test-lab-guides-tlgs.md)

[Cloud adoption and hybrid solutions](/office365/enterprise/cloud-adoption-and-hybrid-solutions)