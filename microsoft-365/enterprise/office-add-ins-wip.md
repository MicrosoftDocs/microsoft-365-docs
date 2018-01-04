---
title: Protect enterprise documents running Microsoft Office Add-ins - Microsoft 365 Enterprise | Microsoft Docs
description:  Describes how to use WIP and Intune to protect enterprise data in documents running Office Add-ins.
author: barlanmsft
manager: angrobe
ms.prod: microsoft-365-enterprise
ms.topic: article
ms.date: 08/14/2017
ms.author: barlan
ms.reviewer: jsnow
ms.custom: it-pro
---

# Use WIP and Intune to protect enterprise data in documents running Office Add-ins
When users in an organization use Office Add-ins to interact with organizational data, this introduces a potential risk that some data might be leaked. You can use Windows Information Protection (WIP) and Microsoft Intune to protect enterprise data when users are running Office Add-ins.

[WIP](https://docs.microsoft.com/windows/threat-protection/windows-information-protection/protect-enterprise-data-using-wip), previously known as enterprise data protection (EDP), enables enterprises to protect intellectual property and corporate data. WIP helps protect enterprise apps and data against accidental data leaks, on both enterprise-owned devices and personal devices that employees bring to work, without requiring changes to the environment or other apps.

[Intune](https://www.microsoft.com/cloud-platform/microsoft-intune) provides a diverse set of tools for managing your complex mobile environment. Intune’s combination of mobile application management and device management options gives IT administrators and end users the flexibility to manage and secure mobile productivity.

You can use Intune to [create and deploy your WIP policy](https://docs.microsoft.com/windows/threat-protection/windows-information-protection/overview-create-wip-policy). With Intune, you can choose your protected apps and your WIP protection level, and find enterprise data on the network.

With WIP and Intune:

-   Enterprises can provide reasonable corporate data policy enforcement, even when data is downloaded to personal devices.

-   Enterprises can use contextual policy education to inform users about how to protect against inadvertent data disclosure to unmanaged apps and services.

-   End users can comply with corporate data policies without disrupting their typical workflow.

-   End users can seamlessly transition between work and personal productivity.

WIP and Intune run silently in the background and are virtually invisible when users don’t mix personal and enterprise content.

[Office Add-ins](https://dev.office.com/docs/add-ins/overview/office-add-ins) are built on web technologies. They bring the power and information from the web to Office applications. Add-ins interact with the content in an Office application via the APIs available in Office.js. Core tenets of Office Add-ins include:

-   **Security**: The Office JavaScript platform architecture ensures that the add-in code is sandboxed and runs in a separate process with respect to the host Office application. This enables the platform to take corrective action when an add-in does not meet performance standards or is potentially malicious by notifying the user, and in some cases, disabling the add-in. This architecture works on all platforms that support Office Add-ins.

-   **Resiliency**: The “out-of-process” nature of the add-in platform ensures that the add-in itself does not affect the performance or user experience of the host Office application. This is critical to keeping Office fast and responsive to user actions.

-   **Cross-platform**: Write once, run everywhere Office runs. Add-ins are currently supported on Windows, Office Online, Mac, and iPad. Support for add-ins on Android and Universal platform will be available soon.

Office Add-ins can work with enterprise and potentially sensitive content within a document. As part of the application extensibility, add-ins inherit their access from the host application policy. For example, if WIP settings prevent Word from accessing enterprise content, add-ins won’t be able to access enterprise content in a Word document.

One of the goals for add-ins is to remove any blocking issues for end users while also ensuring that enterprise administrators can block add-ins if necessary. The main principles for Office Add-ins regarding enabling data protection include:

-   Provide a way for IT administrators to block add-ins from loading.

-   Minimize or eliminate work required by administrators to make add-ins enterprise ready.

-   Minimize the prompts and messages for end users during add-in usage.

-   Eliminate prompts for end users when the document and the add-in have the same context.

## Add-ins and WIP

When you enable WIP in your environment, you can enable the following scenarios for your Office Add-ins:

-   Office Add-ins are activated using the document context. For Outlook, the context for the add-in is based on the current active mailbox. Add-in permissions are clearly defined in the Trust prompt before the add-in is activated. The user decides whether the add-in is appropriate in a specific document, and whether to allow the add-in to run.

-   Administrators can use group policy to block all Office Store add-ins or all Office Add-ins. This means that users can activate only trusted add-ins from a [SharePoint or Office 365 corporate catalog](https://dev.office.com/docs/add-ins/publish/publish-task-pane-and-content-add-ins-to-an-add-in-catalog).

-   Administrators can block add-ins at the firewall level using mobile device management (MDM). Note that this does not work for mobile or bring your own device (BYOD) scenarios.

-   Add-ins apply the copy-paste operation between enterprise and personal contexts. For example, when a user copies from an enterprise context add-in and pastes into a personal document, the default copy-paste across contexts prompt is displayed.

The following table lists the expected add-in behavior in enterprise and personal contexts and documents when WIP is enabled.

> [!NOTE]
> - Cut, copy, and paste operations within and outside of the host application work as expected in all scenarios.
> - Data transfer to add-in services is not protected in all scenarios.

|**Document or mailbox type**|**Add-in in personal context**|**Add-in in enterprise context**|
|:----------------|:-------------------------------------------------|:---------------------------------------------------|
|**Personal**     |Add-in loads in personal context.<br><br>Navigation to enterprise URLs is not allowed (even if in its own app domain).<br><br>Navigation to personal URLS is allowed|Add-in fails to load or activate.<br><br>If the document’s context is elevated (for example: by saving it to an enterprise location):<br><br>- Navigation to enterprise URLs is allowed.<br><br>- Navigation to personal URLs is allowed.|
|**Enterprise**   |Add-in loads in enterprise context.<br><br>Navigation to enterprise URLs is allowed.<br><br>Navigation to personal URLs is allowed.|Add-in loads in enterprise context.<br><br>Navigation to enterprise URLs is allowed.<br><br>Navigation to personal URLs is allowed.|
|**Unsaved**      |Add-in loads in personal context.<br><br>Navigation to enterprise URLs is not allowed (even if in its own app domain).<br><br>Navigation to personal URLs is allowed.|Add-in loads in enterprise context, and the document is silently converted to enterprise context. This means the document must be saved to an enterprise location.<br><br>Navigation to enterprise URLs is allowed.Navigation to personal URLs is allowed.            |


## Add-ins and Intune

On Office for iPad, Office Add-ins are currently supported for Word, Excel, and PowerPoint. Outlook currently supports add-ins on iOS (iPad and iPhone). Outlook administrators can turn off the add-ins by default, including developer installed add-ins, and only enable the specific add-ins approved by their organization. The following table outlines support for data protection scenarios for add-ins running on Office for iOS devices that use the Intune app protection tools.

> [!NOTE]
> For information about Outlook add-ins running on Android and iOS devices, see [Manage user access to add-ins for Outlook](https://technet.microsoft.com/library/jj943757(v=exchg.150).aspx) and [Add-ins for Outlook](https://technet.microsoft.com/library/jj943753(v=exchg.150).aspx).

|**Document or mailbox type**|**Add-ins in personal context for iOS with Intune App Protection<sup>*</sup>**|**Add-ins in enterprise context for iOS with Intune App Protection<sup>*</sup>**|
|:-----|:-----|:-----|
|**Personal**|Add-ins usage is unaffected by Intune app protection in personal documents.|Add-ins usage is unaffected by Intune app protection in personal documents.|
|**Enterprise**|Personal add-ins are allowed to activate.<br><br>Intune app protection policies can protect cut, copy, paste, and data transfer scenarios between the add-in and other applications on the device.<br><br>Data transfer to add-in services is not protected.|Enterprise add-ins are allowed to activate. Administrators can control which add-ins are published via Office management tools [(Office 365 centralized deployment)](https://support.office.com/article/Deploy-Office-add-ins-in-the-Office-365-admin-center-737e8c86-be63-44d7-bf02-492fa7cd9c3f).<br><br>Intune app protection policies can protect cut, copy, paste, and data transfer scenarios between the add-in and other applications on the device.<br><br>Data transfer to add-in services is not protected.|

>**<sup>*</sup>** Administrators can use [Office 365 Centralized deployment](https://support.office.com/article/Deploy-Office-add-ins-in-the-Office-365-admin-center-737e8c86-be63-44d7-bf02-492fa7cd9c3f) to deploy Word, Excel, and PowerPoint add-ins to individual users, groups, or an organization directly from the Office 365 admin center or using PowerShell scripts. When users open an Office application on Windows, Mac, or Office Online, the add-in is automatically installed on their ribbon.

## Summary

Given the principles with respect to Office Add-ins, WIP and Intune enable administrators to manage enterprise data and provide the tools that end users need to accomplish their work. This creates the potential for enterprise data to leak outside the organization’s boundaries. The Office JavaScript APIs do not currently provide a way for developers to recognize the type of data being transmitted between the Office document and the add-in. This requires developers to surface multiple prompts to the user and in some cases erroneously mark personal files as enterprise files, which can have a negative effect on the user experience, and does not align with data protection principles.

Microsoft is committed to protecting customer data and will continue to invest in making the Intune and WIP technologies and experience better for customers.

## Learn more

-   [General guidance and best practices for Windows Information Protection (WIP)](https://docs.microsoft.com/windows/threat-protection/windows-information-protection/guidance-and-best-practices-wip)

-   [What is Intune?](https://docs.microsoft.com/intune/introduction-intune)

-   [Overview of device enrollment methods](https://docs.microsoft.com/sccm/mdm/plan-design/device-enrollment-methods)

-   [Change your MDM authority](https://docs.microsoft.com/sccm/mdm/deploy-use/change-mdm-authority)

-   [Get ready to configure app protection policies for Windows 10](https://docs.microsoft.com/intune-classic/deploy-use/get-ready-to-configure-app-protection-policies-for-windows-10)
