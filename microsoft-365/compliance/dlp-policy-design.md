---
title: "Design a Data loss prevention policy"
f1.keywords:
- NOCSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date:
audience: ITPro
ms.topic: conceptual
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection:
- tier1
- highpri
- M365-security-compliance
search.appverid:
- MET150
description: "Learn how to design a data loss prevention (DLP) policy"
---

# Design a data loss prevention policy

Taking the time to design a policy before you implement it will get you to the desired results faster, and with fewer unintended issues, than creating it and then tuning by trial and error alone. Having your policy designs documented will also help you in communications, policy reviews, troubleshooting, and further tuning.

<!--, but excessive tuning to get the intended results can be time consuming.

 if you have to do a lot of tuning to get a policy to yield the intended results can be time consuming .-->

If you are new to Microsoft Purview DLP, it's helpful to work through these articles before you start designing a policy:

- [Learn about Microsoft Purview Data Loss Prevention](dlp-learn-about-dlp.md#learn-about-data-loss-prevention) - this article introduces you to the data loss prevention discipline and Microsoft's implementation of DLP
- [Plan for data loss prevention (DLP)](dlp-overview-plan-for-dlp.md#plan-for-data-loss-prevention-dlp) - by working through this article you will:
  - [Identify stakeholders](dlp-overview-plan-for-dlp.md#identify-stakeholders)
  - [Describe the categories of sensitive information to protect](dlp-overview-plan-for-dlp.md#describe-the-categories-of-sensitive-information-to-protect)
  - [Set goals and strategy](dlp-overview-plan-for-dlp.md#set-goals-and-strategy)
- [Data Loss Prevention policy reference](dlp-policy-reference.md#data-loss-prevention-policy-reference) - this article introduces all the components of a DLP policy and how each one influences the behavior of a policy

## Policy design overview

[Designing a policy](#policy-design-process) is mostly about clearly [defining your business needs, documenting them in a policy intent statement](#define-intent-for-the-policy) and then [mapping those needs to policy configuration](#map-business-needs-to-policy-configuration). You'll use the decisions you made in your planning phase to inform some of your policy design decisions.

### Define intent for the policy

You should be able to summarize the business intent for every policy you have in a single statement. Developing this statement will drive conversations in your organization and, when fully fleshed out, this statement directly links the policy to a business purpose and provides a roadmap for policy design. The steps in the [Plan for data loss prevention (DLP)](dlp-overview-plan-for-dlp.md#overview-of-planning-process) article will help you get started on your policy intent statement.

Remember from [DLP policy configuration overview](dlp-learn-about-dlp.md#dlp-policy-configuration-overview) that all DLP policies require that you:

- Choose what you want to monitor
- Choose where you want to monitor
- Choose the conditions that must be matched for a policy to be applied to an item
- Choose the action to take when the policy conditions are met

For example, here's a fictitious first draft of an intent statement that provides answers to all four questions:

*"We are a U.S. based organization, and we need to detect Office documents that contain sensitive health care information covered by HIPPA that are stored in OneDrive/SharePoint and protect against that information being shared in Teams chat and channel messages and restrict everyone from sharing them with unauthorized third parties".*

As you develop a policy design, you'll likely modify and extend the statement.

### Map business needs to policy configuration

Let's break the example draft statement down and map it to DLP policy configuration points.

|Statement|Configuration question answered and configuration mapping|
|---|---|
|"We are a U.S. based organization, and we need  to detect Office documents that contain sensitive health care information covered by HIPPA...|- **What to monitor**: Office docs, use the [U.S. Health Insurance Act (HIPAA)](what-the-dlp-policy-templates-include.md#us-health-insurance-act-hipaa) template </br>- **Conditions for a match**: (preconfigured but editable) - item contains U.S. SSN and Drug Enforcement Agency (DEA) number, International Classification of Diseases (ICD-9-CM), International Classification of Diseases (ICD-10-CM), content is shared with people outside my organization  </br> - drives conversations to clarify the triggering threshold for detection like [confidence levels](sensitive-information-type-learn-about.md#more-on-confidence-levels), and [instance count](dlp-policy-reference.md#content-contains) (called leakage tolerance).|
|...that are stored in OneDrive/SharePoint and protect against that information being shared Teams chat and channel messages...|- **Where to monitor**:  [Location scoping](dlp-policy-reference.md#locations) by including or excluding OneDrive and SharePoint sites and Teams chat/channel accounts or distribution groups.|
|...and restrict everyone from sharing those items with unauthorized third parties."|- **Actions to take**: [You add](dlp-policy-reference.md#actions) *Restrict access or encrypt the content in Microsoft 365 locations* </br> - drives conversation on what actions to take when a policy is triggered including protective actions like sharing restrictions, awareness actions like notifications and alerts, and user empowerment actions like allow user overrides of a blocking action|

This example doesn't cover all the configuration points of a DLP policy, it would need to be expanded. But it should get you thinking in the right direction as you develop your own DLP policy intent statements.

> [!IMPORTANT]
> Keep in mind that the location(s) you pick impact whether you can use sensitive information types, sensitivity labels and retention labels as well as the actions that are available. See, [Data Loss Prevention policy reference](dlp-policy-reference.md#data-loss-prevention-policy-reference).

### Complex rule design (preview)

The above HIPPA content in SharePoint and OneDrive is a simple example of a DLP policy. The DLP rule builder supports boolean logic (AND, OR, NOT) and nested groups. Here's a video that shows how you'd map two complex policy intent statements to policies in the rule builder.

- *Example 1 We need to block emails to all recipients that contain credit card numbers, OR that have the 'highly confidential' sensitivity label applied, but do NOT block the email if it is sent from someone on the finance team to adele.vance@contoso.com*

- *Example 2 Contoso needs to block all emails that contain a password protected file OR a zip document file extension ('zip' or '7z'), but do NOT block the email if the recipient is in the contoso.com domain OR the fabrikam.com domain, OR the sender is a member of the Contoso HR group.*


> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE55JXJ]

> [!IMPORTANT]
> - The use of the NOT condition in a nested group replaces the **Exceptions** functionality.
> - You need to create groups in order to use multiple operators as shown in the video.


> [!IMPORTANT]
> When an action in Office desktop client apps, (Word, Outlook, Excel, and PowerPoint) matches a policy that uses complex conditions, the user will only see policy tips for rules that use the **Content contains sensitive information** condition.


## Policy Design Process

1. Complete the steps in [Plan for data loss prevention (DLP)](dlp-overview-plan-for-dlp.md#plan-for-data-loss-prevention-dlp) - by working through this article you will:
   1. [Identify your stakeholders](dlp-overview-plan-for-dlp.md#identify-stakeholders)
   1. [Describe the categories of sensitive information to protect](dlp-overview-plan-for-dlp.md#describe-the-categories-of-sensitive-information-to-protect)
   1. [Set goals and strategy](dlp-overview-plan-for-dlp.md#set-goals-and-strategy)
   1. [Define your policy deployment plan](dlp-overview-plan-for-dlp.md#policy-deployment)

2. Familiarize yourself with [Data Loss Prevention policy reference](dlp-policy-reference.md#data-loss-prevention-policy-reference) so that you understand all the components of a DLP policy and how each one influences the behavior of a policy.

3. Familiarize yourself with [What the DLP policy templates include](what-the-dlp-policy-templates-include.md#what-the-dlp-policy-templates-include).

4. Develop your policy intent statement with your key stakeholders. Refer to the example earlier in this article.

5. Determine how this policy fits into your overall DLP policy strategy.

   > [!IMPORTANT]
   > Policies can't be renamed once they are created. If you must rename a policy, you will have to create a new one with the desired name and retire the old one. So decide on the naming structure that all your policies will use now.

6. Map the items in your policy intent statement to configuration options.

7. Decide which policy template you will start from, predefined or custom.

8. Go through the template and assemble all information required before you create the policy. It's likely that you will find that there are some configuration points that aren't covered in your policy intent statement. That's ok. Go back to your stakeholders to iron out the requirements for any missing configuration points.

9. Document the configuration of all the policy settings and review them with your stakeholders. You can re-use your policy intent statement mapping to configuration points, which is now fully fleshed out.

10. [Create a](create-test-tune-dlp-policy.md#create-test-and-tune-a-dlp-policy) draft policy and refer back to your [policy deployment](dlp-overview-plan-for-dlp.md#policy-deployment) plan.

<!--## Policy design examples

|Customer business needs description|approach|
|---|---|
|**Contoso Bank** is in a highly regulated industry and has  many different types of sensitive items in many different locations. </br> - knows which types of sensitive information are top priority. </br> - must minimize business disruption as policies are rolled out. </br> -  has IT resources and can hire experts to help plan, design deploy </br> - has a premier support contract with Microsoft|- Take the time to understand what regulations they must comply with and how they are going to comply. </br> -Take the time to understand the better together value of the Microsoft 365 Information Protection stack </br> - Develop sensitivity labeling scheme for prioritized items and apply </br> - Involve business process owners </br>- Design/code policies, deploy in test mode, train users </br>- repeat|
|**TailSpin Toys** doesn’t know what they have or where it is, and have little to no resource depth. They use Teams, OneDrive for Business and Exchange extensively.|- Start with simple policies on the prioritized locations. </br>- Monitor what gets identified </br>- Apply sensitivity labels accordingly </br>- Refine policies, train users|
|**Fabrikam** is a small startup and wants to protect its intellectual property, and must move quickly. They are willing to dedicate some resources, but can't afford to hire outside experts. </br>- Sensitive items are all in Microsoft 365 OneDrive for Business/SharePoint </br>- Adoption of OneDrive for Business and SharePoint is slow, employees/shadow IT use DropBox and Google drive to share/store items </br>- Employees value speed of work over data protection discipline </br>- Customer splurged and bought all 18 employees new Windows 10 devices|- Take advantage of the default DLP policy in Teams </br>- Use restricted by default setting for SharePoint items </br>- Deploy policies that prevent external sharing </br>- Deploy policies to prioritized locations </br>- Deploy policies to Windows 10 devices </br>- Block uploads to non-OneDrive for Business cloud storage|

1. For example:
    1. Identify your volume thresholds that your company deems to be low-risk (leakage tolerance), perhaps from unintentional sharing and is an opportunity to educate users and the threshold that is concerning or high-risk for your company that may need immediate attention.
    - example volume: “Low risk” for Contoso is 1 credit card number, perhaps it was a personal card that was shared carelessly
    - example volume: “High risk” for Contoso is 2 or more credit card numbers. It doesn’t feel like a common scenario that an employee would engage in accidentally

– For each of the sensitive information types listed out, list out **who should have access to that data when it’s generated** and **what type of activities should be allowable with that data**

  <!--(Perhaps this is where we can provide some basic categories, templates, activities and actions that are supported by Microsoft. Some of these items are not discoverable until you are deeper within a policy creation flow. If we provide, we should time stamp it for “last updated” or “as of xx/xx/xxx”)
– (Show table with parent-child relationships between categories, templates and sensitive info types that Microsoft supports) Should be gathered from GA Compliance environment-->

<!--

> [!TIP] The more locations you include ensures broader application of the policy and more consistent coverage. If you include locations that are mostly used for internal collaboration, the responsiveness of collaboration may be impacted.

- whether the protective actions you need are supported throught the associated location or if you need to compromise to extend coverage
    - also usefule for identifying the most restrictive actions available
    - (we shouldn't mention here that the "content contains" condition is the primary staple for a DLP policy and should be utilized as a starting point for policy creation. The other workload-specific conditions can be ustilized as an extended or granular control of company's DLP policy. Useful for when "too much" data is being restricted and known sensitive data typically falls under certain conditions.)
    - (We can mention here that their quantitative goal such as "protect X% of data across all locations while maintaining x productivity" can be monitored throught alerts or reports. If protection is too high of working against their established goals, they can come back to policy and tweak their conditions/actions)
- Finally, you should have a union of what, hwo and when to be covered which will easily map to generating a live policy via Microsoft DLP.
-
5. At this stage you should asses how you should start this policy. ***LINK OUT TO DEPLOYING A POLICY COVERED IN THE PLANNING TOPIC TOO***
    - Test: your company is very large, conservative or the actions established are pretty restrictive
    - Test w/ notifications: same as above, but you get to test out investigation cadence or volume
    - Live: immediately start this policy in your environment. Useful for when data protection is needed immediately, such as a reactive policy creation, or if you're confident in your planning, or if the risk is low (liek audit actions, etc.)
    - keep it off:
-->

<!--## Policy Design Examples

Here are some examples of more detailed policy intent statement to configuration mappings.

*We are a national healthcare provider based in the U.S. We need to protect our patient’s personal information and prevent it from egressing outside of our company’s borders. We want to limit access to our patient’s personal information to only authorized personnel, like our physicians and billing department from our on-premises devices. We've determined that any single instance of any of each information type in any item is not a data risk, but it is a risk when two or more occur in a single item. We have a Microsoft 365 E5 subscription and want to protect all locations and first party apps that are available to us because we can’t afford to have any data leaks. If an event occurs or is prevented, we want to alert our compliance admin and educate our end-users where necessary.*

|Statement|Configuration question answered and configuration mapping|
|---|---|
|We are a national healthcare provider based in the U.S. We need to protect our patient’s personal information...|- **What to monitor**: All available item types, use the [U.S. Health Insurance Act (HIPAA)](what-the-dlp-policy-templates-include.md#us-health-insurance-act-hipaa) template. </br>- **Conditions for a match**: (preconfigured but editable) - item contains full names, physical addresses, driver's license number, U.S. SSN
|...and prevent it from egressing outside of our company’s borders...|- **Actions to take**: Block anyone outside the organization from accessing items, block unintentional sharing by internal users with anyone outside the org.|
|...We want to limit access to our patient’s personal information to only authorized personnel, like our physicians and billing department from our on-premises devices...|- **Actions to take**: - Block access to items, block all activities (upload to cloud, copy to clipboard, copy to USB, copy to network share, access by restricted app, print, copy/move via Bluetooth, copy/move via remote desktop) from Windows devices.  </br> - **Where to monitor**: in all Microsoft 365 locations
|...We've determined that any single instance of any of each information type in any item is not a data risk, but it is a risk when two or more occur in a single item....|- **Conditions for a match**: (preconfigured but editable) any single item contains more than one of these or any two or more of these:  Full Name, U.S. Social Security Number, Drug Enforcement Agency (DEA) number, International Classification of Diseases (ICD-9-CM), International Classification of Diseases (ICD-10-CM), Physical Address, U.S. driver's license number. For example, two instanced of Full Name or one instance of a U.S. Social Security Number along with one instance of Drug Enforcement Agency (DEA) number will trigger a match.

   , content is shared with people outside my organization  </br> - drives conversations to clarify the triggering threshold for detection like [confidence levels](sensitive-information-type-learn-about.md#more-on-confidence-levels), and [instance count](dlp-policy-reference.md#content-contains) (called leakage tolerance).|
|...that are stored in OneDrive/SharePoint and protect against that information being shared Teams chat and channel messages...|- **Where to monitor**:  [Location scoping](dlp-policy-reference.md#locations) by including or excluding OneDrive and SharePoint sites and Teams chat/channel accounts or distribution groups.|
|...and restrict everyone from sharing those items with unauthorized third parties."|- **Actions to take**: [You add](dlp-policy-reference.md#actions) *Restrict access or encrypt the content in Microsoft 365 locations* </br> - drives conversation on what actions to take when a policy is triggered including protective actions like sharing restrictions, awareness actions like notifications and alerts, and user empowerment actions like allow user overrides of a blocking action|

-->

## See Also

- [Learn about data loss prevention](dlp-learn-about-dlp.md#learn-about-data-loss-prevention)
- [Plan for data loss prevention (DLP)](dlp-overview-plan-for-dlp.md#plan-for-data-loss-prevention-dlp)
- [Data Loss Prevention policy reference](dlp-policy-reference.md#data-loss-prevention-policy-reference)
- [Data Loss Prevention policy tips reference](dlp-policy-tips-reference.md#data-loss-prevention-policy-tips-reference)
- [Create, test, and tune a DLP policy](create-test-tune-dlp-policy.md#create-test-and-tune-a-dlp-policy)
