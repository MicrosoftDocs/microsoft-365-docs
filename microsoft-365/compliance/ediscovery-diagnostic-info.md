---
title: "Collect eDiscovery diagnostic information"
description: "Learn about how to collect eDiscovery diagnostic information for a Microsoft Support case."
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
audience: Admin
ms.topic: article
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection:
- tier1
- purview-compliance
- ediscovery
search.appverid: 
- MOE150
- MET150
ms.custom:
- seo-marvel-apr2020
- admindeeplinkCOMPLIANCE
---

# Collect eDiscovery diagnostic information

Occasionally Microsoft Support engineers require specific information about your issue when you open a support case related to Microsoft Purview eDiscovery (Standard) or Microsoft Purview eDiscovery (Premium). This article provides guidance on how to collect diagnostic information to help support engineers investigate and resolve issues. Typically, you don't need to collect this information until asked to do so by a Microsoft Support engineer.

> [!IMPORTANT]
> The output from the cmdlets and diagnostic information described in this article may include sensitive information about litigation or internal investigations in your organization. Before sending the raw diagnostic information to Microsoft Support, you should review the information and redact any sensitive information (such as names or other information about parties to litigation or investigation) by replacing it with `XXXXXXX`. Using this method will also indicate to the Microsoft Support engineer that information was redacted.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Collect diagnostic information for eDiscovery (Standard)

Collecting diagnostic information for eDiscovery (Standard) is cmdlet-based, so you'll have to use Security & Compliance PowerShell. The following PowerShell examples will run cmdlets and then save the output to a specified text file. In most support cases, you should only have to run one of these commands.

To run the following cmdlets, [connect to Security & Compliance PowerShell</span>](/powershell/exchange/connect-to-scc-powershell). After you're connected, run one or more of the following commands and be sure to replace placeholders with the actual object names.

After reviewing the generated text file and redacting sensitive information, send it to the Microsoft Support engineer working on your case.

> [!NOTE]
> You can also run the commands in this section to collect diagnostic information for the searches and exports listed on the **Content search** page in the Microsoft Purview compliance portal.

### Collect information about searches

The following command collects information that's helpful when investigating issues with a Content search or a search associated with a eDiscovery (Standard) case.

```powershell
Get-ComplianceSearch "<Search name>" | FL > "ComplianceSearch.txt"
```

### Collect information about search actions

The following command collects information to investigate problems with previewing, exporting, or purging the results of a Content search or a search associated with a eDiscovery (Standard) case. You can identify the name of the search action by clicking an export that's listed on the **Exports** tab. To identify the names of preview and purge actions, you can run the **Get-ComplianceSearchAction** cmdlet to display a list of all actions. The format for the search action name is constructed by appending `_Preview`, `_Export`, or `_Purge` to the name of the corresponding search.

```powershell
Get-ComplianceSearchAction "<Search action name>" | FL > "ComplianceSearchAction.txt"
```

### Collect information about eDiscovery holds

When an eDiscovery hold associated with a eDiscovery (Standard) case isn't functioning as expected, run the following command to collect information about the Case Hold Policy and associated Case Hold Rule for the eDiscovery hold. The *Case hold policy name* in the following command is the same as the name of the eDiscovery hold. You can identify this name on the **Holds** tabs in the eDiscovery (Standard) case.

```powershell
Get-CaseHoldPolicy "<Case hold policy name>" | %{"--CaseHoldPolicy--";$_|FL;"--CaseHoldRule--";Get-CaseHoldRule -Policy $_.Name | FL} > "eDiscoveryCaseHold.txt"
```

### Collect all case information

Sometimes, it's not apparent what information is required by Microsoft Support to investigate your issue. In this situation, you can collect all of the diagnostics information for a eDiscovery (Standard) case. The *eDiscovery (Standard) case name* in the following command is the same as the name of a case that's displayed on the **eDiscovery (Standard)** page in the compliance portal.

```powershell
Get-ComplianceCase "<eDiscovery (Standard) case name>"| %{$_|fl;"`t==Searches==";Get-ComplianceSearch -Case $_.Name | FL;"`t==Search Actions==";Get-ComplianceSearchAction -Case $_.Name |FL;"`t==Holds==";Get-CaseHoldPolicy -Case $_.Name | %{$_|FL;"`t`t ==$($_.Name) Rules==";Get-CaseHoldRule -Policy $_.Name | FL}} > "eDiscoveryCase.txt"
```

## Collect diagnostic information for eDiscovery (Premium)

### Collect case information

The **Settings** tab in an eDiscovery (Premium) case lets you quickly copy the diagnostic information for the case. The diagnostic information is saved to the clipboard so you can paste it into a text file and send it to Microsoft Support.

1. Go to the compliance portal, and select **eDiscovery** > <a href="https://go.microsoft.com/fwlink/p/?linkid=2174006" target="_blank">**Premium**</a>.

2. Select a case and then click the **Settings** tab.

3. Under **Case Information**, click **Select**.

4. On the flyout page, click **Actions** > **Copy support information** to copy the information to the clipboard.

5. Open a text file (in Notepad) and then paste the information into the text file.

6. Save the text file and name it something like `eDP Diagnostic Info YYYY.MM.DD` (for example, `eDP Diagnostic Info 2020.11.03`).

After reviewing the file and redacting sensitive information, send it to the Microsoft Support engineer working on your case.

### Collect job information

1. While in a case, select the **Jobs** tab. 
2. Scroll down to the Job that failed and select it to open the job information pane.
3. Select **Copy support information** to copy the job diagnostics information to the clipboard.
4. Open a text file (in Notepad) and then paste the information into the text file.
5. Save the text file and name it something like `eDP Job Diagnostic Info YYYY.MM.DD` (for example, `eDP Diagnostic Info 2020.11.03`).
6. After reviewing the file and redacting sensitive information, send it to the Microsoft Support engineer working on your case.

