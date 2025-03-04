---
title: Integrate Microsoft Teams classes and meetings with Open LMS
author: MicrosoftHeidi
ms.author: heidip
manager: jacktremper
ms.reviewer: amitman 
ms.date: 04/04/2022
audience: admin
ms.topic: integration
ms.service: microsoft-365-business
f1.keywords:
- CSH
ms.collection: 
- M365-modern-desktop
- tier2
ms.localizationpriority: medium
description: Create and manage Teams classes and meetings with Microsoft Learning Tools Interoperability for Open LMS.
---

# Integrate Microsoft Teams classes and meetings within Open LMS

This guide provides the IT admin steps for registering both Teams Classes and Teams Meetings LTI apps on Open LMS.

For details on managing all LTI apps for any LMS, see [Manage Microsoft LMS Gateway for any LMS](manage-microsoft-one-lti.md).

## Prerequisites before set up

For the integration between Open LMS and Teams to function correctly, Open LMS and Teams must be set up to communicate with one another.

Follow the [instructions for installing and configuring the Moodle LMS plugins](open-lms-plugin-configuration.md).

## Register Microsoft Teams LTI for use in Open LMS

> [!IMPORTANT]
> The person who performs this integration should be an Open LMS administrator and a Microsoft 365 tenant administrator.

1. Visit [Microsoft LMS Gateway](https://lti.microsoft.com/) and select the **Go to registration portal** button.

2. Sign in with a Microsoft 365 administrator account.

3. After signing in, select **Add new registration**.

4. Select either **Teams Meetings LTI** or **Teams Classes LTI** to register and then select **Next**.

5. Enter in an easily identifiable **Registration** name and select **Open LMS** as the LMS platform. Select **Next**.

6. You'll be given a list of keys that need to be added to your Open LMS site.

7. Open Open LMS in another tab. Don't close the Microsoft LMS Gateway tab.

8. In Open LMS, go to **Site administration** > **Plugins** > **Activity modules** > **External tools** > **Manage tools**.

9. On the **Manage tools** page, select **configure a tool manually**.

10. Under **Tool settings**, enter in a **Tool name** like **Microsoft Teams Classes**. For **LTI version**, select **LTI 1.3**. For **Public key type**, select **Keyset URL**.

11. Next, copy the keys from **Microsoft LTI keys** to the corresponding tool inputs.
    1. Microsoft's **Target link URL** key goes into Open LMS's **Tool URL** field.
    1. Microsoft's **Open ID connection URL** key goes into Open LMS's **Initiate login URL** field.
    1. Microsoft's **Redirect URL** key goes into Open LMS's **Redirection URI(s)** field.

12. Select **Save changes**.

13. The new tool should now appear in the **Tools** section of Open LMS's **Manage tools** page. Select the list icon to view **Tool configuration details**.

14. Go back to the Microsoft LMS Gateway tab. Select **Next** to go to the **LMS provided registration keys** step.

15. Copy and paste the values from Open LMS's **Tool configuration details** to Microsoft's **LMS provided registration keys** step.

    Paste the values as follows:

    | On Open LMS | On Microsoft LTI registration portal |
    | --------- | ------------------------------------ |
    | Platform ID | Issuer ID URL |
    | Client ID | Client ID |
    | Deployment ID | Deployment ID |
    | Public keyset URL | Keyset URL |
    | Access token URL | Access token URL |
    | Authentication request URL | Platform authentication URL |

    Select **Next**.

16. Review the **Review and add** page. If there are no errors, select **Save and exit**. You should see a message indicating successful registration.

You've completed registration of either the Teams Classes or Teams Meetings LTI app.

If you would like to add the other app too, repeat the steps above, selecting the other Teams LTI app in step 4.

### Add Teams LTI apps to educators' Open LMS courses

After registering Teams LTI apps, educators can add the Teams Classes app and the Teams Meetings app to their Open LMS courses.

- [Educator instructions on adding the Teams Classes app](https://support.microsoft.com/topic/use-microsoft-teams-classes-in-your-lms-ac6a1e34-32f7-45e6-b83e-094185a1e78a).
- [Educator instructions on adding the Teams Meetings app](https://support.microsoft.com/topic/use-microsoft-teams-meetings-in-your-lms-11b6095d-f90b-42b9-ab77-4dcff2bb3b76).

## Technical requirements to launch Teams LTI apps

To launch the Teams LTI apps within Open LMS, there are a few technical requirements that need to be met.

> [!NOTE]
> IT admins and educators can register LTI apps on the LTI apps registration portal.

### IT admin technical requirements

- Use Moodle version 3.10 or above.
- Download the latest Microsoft O365 plugin for Moodle version 3.10 or above.
- Access the LTI apps registration portal to register the LTI apps.
  - Registration must be on completed on a desktop device.
- Download the latest version of Microsoft Edge, Google Chrome, Safari, or Mozilla Firefox.

### Educator technical requirements

- Access the LTI apps registration portal to register the LTI apps, if the IT admin hasn't registered the apps.
  - Registration must be on completed on a desktop device.
- Download the latest version of Microsoft Edge, Google Chrome, Safari, or Mozilla Firefox.
- [Teams LTI apps for Classes and Meetings in Open LMS](#add-teams-lti-apps-to-educators-open-lms-courses).

### Student technical requirements

- Teams LTI apps for Classes and Meetings in Open LMS.
  - Students don't need to take any actions to add the Teams Classes or Meetings LTI apps.
