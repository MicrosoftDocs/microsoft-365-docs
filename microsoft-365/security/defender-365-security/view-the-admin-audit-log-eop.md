---
title: View the admin audit log in standalone EOP
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date: 
audience: ITPro
ms.topic: how-to

localization_priority: Normal
ms.assetid: 003d7a74-3e16-4453-ae0c-9dbae51f66d1
description: Admins can learn how to view and search the admin audit log in standalone Exchange Online Protection (EOP).
ms.technology: mdo
ms.prod: m365-security
---

# View the admin audit log in standalone EOP

**Applies to**
- [Exchange Online Protection standalone](exchange-online-protection-overview.md)

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]


In standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes, you can use the Exchange admin center (EAC) or standalone EOP PowerShell to search for and view entries in the admin audit log.

The admin audit log records specific actions, based on standalone EOP PowerShell cmdlets, done by admins and users who have been assigned administrative privileges. Entries in the admin audit log provide you with information about what cmdlet was run, which parameters were used, who ran the cmdlet, and what objects were affected.

> [!NOTE]
>
> - Admin auditing logging is enabled by default, and you can't disable it.
>
> - The admin audit log doesn't record actions based on cmdlets that begins with the verbs **Get**, **Search**, or **Test**.
>
> - Audit log entries are kept for 90 days. When an entry is older than 90 days, it's deleted

## What do you need to know before you begin?

- To open the Exchange admin center, see [Exchange admin center in standalone EOP](exchange-admin-center-in-exchange-online-protection-eop.md).

- To connect to standalone EOP PowerShell, see [Connect to Exchange Online Protection PowerShell](https://docs.microsoft.com/powershell/exchange/connect-to-exchange-online-protection-powershell).

- You need to be assigned permissions in Exchange Online Protection before you can do the procedures in this article. Specifically, you need the **Audit Logs** or **View-Only Audit Logs** role, which are assigned to the **Organization Management**, **Compliance Management**, and **Security Administrator** role groups by default. For more information, see [Permissions in standalone EOP](feature-permissions-in-eop.md) and [Use the EAC modify the list of members in role groups](manage-admin-role-group-permissions-in-eop.md#use-the-eac-modify-the-list-of-members-in-role-groups).

- For information about keyboard shortcuts that may apply to the procedures in this article, see [Keyboard shortcuts for the Exchange admin center in Exchange Online](https://docs.microsoft.com/Exchange/accessibility/keyboard-shortcuts-in-admin-center).

> [!TIP]
> Having problems? Ask for help in the [Exchange Online Protection](https://social.technet.microsoft.com/Forums/forefront/home?forum=FOPE) forum.

## Use the EAC to view the admin audit log

1. In the EAC, go to **Compliance management** \> **Auditing**, and then choose **Run the admin audit log report**.

2. In the **Search for changes to administrator role groups** page that opens, choose a **Start date** and **End date** (the default range is the past two weeks), and then choose **Search**. All configuration changes made during the specified time period are displayed, and can be sorted, using the following information:

   - **Date**: The date and time that the configuration change was made. The date and time are stored in Coordinated Universal Time (UTC) format.

   - **Cmdlet**: The name of the cmdlet that was used to make the configuration change.

   - **User**: The name of the user account of the user who made the configuration change.

     Up to 5000 entries will be displayed on multiple pages. Specify a smaller date range if you need to narrow your results. If you select an individual search result, the following additional information is displayed in the details pane:

   - **Object modified**: The object that was modified by the cmdlet.

   - **Parameters (Parameter:Value)**: The cmdlet parameters that were used, and any value specified with the parameter.

3. If you want to print a specific audit log entry, choose the **Print** button in the details pane.

## Use standalone EOP PowerShell to view the admin audit log

You can use standalone EOP PowerShell to search for audit log entries that meet the criteria you specify. Use the following syntax:

```PowerShell
Search-AdminAuditLog [-Cmdlets <Cmdlet1,Cmdlet2,...CmdletN>] [-Parameters <Parameter1,Parameter2,...ParameterN>] [-StartDate <UTCDateTime>] [-EndDate <UTCDateTime>] [-UserIds <"User1","User2",..."UserN">] [-ObjectIds <"Object1","Object2",..."ObjectN">] [-IsSuccess <$true | $false>]
```

**Notes**:

- You can only use the _Parameters_ parameter together with the _Cmdlets_ parameter.

- The _ObjectIds_ parameter filters the results by the object that was modified by the cmdlet. A valid value depends on how the object is represented in the audit log. For example:

  - Name
  - Canonical distinguished name (for example, contoso.com/Users/Akia Al-Zuhairi)

  You'll likely need to use other filtering parameters on this cmdlet to narrow down the results and identify the types of objects that you're interested in.

- The _UserIds_ parameter filters the results by the user who made the change (who ran the cmdlet).

- For the _StartDate_ and _EndDate_ parameters, if you specify a date/time value without a time zone, the value is in Coordinated Universal Time (UTC). To specify a date/time value for this parameter, use either of the following options:

  - Specify the date/time value in UTC: For example, "2016-05-06 14:30:00z".

  - Specify the date/time value as a formula that converts the date/time in your local time zone to UTC: For example, `(Get-Date "5/6/2016 9:30 AM").ToUniversalTime()`. For more information, see [Get-Date](https://docs.microsoft.com/powershell/module/microsoft.powershell.utility/get-date).

- The cmdlet returns a maximum of 1,000 log entries by default. Use the _ResultSize_ parameter to specify up to 250,000 log entries. Or, use the value `Unlimited` to return all entries.

This example performs a search for all audit log entries with the following criteria:

- **Start date**: August 4, 2019
- **End date**: October 3, 2019
- **Cmdlets**: Update-RoleGroupMember

```PowerShell
Search-AdminAuditLog -Cmdlets Update-RoleGroupMember -StartDate (Get-Date "08/04/2019").ToUniversalTime() -EndDate (Get-Date "10/03/2019").ToUniversalTime()
```

For detailed syntax and parameter information, see [Search-AdminAuditLog](https://docs.microsoft.com/powershell/module/exchange/search-adminauditlog).

### View details of audit log entries

The **Search-AdminAuditLog** cmdlet returns the fields described in the [Audit log contents](#audit-log-contents) section later in this article. Of the fields returned by the cmdlet, two fields, **CmdletParameters** and **ModifiedProperties**, contain additional information that isn't returned by default.

To view the contents of the **CmdletParameters** and **ModifiedProperties** fields, use the following steps.

1. Decide the criteria you want to search for, run the **Search-AdminAuditLog** cmdlet, and store the results in a variable using the following command.

    ```PowerShell
    $Results = Search-AdminAuditLog <search criteria>
    ```

2. Each audit log entry is stored as an array element in the variable `$Results`. You can select an array element by specifying its array element index. Array element indexes start at zero (0) for the first array element. For example, to retrieve the 5th array element, which has an index of 4, use the following command.

    ```PowerShell
    $Results[4]
    ```

3. The previous command returns the log entry stored in array element 4. To see the contents of the **CmdletParameters** and **ModifiedProperties** fields for this log entry, use the following commands.

    ```PowerShell
    $Results[4].CmdletParameters
    $Results[4].ModifiedProperties
    ```

4. To view the contents of the **CmdletParameters** or **ModifiedParameters** fields in another log entry, change the array element index.

## Audit log contents

Each audit log entry contains the information described in the following table. The audit log contains one or more audit log entries.

****

|Field|Description|
|---|---|
|`RunspaceId`|This field is used internally by EOP.|
|`ObjectModified`|This field contains the object that was modified by the cmdlet specified in the `CmdletName` field.|
|`CmdletName`|This field contains the name of the cmdlet that was run by the user in the `Caller` field.|
|`CmdletParameters`|This field contains the parameters that were specified when the cmdlet in the `CmdletName` field was run. Also stored in this field, but not visible in the default output, is the value specified with the parameter, if any.|
|`ModifiedProperties`|This field contains the properties that were modified on the object in the `ObjectModified` field. Also stored in this field, but not visible in the default output, are the old value of the property and the new value that was stored.|
|`Caller`|This field contains the user account of the user who ran the cmdlet in the `CmdletName` field.|
|`ExternalAccess`|This field is used internally by EOP.|
|`Succeeded`|This field specifies whether the cmdlet in the `CmdletName` field ran successfully. The value is either `True` or `False`.|
|`Error`|This field contains the error message generated if the cmdlet in the `CmdletName` field failed to complete successfully.|
|`RunDate`|This field contains the date and time when the cmdlet in the `CmdletName` field was run. The date and time are stored in Coordinated Universal Time (UTC) format.|
|`OriginatingServer`|This field indicates the server on which the cmdlet specified in the `CmdletName` field was run.|
|`ClientIP`|This field is used internally by EOP.|
|`SessionId`|This field is used internally by EOP.|
|`AppId`|This field is used internally by EOP.|
|`ClientAppId`|This field is used internally by EOP.|
|`Identity`|This field is used internally by EOP.|
|`IsValid`|This field is used internally by EOP.|
|`ObjectState`|This field is used internally by EOP.|
|
