Following Microsoft’s June 2021 announcement of Windows 11, many enterprise customers have begun planning Windows 11 migrations in tandem with their efforts to keep their Windows 10 devices up to date. This article outlines the primary considerations of any platform migration and how Microsoft Managed Desktop will support smooth transitions in our customer environments.

Timeline
========

Windows 11 preview builds are available effective June 28, 2021 via Windows Insider Program (link). Release builds are expected to become generally available (GA) by the end of calendar year 2021.

Microsoft Managed Desktop customer admins are welcome to install preview builds on managed and/or non-managed test devices. More information about previewing and testing Windows 11 in your Microsoft Managed Desktop tenant is available below.

Following general availability of Windows 11, Microsoft Managed Desktop will support Windows 10 and Windows 11 devices in parallel until Windows 10 reaches end of support.

Microsoft Managed Desktop will consult and advise customer admins to develop and implement migration plans for each tenant based on technical readiness and customer business considerations.

January 2022 is the soonest that Windows 11 may be offered to managed production devices via Microsoft Managed Desktop deployment rings.

Assessing pre-release builds of Windows 11 
==========================================

As more than 95% of customer devices under management are eligible for Windows 11, Microsoft Managed Desktop customer admins may want to preview the upgrade on test devices prior to production deployment.

For managed devices, customer IT admins may request to add test devices to the device group “\[Modern Workplace\] Windows 11 Pre-Release Test Devices.” This group receives Windows 11 preview builds along with a Microsoft Managed Desktop baseline configuration. Microsoft Managed Desktop does not manage the release cadence of Windows 11 preview builds, so members of this device group may receive updates more frequently than Windows 10 device groups.

For non-managed devices, customer admins can join the [Windows Insider Program](https://docs.microsoft.com/en-us/windows-insider/) to download preview builds and access guidance on self-deploying Windows 11. In the event non-managed Windows 11 devices are flagged as non-compliant, customer admins can request a Microsoft Managed Desktop device policy update. Please note that devices running Windows 11 pre-release builds that are later enrolled in Microsoft Managed Desktop will not be rolled back to Windows 10.

Support for pre-release Windows 11 devices
==========================================

Pre-release builds of any platform are expected to contain defects and application compatibility issues that can be identified and resolved prior to the GA release.

As a result, managed devices running pre-release builds of Windows 11 are considered test devices, but they are monitored along with the rest of the environment for security threats and subject to the same security alert response as other managed devices.

Because we are committed to helping customers migrate to Windows 11 while remaining productive, we encourage you to report defects you encounter with pre-release builds. Please note that we prioritize defects that will block user productivity upon broad deployment of Windows 11, as well as defects that block user productivity on managed Windows 10 devices.

Testing application compatibility
=================================

Application compatibility is one of the most common concerns in any platform migration due to the potential for productivity disruptions. Several proactive and reactive measures are in place to help Microsoft Managed Desktop customers feel confident in smooth app transitions to Windows 11.

Proactive measures
------------------

**Common apps.** Microsoft is extensively testing the most common enterprise applications and suites deployed on work-in-progress builds of Windows 11. We work with external software vendors and internal product teams to resolve any issues discovered during testing. . More information about our proactive compatibility testing effort can be found on the Application Compatibility blog.

**Line-of-business (LOB)** **apps.** Test Base is a resource that app publishers and their customer IT admins can use to submit niche apps and test cases for Microsoft to execute on a virtual machine running Windows 11 builds in a secure Azure environment. Results, test insights, and regression analysis for each test execution are available to the submitter on a private Azure portal. Microsoft Managed Desktop will help customers prioritize LOB apps for proactive validation based on app usage and reliability data. More information on Test Base can be found at the [Test Base landing page](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/test-base-for-microsoft-365-microsoft-ignite-2021-updates/ba-p/2185566).

Reactive measures
-----------------

Microsoft Managed Desktop customers who encounter App compatibility issues in test or production environments are eligible for support engaging [App Assure](https://docs.microsoft.com/en-us/fasttrack/products-and-capabilities#app-assure) and/or FastTrack, as appropriate, for remediation support. (For Windows 11, this covers any functionality with Office, Edge, and Teams applications running on the latest OS builds.) App Assure directly engages app publishers to prioritize and resolve LOB app compatibility issues that affect our customers.

Previewing and testing Windows 11 on managed devices (task page)

This page supplements the Windows 11 and Microsoft Managed Desktop overview page by detailing the actions required to enroll and participate in the Windows 11 compatibility testing program provided for your enterprise.

Add devices to the Windows 11 test group
========================================

Microsoft Managed Desktop has a device group for customer admins to test and evaluate Windows 11 in a managed environment. This group’s member devices receive new Windows 11 builds and Microsoft Managed Desktop baseline configurations as they become available, and will be monitored for reliability issues.

To enroll your devices in \[Modern Workplace\] Windows 11 Pre-Release Test Devices:

1.  Open a new service request (severity C) with the Microsoft Managed Desktop Service Engineering team.

2.  Use “Windows 11 Compatibility Enrollment” as the request title to expedite routing.

3.  In the description field, list the serial numbers of the devices that you intend to use for Windows 11 testing.

4.  Please note which, if any, of the specified devices are not yet deployed in your Microsoft Managed Desktop tenant.

You may choose any of your existing or new devices for Windows 11 testing, but you should not enroll production devices in this group due to the elevated risk of encountering defects or compatibility issues in pre-release builds. Prior device group assignments are removed upon assignment to this group.

Prioritize applications to submit to Test Base
==============================================

Business-critical applications are the best candidates for additional validation in a closed Windows 11 environment. Microsoft Managed Desktop can help you prioritize apps for Windows 11 testing based on usage and reliability data. To request our recommendations:

1.  Open a new service request (severity C) with the Microsoft Managed Desktop Service Engineering team.

2.  Use “Windows 11 Test Base Candidates” as the request title to expedite routing.

Report issues
=============

If you encounter Windows 11 compatibility issues with your line-of-business or Microsoft 365 apps, please report them to us for investigation and remediation. To report an issue:

1.  Open a new service request (severity C) with the Microsoft Managed Desktop Service Engineering team.

2.  Use “Windows 11 Compatibility Testing” as the request title to expedite routing.

3.  Describe the behavior and how severely it would hinder your business in a production environment.

Microsoft Managed Desktop triages and handles issues with pre-release builds based on productivity impact. While our service description does not cover issues with pre-release builds, Microsoft Managed Desktop will confer with customer admins to ensure issues that block user productivity are resolved prior to initiating migration within any given tenant.
