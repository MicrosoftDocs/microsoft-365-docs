---
title: "AD FS migration steps for the migration from Microsoft Cloud Deutschland"
ms.author: andyber
author: andybergen
manager: laurawi
ms.date: 12/01/2020
audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Normal
search.appverid:
- MET150
ms.collection: 
- Ent_O365
- Strat_O365_Enterprise
f1.keywords:
- CSH
ms.custom:
- Ent_TLGs
description: "Summary: Active Directory Federation Services (AD FS) migration steps for the migration from Microsoft Cloud Deutschland."
---

# AD FS migration steps for the migration from Microsoft Cloud Deutschland

This configuration change needs to be applied any time before phase 2 is starting.
Once phase 2 is completed the configuration change will work and you are able to sign in via Office 365 Global endpoints such as `https://portal.office.com`. If you are implementing the configuration change before phase 2, the Office 365 Global endpoints will _not yet work_ but the new relying party trust is still part of your Active Directory Federation Services (AD FS) configuration.

Customers who use federated authentication with Active Directory Federation Services (AD FS) shouldn't make changes to issuer URIs that are used for all authentications with on-premises Active Directory Domain Services (AD DS) during migration. Changing issuer URIs will lead to authentication failures for users in the domain. Issuer URIs can be changed directly in AD FS or when a domain is converted from _managed_ to _federated_ and vice-versa. We recommend that you do not add, remove, or convert a federated domain in the Azure AD tenant that has been migrated. Issuer URIs can be changed after the migration is fully complete.

To prepare your AD FS farm for the migration from Microsoft Cloud Deutschland perform the following steps:

1. Back up your AD FS settings, including the existing Microsoft Cloud Deutschland Relying Party trust, with [these steps](#backup). Name the backup **MicrosoftCloudDeutschlandOnly** to indicate it only has the Microsoft Cloud Deutschland tenant info.

   > [!NOTE]
   > The backup will not only contain the existing Office 365 Relying Party Trust for Microsoft Cloud Deutschland, but also all other Relying Party Trusts present on the respective AD FS farm.

2. Test the restore using the MicrosoftCloudDeutschlandOnly backup, The AD FS farm should continue to operate as Microsoft Cloud Deutschland only.

Once you have completed and tested the AD FS backup, perform the following steps to add a new relying party trust to your ADFS configuration:

1. Open the AD FS management console.

2. In the left pane of the ADFS management console navigate to the **Relying Party Trusts** menu.

3. In the right pane, select **Add Relying Party Trust...**

4. Select **Start** on the **Welcome** page of the Add Relying Party Trust wizard.

5. On the **Select Data Source** page, select **Import data about the relying party published online or on a local network**. The **Federation metadata address (host name or URL)** value must be set to `https://nexus.microsoftonline-p.com/federationmetadata/2007-06/federationmetadata.xml`. Click **Next**.

6. On the **Specify Display Name** page, type the display name such as **Microsoft Office 365 Identity Platform WorldWide**. Click **Next**.

7. If you are using ADFS in Windows Server 2012, on the wizard page **Configure Multi-factor Authentication Now?**, select the appropriate choice according to your authentication requirements. If you stick with the default, select **I don't want to configure multi-factor authentication settings for this relying party trust at this time**. You can change this setting later if you want to.

8. For AD FS 2012: On the **Choose Issuance Authorization Rules**, keep **Permit all users to access this relying party** selected and click **Next**.

9. For AD FS 2016 and AD FS 2019: On the **Choose Access Control Policy** page, select the appropriate access control policy and click **Next**. If none is chosen, the Relying Party Trust will **NOT** work.

10. Click **Next** on the **Ready to Add Trust** page to complete the wizard.

11. Click **Close** on the **Finish** page.

By closing the wizard, the Relying Party Trust with the Office 365 Global service is established. However, no Issuance Transform rules are configured yet.

You can use [AD FS Help](https://adfshelp.microsoft.com/AadTrustClaims/ClaimsGenerator) to generate the correct Issuance Transform rules. The generated claim rules created with AD FS Help can either be manually added through the AD FS management console or with PowerShell. AD FS Help will generate the necessary PowerShell scripts that need to be executed.  

> [!NOTE]
> [AD FS Help](https://adfshelp.microsoft.com/AadTrustClaims/ClaimsGenerator) will generate the standard issuance transform rules that ship with the product. However, if custom issuance transform rules are in place in the Microsoft Cloud Deutschland Relying Party Trust (for example, custom issuer URIs, non-standard immutable IDs, or any other customizations), the rules generated by AD FS help must be modified in a way that they fit the custom logic currently in place for the Microsoft Cloud Deutschland relying party trust. If these customizations are not integrated in the rules generated via [AD FS Help](https://adfshelp.microsoft.com/AadTrustClaims/ClaimsGenerator), authentication to **Microsoft Office 365 Identity Platform WorldWide** will most likely **not** work for your federated identities.

1. Run **Generate Claims** on [AD FS Help](https://adfshelp.microsoft.com/AadTrustClaims/ClaimsGenerator) and copy the PowerShell script using the **Copy** option on the right upper corner of the script.

2. Follow the steps outlined at [AD FS Help](https://adfshelp.microsoft.com/AadTrustClaims/ClaimsGenerator) on how to run the PowerShell script in your AD FS farm to generate the global Relying Party Trust. Before you run the script, replace the following code lines in the generated script as outlined below:

   ```powershell
   # AD FS Help generated value
   $claims = Get-AdfsRelyingPartyTrust -Identifier $(Get-RpIdentifier) | Select-Object IssuanceTransformRules;
   # replace with
   $claims = Get-AdfsRelyingPartyTrust -Identifier urn:federation:MicrosoftOnline | Select-Object IssuanceTransformRules;

   # AD FS Help generated value
   Set-AdfsRelyingPartyTrust -TargetIdentifier $(Get-RpIdentifier) -IssuanceTransformRules $RuleSet.ClaimRulesString;
   # replace with
   Set-AdfsRelyingPartyTrust -TargetIdentifier urn:federation:MicrosoftOnline -IssuanceTransformRules $RuleSet.ClaimRulesString;
   ```

3. Verify that two Relying PartyTtrusts are present; one for Microsoft Cloud Deutschland and one for the Office 365 Global service. The following command can be leveraged for the check. It should return two rows and the respective names and identifiers.

   ```powershell
   Get-AdfsRelyingPartyTrust | Where-Object {$_.Identifier -like 'urn:federation:MicrosoftOnline*'} | Select-Object Name, Identifier
   ```

4. Backup your full migration configuration, including both Relying Party trusts, using [these steps](#backup). Save it with the name **MicrosoftCloudDeutschlandAndWorldwide**.

5. While your tenant is in migration, regularly verify that AD FS authentication is working with Microsoft Cloud Deutschland and Microsoft Global cloud in the various supported migration steps.

## AD FS Disaster Recovery (WID Database)

To restore the AD FS farm in a disaster [AD FS Rapid Restore Tool](/windows-server/identity/ad-fs/operations/ad-fs-rapid-restore-tool) needs to be leveraged. Therefore, the tool must be downloaded and before the start of the migration a backup must be created and safely stored. In this example, the following commands have been run to back up a farm running on a WID database:

<h2 id="backup"></h2>

### Back up an AD FS Farm

1. Install the AD FS Rapid Restore Tool on the primary AD FS server.

2. Import the module in a PowerShell session with this command.

   ```powershell
   Import-Module "C:\Program Files (x86)\ADFS Rapid Recreation Tool\ADFSRapidRecreationTool.dll"
   ```

3. Run the backup command:

   ```powershell
   Backup-ADFS -StorageType "FileSystem" -storagePath "<Storage path of backup>" -EncryptionPassword "<password>" -BackupComment "Restore Doku" -BackupDKM
   ```

4. Store the backup safely on a desired destination.

### Restore an AD FS Farm

If your farm failed completely and there is no way to return to the old farm, do the following. 

1. Move the previously generated and stored backup to the new primary AD FS server.

2. Run the following `Restore-ADFS` PowerShell command. If necessary, import the AD FS SSL certificate beforehand.

   ```powershell
   Restore-ADFS -StorageType "FileSystem" -StoragePath "<Path to Backup>" -DecryptionPassword "<password>" -GroupServiceAccountIdentifier "<gMSA>" -DBConnectionString "WID" -RestoreDKM
   ```

3. Point your new DNS records or load balancer to the new AD FS servers.

## More information

Getting started:

- [Migration from Microsoft Cloud Deutschland to Office 365 services in the new German datacenter regions](ms-cloud-germany-transition.md)
- [Microsoft Cloud Deutschland Migration Assistance](https://aka.ms/germanymigrateassist)
- [How to opt-in for migration](ms-cloud-germany-migration-opt-in.md)
- [Customer experience during the migration](ms-cloud-germany-transition-experience.md)

Moving through the transition:

- [Migration phases actions and impacts](ms-cloud-germany-transition-phases.md)
- [Additional pre-work](ms-cloud-germany-transition-add-pre-work.md)
- Additional information for [Azure AD](ms-cloud-germany-transition-azure-ad.md), [devices](ms-cloud-germany-transition-add-devices.md), [experiences](ms-cloud-germany-transition-add-experience.md), and [AD FS](ms-cloud-germany-transition-add-adfs.md).

Cloud apps:

- [Dynamics 365 migration program information](/dynamics365/get-started/migrate-data-german-region)
- [Power BI migration program information](/power-bi/admin/service-admin-migrate-data-germany)
- [Getting started with your Microsoft Teams upgrade](/microsoftteams/upgrade-start-here)
