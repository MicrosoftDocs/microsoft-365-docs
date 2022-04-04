---
title: Integrate Microsoft Teams classes and meetings with Moodle
ms.author: danismith
author: DaniEASmith
manager: serdars
ms.reviewer: amitman 
audience: admin
ms.topic: article
ms.service: o365-administration
f1.keywords:
- CSH
ms.collection: M365-modern-desktop
ms.localizationpriority: medium
description: Create and manage Teams classes and meetings with Microsoft OneDrive Learning Tools Interoperability for Moodle.
---

# Integrate Microsoft Teams classes and meetings with Moodle

This guide provides the IT admin steps for registering both Teams Classes and Teams Meetings LTI apps on Moodle.

For details on managing all OneLTI tools for any LMS, see [Manage Microsoft OneLTI for any LMS](manage-microsoft-one-lti.md).

## Prerequisites before set up

## Register Microsoft OneLTI tools for use in Moodle

> [!IMPORTANT]
> The person who performs this integration should be a Moodle administrator and a Microsoft 365 tenant administrator.

1. Visit [Microsoft LTI Portal](https://lti.microsoft.com/) and select **Go to registration portal**.

2. Sign in with a Microsoft 365 administrator account.

3. After signing in, select **Add new registration**.

4. Select either **Teams Meetings LTI** or **Teams Classes LTI** to register and then select **Next**.

5. Enter in an easily identifiable **Registration** name and select **Moodle** as the LMS platform. Select **Next**.

6. You will be given a list of keys that need to be added to your Moodle site.

7. Open Moodle in another tab. Don't close the Microsoft LTI portal tab.

8. In Moodle, go to **Site administration** > **Plugins** > **Activity modules** > **External tools** > **Manage tools**.

9. On the **Manage tools** page, select **configure a tool manually**.

10. Under **Tool settings**, enter in a **Tool name** like **Microsoft Teams Classes**. For **LTI version**, select **LTI 1.3**. For **Public key type**, select **Keyset URL**.

11. Next, copy the keys from **Microsoft LTI keys** to the corresponding tools inputs.
    1. Microsoft's **Target link URL** key goes into Moodle's **Tool URL** field.
    1. Microsoft's **Open ID connection URL** key goes into Moodle's **Initiate login URL** field.
    1. Microsoft's **Redirect URL** key goes into Moodle's **Redirection URI(s)** field.

12. Select **Save changes**.

13. The new tool should now appear in the **Tools** section of Moodle's **Manage tools** page. Select the list icon to view **Tool configuration details**.

14. Go back to the Microsoft LTI portal tab. Select **Next** to go to the **LMS provided registration keys** step.

15. Copy and paste the values from Moodle's **Tool configuration details** to Microsoft's **LMS provided registration keys** step.

  Paste the values as follows:

  | On Moodle | On Microsoft LTI registration portal |
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

### Add Teams LTI tools to educators' Moodle courses

After registering Teams LTI apps, educators can add the Teams Classes app and the Teams Meetings app to their Moodle courses.

- [Educator instructions on adding the Teams Classes app](https://support.microsoft.com/topic/use-microsoft-teams-classes-in-your-lms-ac6a1e34-32f7-45e6-b83e-094185a1e78a).
- [Educator instructions on adding the Teams Meetings app](https://support.microsoft.com/topic/use-microsoft-teams-meetings-in-your-lms-11b6095d-f90b-42b9-ab77-4dcff2bb3b76).
