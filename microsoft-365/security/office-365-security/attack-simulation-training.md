---
title: "Simulate a phishing attack with Microsoft Defender for Office 365"
ms.author: daniha
author: danihalfin
manager: dansimp
audience: ITPro
ms.topic: how-to
localization_priority: Normal
ms.collection: 
- M365-security-compliance 
- m365initiative-m365-defender 
ms.custom:
- seo-marvel-apr2020
description: "Learn how to simulate phishing attacks and train your users on phishing prevention."
---

# Simulate a phishing attack

Attack simulator training through Microsoft Defender for Office 365 lets you run benign cyber attack simulations on your organization to test your security policies and practices, as well as train the employees of your organization to increase their awareness and decrease their susceptibility to attacks. The following walks you through simulating a phishing attack using attack simulator training.

[!INCLUDE [Prerelease information](../includes/prerelease.md)]

## Launch a simulation

To launch a simulated phishing attack, navigate to the [Microsoft 365 security center](https://security.microsoft.com/). Under **Email & collaboration** click on **Attack simulator** and switch to the [**Simulations**](https://security.microsoft.com/attacksimulator?viewid=simulations) tab.

Under **Simulations** select **+ Launch a simulation**.

![Launch a simulation button in Microsoft 365 security center](../../media/attack-sim-preview-launch.png)

> [!NOTE]
> At any point during simulation creation you can save and close to continue configuring the simulation at a later time.

### Selecting a social engineering technique

Select from 4 different techniques, curated from the [MITRE ATT&CK® framework](https://attack.mitre.org/techniques/enterprise/). Different payloads are available for different techniques.

- **Credential harvest** attempts to collect credentials from employees by taking them to a well-known looking website with input boxes to submit a username and password.
- **Malware attachment** adds a malicious attachment to a message. When opened, this attachment will run some arbitrary code that will help the attacker compromise the target's device.
- **Link in attachment** is a type of credential harvest hybrid. An attacker inserts a URL into an email attachment. The URL within the attachment follows the same technique as credential harvest.
- **Link to malware** will run some arbitrary code from a file hosted on a well-known file-sharing site. A link to this malicious file is added to the message sent to the target and clicking it will run the file and help the attacker compromise the target's device.

> [!TIP]
> Clicking on **View details** within the description of each technique will display further information about the technique as well as the simulation steps for that technique.
>
> ![Simulation steps for credential harvest within attack simulation training in Microsoft 365 security center](../../media/attack-sim-preview-sim-steps.png)

Once you've selected the technique and clicked on **Next** give your simulation a name and optionally a description.

### Selecting a payload

Next, you'll need to either select a payload from the pre-existing payload catalog.

Payloads have a number of data points to help you choose:

- **Click rate** counts how many people clicked this payload.
- **Predicted compromise rate** predicts the percentage of people that will get compromised by this payload based on historic data for this payload across Microsoft Defender for Office 365 customers.
- **Simulations launched** counts the number of times this payload was used in other simulations.
- **Complexity**, available through **filters**, is calculated based on the number of indicators within the payload that clue targets in on it being an attack. More indicators lead to lower complexity.
- **Source**, available through **filters**, indicates whether the payload was created on your tenant or is a part of Microsoft's pre-existing payload catalog (global).

Select a payload from the list to see a preview of the payload with additional information about it.
