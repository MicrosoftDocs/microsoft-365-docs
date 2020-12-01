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

To migrate your Active Directory Federation Services (AD FS) farm from Microsoft Cloud Deutschland:

1. Back up your AD FS settings including FF trust info with [these steps](#backup). Name the backup **Microsoft Cloud Deutschland_Only** to indicate it only has the Microsoft Cloud Deutschland tenant info.
2. Test the restore using the Microsoft Cloud Deutschland_Only backup, The AD FS farm should continue to operate as Microsoft Cloud Deutschland only.
3. Create a new Relying Party trust from **AD FS >  Office 365 services**.
4. In **Relying Party Trusts** in the AD FS management console, select **Add Relying Party Trust**.
5. Select **Next** on the **Welcome** page of the Add Relying Party Trust wizard.
6. On the **Select Data Source** page, select **Import data about the relying party published online or on a local network**. The **Federation metadata address (host name or URL)** value is set to `https://nexus.microsoftonline-p.com/federationmetadata/2007-06/federationmetadata.xml`. Click **Next**.
7. On the **Select Data Source** page, type the display name. Microsoft recommends **Microsoft Office 365 Identity Platform WorldWide**. Click **Next**.
8. Click **Next** on the **Configure Multi-factor Authentication Now?**, **Choose Issuance Authorization Rules**, and **Ready to Add Trust** pages.
9. Click **Close** on the **Finish** page.

By closing the wizard, the Relying Party Trust to the Office 365 services eSTS is established. However, no Issuance Transform rules are established.

You can use [AD FS Help](https://adfshelp.microsoft.com/AadTrustClaims/ClaimsGenerator) to generate the correct Issuance Transform rules. The generated claim rules created with AD FS Help can either be manually added through the AD FS management console or with PowerShell. AD FS Help will generate the necessary PowerShell scripts that need to be run.  

1. Run **Generate Claims** on AD FS help and copy the PowerShell claims transformation script using the **Copy** option on the right upper corner of the script.
2. Paste the generated PowerShell into the following:

  ```powershell
  $RuleSet = New-AdfsClaimRuleSet -ClaimRule "<AD FS Help generated PSH>"
  Set-AdfsRelyingPartyTrust -TargetName “Microsoft Office 365 Identity Platform WorldWide” -IssuanceTransformRules $RuleSet.ClaimRulesString;
  ```
3.	Execute the completed script.
4.	Verify that two Relying Party trusts are present; one for worldwide and one for BF.
5.	Backup your trusts using [these steps](#backup). Save it with the name **FFAndWorldwide**.
6.	Complete your backend migration and verify that AD FS still works during migration process.

## AD FS Disaster Recovery (WID Database)

To restore the AD FS farm in a disaster [AD FS Rapid Restore Tool](https://docs.microsoft.com/windows-server/identity/ad-fs/operations/ad-fs-rapid-restore-tool) needs to be leveraged. Therefore, the tool must be downloaded and before the start of the migration a backup must be created and safely stored. In this example (TAT environments) the following commands have been run to back up the farm:

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
- Additional information for [services](ms-cloud-germany-transition-add-general.md), [devices](ms-cloud-germany-transition-add-devices.md), [experiences](ms-cloud-germany-transition-add-experience.md), and [AD FS](ms-cloud-germany-transition-add-adfs.md).

Cloud apps:

- [Dynamics 365 migration program information](https://aka.ms/d365ceoptin)
- [Power BI migration program information](https://aka.ms/pbioptin)
- [Getting started with your Microsoft Teams upgrade](https://aka.ms/SkypeToTeams-Home)
