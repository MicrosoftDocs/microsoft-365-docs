---
title: "Avoid invalid characters in your spam filter rules and the spam filter policy"
f1.keywords:
- NOCSH
ms.author: tracyp
author: MSFTTracyP
manager: dansimp
ms.date: 09/24/2018
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
ms.collection:
- M365-security-compliance
description: "Provides help for administrators who have invalid characters in their anti-spam configuration and run into issues when attempting to use the Security &amp; Compliance Center."
---

# Avoid invalid characters in your spam filter rules and spam filter policy 

Previously, Office 365 administrators set up and configured spam filter rules and the spam filter policy by using the Exchange admin center (EAC). Now, you use the Security &amp; Compliance Center to manage the your anti-spam configuration. The following characters were supported in the EAC but are not supported for use in the Security &amp; Compliance Center.  

**Invalid characters:**
  
```\ % & * + / = ? { } | < > ( ) ; : , [ ] "```

If your spam filter rules or your spam filter policy contains any of the invalid characters, you might encounter any or all of these issues:
- You might be unable to find the policy or rules in the Security &amp; Compliance Center.
- You might receive errors when trying to get the rules or policy by using Windows PowerShell.
- You might find that the policy or settings do not run or perform as expected.

## Remove the invalid characters from the spam filter policy and rules

Once you have identified the policy and rules that contain invalid characters, you can change the names by using the Windows PowerShell cmdlets. 

1. [Connect to Exchange Online Using Remote PowerShell](https://docs.microsoft.com/powershell/exchange/exchange-online/connect-to-exchange-online-powershell/connect-to-exchange-online-powershell).
    
2. To change the name of the spam filter policy, run the Set-HostedContentFilterPolicy cmdlet as follows:
    
    ```powershell
    Set-HostedContentFilterPolicy -Identity "Old policy name" -Name "New policy name"
    ```  

3. To change the name of a spam filter rule, run the Set-HostedContentFilterRule cmdlet as follows:
    
    ```powershell
    Set-HostedContentFilterRule -Identity "Old rule name" -Name "New rule name"
    ```  

  
 ## For more information

[Threat management in the Security &amp; Compliance Center](protect-against-threats.md)
  
[Set-HostedContentFilterPolicy](https://docs.microsoft.com/powershell/module/exchange/antispam-antimalware/set-hostedcontentfilterpolicy)

[Set-HostedContentFilterRule](https://docs.microsoft.com/powershell/module/exchange/antispam-antimalware/set-hostedcontentfilterrule)
