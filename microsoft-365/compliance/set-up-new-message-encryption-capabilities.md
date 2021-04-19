---
title: "Set up new Message Encryption capabilities"
f1.keywords:
- NOCSH
ms.author: krowley
author: kccross
manager: laurawi
ms.date: 4/30/2019
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Priority
search.appverid: 
- MET150
ms.assetid: 7ff0c040-b25c-4378-9904-b1b50210d00e
ms.collection: 
- Strat_O365_IP
- M365-security-compliance
description: Learn about the new Office 365 Message Encryption capabilities that enable protected email communication with people inside and outside your organization.
ms.custom: seo-marvel-apr2020
---

# Set up new Message Encryption capabilities

The new Office 365 Message Encryption (OME) capabilities allow organizations to share protected email with anyone on any device. Users can exchange protected messages with other Microsoft 365 organizations, as well as non-customers using Outlook.com, Gmail, and other email services.

Follow the steps below to ensure that the new OME capabilities are available in your organization.

## Verify that Azure Rights Management is active

The new OME capabilities leverage the protection features in [Azure Rights Management Services (Azure RMS)](/azure/information-protection/what-is-information-protection), the technology used by [Azure Information Protection](/azure/information-protection/what-is-azure-rms) to protect emails and documents via encryption and access controls.

The only prerequisite for using the new OME capabilities is that [Azure Rights Management](/azure/information-protection/what-is-azure-rms) must be activated in your organization's tenant. If it is, Microsoft 365 activates the new OME capabilities automatically and you don't need to do anything.

Azure RMS is also activated automatically for most eligible plans, so you probably don't have to do anything in this regard either. See [Activating Azure Rights Management](/azure/information-protection/activate-service) for more information.

>[!IMPORTANT]
>If you use Active Directory Rights Management service (AD RMS) with Exchange Online, you need to [migrate to Azure Information Protection](/azure/information-protection/migrate-from-ad-rms-to-azure-rms) before you can use the new OME capabilities. OME is not compatible with AD RMS.  

For more information, see:

- [What subscriptions do I need to use the new OME capabilities?](ome-faq.yml#what-subscriptions-do-i-need-to-use-the-new-ome-capabilities-) to check whether your subscription plan includes Azure Information Protection (which includes Azure RMS functionality).
- [Azure Information Protection](https://azure.microsoft.com/services/information-protection/) for information about purchasing an eligible subscription.  

### Manually activating Azure Rights Management

If you disabled Azure RMS, or if it was not automatically activated for any reason, you can activate it manually in the:

- **Microsoft 365 admin center**: See [How to activate Azure Rights Management from the admin center](/azure/information-protection/activate-office365) for instructions.
- **Azure portal**: See [How to activate Azure Rights Management from the Azure portal](/azure/information-protection/activate-azure) for instructions.

## Configure management of your Azure Information Protection tenant key

This is an optional step. Allowing Microsoft to manage the root key for Azure Information Protection is the default setting and recommended best practice for most organizations. If this is the case, you don't need to do anything.

There are many reasons, for example compliance requirements, that may necessitate you generating and managing your own root key (also known as bring your own key (BYOK)). If this is the case, we recommend that you complete the required steps before setting up the new OME capabilities. See [Planning and implementing your Azure Information Protection tenant key](/information-protection/plan-design/plan-implement-tenant-key) for more.

## Verify new OME configuration in Exchange Online PowerShell

You can verify that your Microsoft 365 tenant is properly configured to use the new OME capabilities in [Exchange Online PowerShell](/powershell/exchange/exchange-online-powershell).
  
1. [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell) using an account with global administrator permissions in your Microsoft 365 tenant.

2. Run the Get-IRMConfiguration cmdlet.

     You should see a value of $True for the AzureRMSLicensingEnabled parameter, which indicates that OME is configured in your tenant. If it is not, use Set-IRMConfiguration to set the value of AzureRMSLicensingEnabled to $True to enable OME.

3. Run the Test-IRMConfiguration cmdlet using the following syntax:

     ```powershell
     Test-IRMConfiguration [-Sender <email address >]
     ```  

   **Example**:

     ```powershell
     Test-IRMConfiguration -Sender securityadmin@contoso.com
     ```

     - Providing a sender email is optional, but forces the system to perform additional checks. Use the email address of any user in your Microsoft 365 tenant.

     Your results should be similar to:

     ```text
     Results : Acquiring RMS Templates ...
                - PASS: RMS Templates acquired.  Templates available: Contoso  - Confidential View Only, Contoso  - Confidential, Do Not
            Forward.
            Verifying encryption ...
                - PASS: Encryption verified successfully.
            Verifying decryption ...
                - PASS: Decryption verified successfully.
            Verifying IRM is enabled ...
                - PASS: IRM verified successfully.

            OVERALL RESULT: PASS
     ```

   - Your organization name will replace *Contoso*.

   - The default template names may be different from those displayed above. See [Configuring and managing templates for Azure Information Protection](/azure/information-protection/configure-policy-templates) for more.

4. Run the Remove-PSSession cmdlet to disconnect from the Rights Management service.

     ```powershell
     Remove-PSSession $session
     ```

## Next steps: Define mail flow rules to use new OME capabilities

If there are previously configured mail flow rules to encrypt email in your organization, you need to update the existing rules to use the new OME capabilities. For new deployments, you need to create new mail flow rules.

>[!IMPORTANT]
>If you do not update existing mail flow rules, your users will continue to receive encrypted mail that uses the previous HTML attachment format, instead of the new seamless OME experience.

Mail flow rules determine under what conditions email messages should be encrypted, as well as conditions for removing that encryption. When you set an action for a rule, any messages that match the rule conditions are encrypted when they're sent.
  
For steps on creating mail flow rules for OME, see [Define mail flow rules to encrypt email messages in Office 365](define-mail-flow-rules-to-encrypt-email.md).

To update existing rules to use the new OME capabilities:

1. In the Microsoft 365 admin center, go to **Admin centers > Exchange**.
2. In the Exchange admin center, go to **Mail flow > Rules**.
3. For each rule, in **Do the following**:
    - Select **Modify the message security**.
    - Select **Apply Office 365 Message Encryption and rights protection**.
    - Select an RMS template from the list.
    - Select **Save**.
    - Select **OK**.