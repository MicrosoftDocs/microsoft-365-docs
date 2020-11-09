---
title: "Gain insights through Attack simulation training"
ms.author: daniha
author: danihalfin
manager: dansimp
audience: ITPro
ms.topic: conceptual
ms.prod: microsoft-365-enterprise
localization_priority: Normal
ms.collection: 
- M365-security-compliance 
- m365initiative-m365-defender
description: "Learn how Attack simulation training in Microsoft 365 security center affect employees and gain insights from simulation and training outcomes."
---

# Gain insights through Attack simulation training

Within Attack simulation training, Microsoft provides you with insights based on outcomes of simulations and training employees went through. These insights will help inform you on progress your employees are doing on threat readiness, as well as recommend next steps to better prepare your employees and your environment for attacks.

[!INCLUDE [Prerelease information](../includes/prerelease.md)]

We are continuously working on expanding insights available to you, with behavior impact and recommended actions currently available.
To start, head over to [Attack simulation training on the Microsoft 365 security center](https://security.microsoft.com/attacksimulator?viewid=overview).

## Behavior impact on compromise rate

On the Attack simulation training **Overview** tab, you'll find the **behavior impact on compromise rate** card. This card shows how employees dealt with simulation you ran in contrast to the **predicted compromise rate**. You can use these insights to track progress in employees threat readiness by running multiple simulations against the same groups of employees.

In the graph you can see:

- **Predicted compromise rate** which reflects the average compromise rate for simulations using the same type of payload across tenants using Attack simulation training.
- **Actual compromise rate** reflects the percentage of employees that fell for the simulation.

Additionally, `<number> less susceptible to phishing` reflects the difference between actual number of employees compromised by the attack and the predicted compromise rate. This number of employees is less likely to be compromised by similar attacks in the future, while `<percent%> better than predicted rate` indicates how employees did overall in contrast with the predicted compromise rate.

![Behavior impact card on Attack simulation training overview](../../media/attack-sim-preview-behavior-impact-card.png)

To see a more detailed report, click on **View simulations and training efficacy report** which provides the same information with additional context from the simulation itself, like simulation technique and total users targeted.

## Recommended actions

On the [**Simulations** tab](https://security.microsoft.com/attacksimulator?viewid=simulations), selecting any of the simulations will take you to simulation details. Here you will find the **Recommended actions** section.

The recommended actions section details recommendations as available in [Microsoft Secure Score](../mtp/microsoft-secure-score.md). These recommendations are based on the payload used in the simulation and will help you protect your employees and your environment. Clicking on each improvement action will take you to its details.

![Recommendation actions section on Attack simulation training](../../media/attack-sim-preview-recommended-actions.png)

## Related Links

**Attack Simulator** [Create a phishing attack simulation](https://docs.microsoft.com/microsoft-365/security/office-365-security/attack-simulation-training?view=o365-worldwide) and [create a payload for training your people](https://docs.microsoft.com/microsoft-365/security/office-365-security/attack-simulation-training-payloads?view=o365-worldwide)
