Assign deployment group
=======================

You can change the Device deployment group assigned to a device by using the Admin Portal.

<table>
<tbody>
<tr class="odd">
<td><p><strong>Important</strong></p>
<p>You can complete the above action after the device is registered, or after the user has enrolled. Changing a device's group after the user has enrolled will result in policies specific to the deployment group to be applied. Make sure you’ve selected the right devices before proceeding, as this will result in the device receiving updated policies of the target group. This can also include the latest Operating System and device restart. It can take up to 24 hours for the new group to take effect.</p></td>
</tr>
</tbody>
</table>

The device group you select will be applied to all devices you select in the first step. To move separate devices to different groups, you’ll need to repeat this process for each device group.

1.  In Microsoft Endpoint Manager, select **Devices** in the left pane. In the **Microsoft Managed Desktop** section of the menu, select **Devices**.

2.  Select the check boxes for the devices you want to modify.

3.  Select **Device actions** from the menu**.**

4.  Select **Assign device to group**; a fly-in opens.

5.  Use the drop-down menu to select the preferred device group and **Save**.

6.  The **Group Assigned By** will show **Pending**.

7.  The **Group Assigned By** will be updated to **Admin,** and the **Group** column will display the selected group**,** once the assignment is complete.

A combination of values in **Group** and **Group assigned by** reflects the preferred assignment.

<table>
<tbody>
<tr class="odd">
<td><p><strong>(i)Note</strong></p>
<p>You can't move devices that are in an <strong>error</strong> or <strong>pending</strong> registration state.</p>
<p>Devices not properly removed may appear with a ready status on the UI, resulting in this workflow to complete without making the change. If you notice that the <strong>Group assigned by</strong> does not change to Pending after you complete the workflow, confirm that the device is available in Intune.</p></td>
</tr>
</tbody>
</table>

**Feedback**

Note to Jaimie

On docs this can be at **Working with Microsoft Managed Desktop -&gt; Assign device to group** (same as Remove devices and Change device profile)

Device Groups
=============

Microsoft Managed Desktop uses deployment groups to manage the assignment and release of configuration and updates to devices. Devices are added to the groups (aka rings) automatically when they are enrolled into Microsoft Managed Desktop. This enables ring-based deployment that allows for devices to receive changes in a staggered timeline.

As the IT admin, you may want to assign certain devices for test purposes only, or specific early adopters to receive the changes first. In addition, if you have critical devices such as executive devices, or business critical functions that should receive changes in the last wave. The following are available for these purposes, so you can specify your preference to be included with the automatic assignment of devices -

**Test** – devices that are designated for test purposes or users with devices who can provide early feedback. This group receives changes frequently and feedback from here is of high impact. This group will only have devices you specify.

**First** – early adopters, friends of IT, IT Pros, representatives of business functions, who can validate changes, provide feedback, to drive adoption.

**Broad** – receives changes last. Most of your organization will be here. In addition, as an IT admin you can also specify devices that should only receive changes last as they are devices performing business critical functions or belong to users in critical roles. Selecting this option will ensure that Microsoft Managed Desktop will not automatically assign them to other groups.

**Automatic** – select this option, when you want to release a previously assigned device back to the pool. Microsoft Managed Desktop will identify a device group, except Test, for which the selected device(s) will be a member of.

Understanding Group assigned by

The **Group assigned by** column has two expected values of **Auto** and **Admin**. An interim value of **Pending** is displayed until the workflow successfully completes all required actions to ensure that the request is processed accurately.

When complete the value is updated to **Admin**, to reflect that the action has completed. Each deployment group involves an Azure Active Directory (AAD) device group. A combination of values in **Group** and **Group assigned by** reflects the preferred assignment.

There are additional device groups that are fully auto populated by Microsoft Managed Desktop so changes can be gradually deployed across the organization.

<table>
<tbody>
<tr class="odd">
<td><h1 id="important-do-not-modify-membership-of-these-groups-directly.-use-the-interface-as-described-in-assign-deployment-group.">Important: Do not modify membership of these groups directly. Use the interface as described in Assign deployment group.</h1></td>
</tr>
</tbody>
</table>

Open question – are there other locations on docs that need to be updated?

Found a reference here - [How updates are handled in Microsoft Managed Desktop - Microsoft Managed Desktop \| Microsoft Docs](https://docs.microsoft.com/en-us/microsoft-365/managed-desktop/service-description/updates?view=o365-worldwide)
