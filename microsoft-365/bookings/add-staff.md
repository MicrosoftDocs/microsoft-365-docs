---
title: "Add staff to Bookings"
ms.author: kwekua
author: kwekuako
manager: scotv
audience: Admin
ms.topic: article
ms.service: bookings
ms.localizationpriority: medium
description: "Use this page to create your staff list and to manage staff member details such as name, phone number, and email address."
---

# Add staff to Bookings

The Staff page in Bookings is where you create your staffing list and manage staff member details such as name, phone number, and email address. You can also set working hours for each staff member from here.

## Before you begin

Although Bookings is a feature of Microsoft 365, not all of your staff members are required to have a Microsoft 365 account. All staff members must have a valid email address so they can receive bookings and schedule changes.

## Manage staff

1. Go to **Bookings** > **Staff** > [**Manage staff**](https://outlook.office.com/bookings/staff).

2. Select **Add new staff** at the top of the page.

3. When adding staff from within your organization, type their name in the **Search for people or groups** box and select them when they appear in the drop-down menu. The other fields populate automatically.

4. To add staff from outside of your organization, manually fill in their email and other information.

    > [!NOTE]
    > Staff from outside your tenant can't share free/busy information with Bookings.

5. For each staff member, select a role: **Administrator**, **Viewer**, or **Guest**.
    - **Administrators** can edit all settings, add and remove staff, and create, edit, or delete bookings.
    - **Viewers** can see all the bookings on the calendar, but they can’t modify or delete them. They have read-only access to settings.
    - **Guests** can be assigned to bookings, but they can’t open the booking mailbox.

6. Select **Notify the staff member via email when a booking assigned to them is created or changed** to enable staff emails. The following is an example email:

    :::image type="content" source="media/bookings-notify-all-email.jpg" alt-text="A notification email from Bookings.":::

7. Select **Events on Office calendar affect availability** if you want the free/busy information from staff members’ calendars to impact availability for bookings services through Bookings.

    For example, if a staff member has a team meeting or a personal appointment scheduled for 3pm on a Wednesday, Bookings shows that staff member as unavailable for booking in that time slot. That time appears as busy or tentative in the Bookings calendar view, as shown in the below example.

    :::image type="content" source="media/bookings-busy-tentative-view.jpg" alt-text="A view of a Bookings calendar.":::

> [!IMPORTANT]
> We highly recommend leaving this setting on (it is turned on by default) to avoid double-bookings and to optimize the availability of your staff members.

8. Select **Use business hours** to set all bookable times for your staff members to be only within the business hours that you set in the **Business hours** section on the Business Information page.

    By deselecting this box, staff can be given custom hours that further limit when they can be booked. This is helpful for scenarios where a staff member is on site only Tuesdays and Wednesdays, or they dedicate their mornings for one type of appointment, and their afternoons for another.

    > [!NOTE]
    > Bookings supports up to 100 staff members in a Bookings Calendar.

## Make a Bookings user a super user without adding them as staff in Bookings

You can add a person to your staff list in Bookings without making them available to customers or clients. Once you make them a super user, they become an administrator of the booking mailbox. Being an administrator of a booking mailbox is defined as having full access and send-as permissions to the booking mailbox.

> [!NOTE]
> These steps only work if the user being added isn't already assigned a **Viewer** role in Bookings.

1. [Connect to Microsoft 365 with PowerShell](/office365/enterprise/powershell/connect-to-office-365-powershell#connect-with-the-microsoft-azure-active-directory-module-for-windows-powershell).

2. Using PowerShell, assign full access with the following commands:

    ```powershell
    Add-MailboxPermission -Identity <bookingmailbox@emailaddress> -User <adminusers@emailaddress> -AccessRights FullAccess -Deny:$false
    ```

3. And then run this command to assign send-as permissions.

    ```powershell
    Add-RecipientPermission -Identity <bookingmailbox@emailaddress> -Trustee <adminusers@emailaddress> -AccessRights SendAs -Confirm:$false
    ```

Here's an example PowerShell command to add Allie Bellew to the Contoso daycare booking mailbox.

1. First run this command:

    ```powershell
    Add-MailboxPermission -Identity "daycare@contoso.com" -User "Allie Bellew" -AccessRights FullAccess -InheritanceType All
    ```

2. Then run this command:

    ```powershell
    Add-RecipientPermission -Identity "daycare@contoso.com" -Trustee "Allie Bellew" -AccessRights SendAs -Confirm:$false
    ```

**Allie Bellew** now has administrator access but doesn't appear as bookable staff in Bookings.
