---
title: Microsoft Copilot for Security in advanced hunting
description: Learn how Microsoft Copilot for Security advanced hunting (NL2KQL) plugin can generate a KQL query for you.
keywords: advanced hunting, threat hunting, cyber threat hunting, Security Copilot, AI, Microsoft Defender XDR, microsoft 365, m365, search, query, telemetry, custom detections, schema, kusto, visualization, chart, filters, drill-down, copilot for security advanced hunting, Microsoft Copilot for Security
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.service: defender-xdr
ms.subservice: adv-hunting
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords:
  - NOCSH
ms.author: maccruz
author: schmurky
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
  - m365-security
  - tier1
ms.topic: conceptual
ms.date: 03/01/2024
---

# Microsoft Copilot for Security in advanced hunting


**Applies to:**

- Microsoft Defender
- Microsoft Defender XDR

## Microsoft Copilot for Security in advanced hunting

[Microsoft Copilot for Security in Microsoft Defender](security-copilot-in-microsoft-365-defender.md) comes with a query assistant capability in advanced hunting. 

Threat hunters or security analysts who are not yet familiar with or have yet to learn KQL can make a request or ask a question in natural language (for instance, *Get all alerts involving user admin123*). Copilot for Security then generates a KQL query that corresponds to the request using the advanced hunting data schema.

This feature reduces the time  it takes to write a hunting query from scratch so that threat hunters and security analysts can focus on hunting and investigating threats.

Users with access to Copilot for Security have access to this capability in advanced hunting.

> [!NOTE]
> The advanced hunting capability is also available in the Copilot for Security standalone experience through the Microsoft Defender XDR plugin. Know more about [preinstalled plugins in Microsoft Security Copilot](/security-copilot/manage-plugins#preinstalled-plugins).

## Try your first request

1. Open the **advanced hunting** page from the navigation bar in Microsoft Defender XDR. The Copilot for Security side pane for advanced hunting appears at the right hand side.

    :::image type="content" source="../../media/advanced-hunting-security-copilot-pane.png" alt-text="Screenshot of the Copilot pane in advanced hunting." lightbox="../../media/advanced-hunting-security-copilot-pane.png":::
    
    You can also reopen Copilot by selecting ![Security Copilot button](../../media/security-copilot-ah-button.png) at the top of the query editor.
1. In the Copilot prompt bar, ask any threat hunting query that you want to run and press ![Send icon](../../media/Send.png) or **Enter** .

    :::image type="content" source="../../media/advanced-hunting-security-copilot-query.png" alt-text="Screenshot that shows Prompt bar in the Copilot for Security for advanced hunting." lightbox="../../media/advanced-hunting-security-copilot-query.png":::
       
1. Copilot generates a KQL query from your text instruction or question. While Copilot is generating, you can cancel the query generation by selecting **Cancel**.

    :::image type="content" source="../../media/advanced-hunting-security-copilot-generate.png" alt-text="Screenshot of Copilot for Security in advanced hunting generating a response." lightbox="../../media/advanced-hunting-security-copilot-generate.png":::    

 
1. Review the generated query. You can then choose to run the query by selecting **Add and run**. 

    :::image type="content" source="../../media/advanced-hunting-security-copilot-run-query.png" alt-text="Screenshot of Copilot button showing Add the query to query editor and run." lightbox="../../media/advanced-hunting-security-copilot-run-query.png":::      

    The generated query then appears as the last query in the query editor and runs automatically. 

    If you need to make further tweaks, select **Add to editor**. 

    :::image type="content" source="../../media/advanced-hunting-security-copilot-add-editor.png" alt-text="Screenshot of Copilot for Security in advanced hunting showing the Add to editor option." lightbox="../../media/advanced-hunting-security-copilot-add-editor.png"::: 

    The generated query appears in the query editor as the last query, where you can edit it before running using the regular **Run query** above the query editor.

   
1. You can provide feedback about the generated response by selecting the feedback **smiley icon** and choosing  **Confirm**, **Off-target**, or **Report**.


> [!TIP]
> Providing feedback is an important way to let the Microsoft Copilot for Security team know how well the query assistant was able to help in generating a useful KQL query. Feel free to articulate what could have made the query better, what adjustments you had to make before running the generated KQL query, or share the KQL query that you eventually used. 

## Query sessions

You can start your first session anytime by asking a question in the Copilot side pane in advanced hunting. Your session contains the requests you made using your user account. Closing the side pane or refreshing the advanced hunting page does not discard the session. You can still access the generated queries should you need them. 

Select the trash icon (**Clear session**) to discard the current session. 

:::image type="content" source="../../media/advanced-hunting-security-copilot-clear-session.png" alt-text="Screenshot of Copilot for Security in advanced hunting showing the clear session trash icon." lightbox="../../media/advanced-hunting-security-copilot-clear-session.png"::: 

## Modify settings

Select the gear icon in the Security Copilot side pane to choose whether or not to automatically add and run the generated query in advanced hunting. 

:::image type="content" source="../../media/advanced-hunting-security-copilot-settings.png" alt-text="Screenshot of Copilot for Security in advanced hunting showing the settings gear icon." lightbox="../../media/advanced-hunting-security-copilot-settings.png"::: 

Deselecting the **Run generated query automatically** setting gives you the option of running the generated query automatically (**Add and run**) or adding the generated query to the query editor for further modification (**Add to editor**). 
