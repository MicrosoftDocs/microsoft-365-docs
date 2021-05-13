---
title: "Add staff to Bookings"
ms.author: kwekua
author: kwekuako
manager: scotv
audience: Admin
ms.topic: article
ms.service: bookings
localization_priority: Normal
ms.assetid: 298c529b-407b-4a2b-b2c5-6e77a9d1f07f
description: "Use this page to create your staff list and to manage staff member details such as name, phone number, and email address."
---

# Add staff to Bookings

The Staff page in Bookings is where you create your staffing list and manage staff member details such as name, phone number, and email address. You can also set working hours for each staff member from here.

## Add staff

Although Bookings is a feature of Microsoft 365, not all of your staff members are required to have a Microsoft 365 account. All staff members must have a valid email address so they can receive bookings and schedule changes.

Watch this video or follow the steps below to add your staff.

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RWuVka]

1. Go to the [Manage staff page](https://outlook.office.com/bookings/staff) and select **Add staff**

2. Select the **Add Staff** button.

3. When adding staff from within your organization, type their name in the **Add people** field and select them when they appear in the drop-down menu. The other fields will automatically populate.

    Once a staff member is added, you can edit the name that appears on all Bookings communications by selecting the **x** next to their name and editing the **Add people** field. This can be useful if you would like staff members to have a specific title or name displayed for customers, such as listing Adele Vance as “Dr. Vance, MD.”

4. To add staff from outside of your organization, manually fill in their email and other information.

    > [!NOTE]
    > Staff from outside your tenant will not be able to share free/busy information with Bookings.

5. For each staff member, select a role: Administrator, Viewer, or Guest.
    - **Administrators** can edit all settings, add and remove staff, and create, edit, or delete bookings.
    - **Viewers** can see all the bookings on the calendar, but they can’t modify or delete them. They have read-only access to settings.
    - **Guests** can be assigned to bookings, but they can’t open the booking mailbox.

6. Select **Notify all staff via email when a booking assigned to them is created or changed** to enable staff emails. The following is an example email:

    :::image type="content" source="media/bookings-notify-all-email.jpg" alt-text="A notification email from Bookings":::

7. Select **Events on Office 365 calendar affect availability** if you want the free/busy information from staff members’ calendars to impact availability for bookings services through Bookings.

    For example, if a staff member has a team meeting or a personal appointment scheduled for 3pm on a Wednesday, Bookings will show that staff member as unavailable to be booked in that time slot. That time will appear as busy or tentative in the Bookings calendar view, as shown in the below example.

    :::image type="content" source="media/bookings-busy-tentative-view.jpg" alt-text="A view of a Bookings calendar":::

> [!IMPORTANT]
> We highly recommend leaving this setting on (it is turned on by default) to avoid double-bookings and to optimize the availability of your staff members.

8. Select **Use business hours** to set all bookable times for your staff members to be only within the business hours that you set in the **Business hours** section on the Business Information page.

    By deselecting this box, staff can be given custom hours that further limit when they can be booked. This is helpful for scenarios where a staff member may only be on site Tuesdays and Wednesdays, or they dedicate their mornings for one type of appointments, and their afternoons for other types.

    > [!NOTE]
    > Only the first 31 staff members that you add to your staff page will appear when you assign staff members to a service.

## Make a Bookings user a super user without adding them as Staff in Bookings

Administrator of a booking mailbox is defined as Full Access + SendAs permissions to the booking mailbox.

To assign access:

Add-MailboxPermission -Identity <bookingmailbox@emailaddress> -User <adminusers@emailaddress> -AccessRights FullAccess -Deny:$false

Add-RecipientPermission -Identity <bookingmailbox@emailaddress> -Trustee <adminusers@emailaddress> -AccessRights SendAs -Confirm:$false


Example:

Add-MailboxPermission -Identity "NewBusiness 1_0e0815261" -User "Rebecca Valdivia" -AccessRights FullAccess -InheritanceType All

Add-RecipientPermission -Identity <bookingmailbox@emailaddress> -Trustee <adminusers@emailaddress> -AccessRights SendAs -Confirm:$false

This user will remain with admin access and is not shown in the Bookings Teams app.
This only works if the user being added is not already a "viewer" in the bookings business.