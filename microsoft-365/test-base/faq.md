---
title: Test Base FAQ
description: Review frequently asked questions
search.appverid: MET150
author: Tinacyt
ms.author: tinachen
manager: rshastri
audience: Software-Vendor
ms.topic: troubleshooting
ms.date: 07/06/2021
ms.service: test-base
ms.localizationpriority: medium
ms.collection: TestBase-M365
ms.custom:
ms.reviewer: tinachen
f1.keywords: NOCSH
---

# Test Base FAQ

**Q: How do we submit our packages to the Test Base team?**

**A:** Submit your packages directly to the Test Base environment using our self-serve portal.

To submit your application package, navigate to the [Azure Portal](https://www.aka.ms/testbaseportal "Test Base Homepage") and upload a zipped folder containing your application's binaries, dependencies, and test scripts via the self-serve Test Base portal dashboard.

For assistance and more information, see the onboarding user guide or contact our team at <testbasepreview@microsoft.com>.

**Q: What are Out-of-box (OOB) tests?**

**A:** Out-of-box (OOB) tests are standardized, default test runs where application packages are installed, launched and closed 30 times, and then uninstalled.

The packages created for Test Base have the following test scripts: install, launch, close, and optionally the uninstall script.

The Out-of-box (OOB) tests provide you with standardized telemetry on your application to compare across Windows builds.

**Q: Can we submit tests outside of the Out-of-box tests (install, launch, close, uninstall test scripts)?**

**A:** Yes, customers can also upload application packages for **functional tests** via the self-serve portal dashboard.
**Functional tests** are tests that enable customers to execute their scripts to run custom functionality on their application.

**Q: How long does KB installation take?**

**A:** The KB installation time can vary, the KB installation happens in between the install and launch scripts for OOB tests.

## Testing

**Q: Do you support functional tests?**

**A:** Yes, Test Base supports functional tests. Functional tests are tests that enable our customers to execute their scripts to run custom functionality on their application.

To submit your application package for functional testing, upload the zipped folder containing your application's binaries, dependencies, and test scripts via our self-serve portal dashboard.

For assistance and more information, see the onboarding user guide or contact our team at <testbasepreview@microsoft.com>.

**Q: How does Test Base handle our test data?**

**A:** Test Base securely collects and manages your test data on the Azure environment.

**Q: Can Test Base support our automated tests?**

**A:** Yes, Test Base supports automated tests, however, we don't support manual tests at this time due to service capabilities.

**Q: What languages and frameworks of automated tests do you support?**

**A:** We support all languages and frameworks. We invoke all scripts through PowerShell.

You also need to provide (upload) the dependent binaries of the required framework.

**Q: How soon does Test Base provide test results?**

**A:** For each test that we run against the pre-release builds, we provide results within 24 hours on your [Azure Portal](https://www.aka.ms/testbaseportal "Test Base Homepage") dashboard.

**Q: Can you reboot after installation?**

**A:** Yes, our process supports rebooting after installation. Be sure to select this option from the "Optional settings" drop list when setting your **Tasks** on the onboarding portal.

For Out-of-box (OOB) tests, you can specify whether a reboot is needed for the _Install script._

![Reboot picture.](Media/reboot.png)

While for functional tests, you can specify whether a reboot is required for each script that is added.

![How to select functional tests.](Media/functionalreboot.png)

**Q: What Windows versions do you support?**

**A:** We currently support Windows 11 clients, Windows 10 clients, Windows Server 2016, Windows Server 2016 Core version, Windows Server 2019, and Windows Server 2019 Core version.

**Q: What is the difference between Security Update tests and Feature Update tests?**

**A:** For Security update tests, we test against the **<ins>monthly pre-release security updates</ins>** on Windows, which is focused on keeping our users always secure and protected. For the Feature update tests, we test against the **<ins>bi-annual pre-release feature updates</ins>** which introduce new features and capabilities on Windows.

**Q: How long would my script run?**

**A:** All customer scripts within the package have a script execution limit of 60 mins. Script executions after 60-mins fail with a timeout error.

**Q: How do I investigate time-out failure?**

**A:** Follow the below mentioned steps:
1. Check video recording:
    1. to confirm if any Windows pop-up blocked the script execution.  
    2. if command is running in interactive mode and was waiting for input. 
2. Use VM snapshot to create VM to repro timeout and find out root cause.  
3. Fix code issue continue testing.  
4. If test running indeed exceeds 60 mins, split into multiple scripts below 60 mins. 
    1. Run all testing job in one central script which doesn’t have time limit, monitor the status from multiple Test Base artifact scripts. 

**Q: How can I pause my active packages?**

**A:** To pause your active packages, follow these steps:
1. Go to the ‘Manage packages’ page by clicking the link in the navigation bar.
2. Select the packages that you want to pause by checking the boxes next to package names.
3. Click the ‘Disable future tests’ button at the top of the page.

Note: The selected packages will be disabled for execution on all future OS updates that you have chosen. To resume the tests, you need to re-enable the packages by clicking the ‘Enable future tests’ button.

## Debugging options

**Q: Do we get access to the Virtual Machines (VMs) in case of failures? What does Test Base share?**

**A:** For the service to be compliant and the pre-release updates be secure, only Microsoft has access to the VMs. However, customers can view test results and other test metrics on their portal dashboard, including crash and hang signals, reliability metrics, memory and CPU utilization etc. We also generate and provide logs of test runs on the dashboard for download and further analysis.

We can also provide memory dumps for crash debugging as needed.

**Q: If there are issues found during the testing, what are the next steps to resolve these issues?**

**A:** The Test Base team performs an initial triage process to determine the root cause of the error, and then depending on our findings, we route to the customer or internal teams within Microsoft for debugging.

We always work closely with our customers in joint remediation to resolve any issues.

**Q: Does Microsoft hold the release of the security patch until the issue is resolved? What alternate resolutions are available?**

**A:** The goal of Test Base is to ensure our joint end customers don't face any issues. We work hard with Software Vendors to address any issues before the release, but in case the fix is not feasible we have other resolutions such as shims and blocks.

## Security

**Q: Where are my packages and binaries stored and what security precautions do you take to keep my data safe?**

**A:** Packages are uploaded and stored in Microsoft-managed Azure cloud storage. The data is encrypted in transit and at rest. When the system gets notified that one of your packages needs to be tested, a dedicated and isolated Microsoft-managed Azure Guest VM is provisioned with the OS image you selected. This VM lives within our Microsoft tenant and is provisioned within its own VNet/private subnet to prevent any lateral moves from any other Azure VM in our VM pool. The VM is configured to disallow any inbound traffic to protect the integrity of the Guest VM. In addition to these guardrails, your Test Base account and packages are uploaded as Azure resources and benefit from Azure RBAC. You can use Microsoft Entra ID plus Azure RBAC to control access to your account and packages.

**Q: Who has access to the VM?**

**A:** Only our backend services can access the Microsoft-managed VMs that run your workloads. These VMs are configured to disallow any inbound traffic, including remote connections, to protect the integrity of the VM.

## Miscellaneous

**Q: How will the service work with an on-prem server?**

**A:** We currently don't provide support for on-prem servers. However, if the server is exposing HTTP endpoint, we can connect to it over the internet.

**Q: Who hosts the VMs?**

**A:** Microsoft provisions the VM for this service, taking the load of doing so from the customer.

**Q: Does this service support web, mobile, or desktop applications?**

**A:** Currently, our focus is on desktop applications, however, we have plans to onboard web applications in the future, but we don't support mobile applications at this time.

**Q: What is the difference between Test Base and SUVP?**

**A:** The biggest difference between Test Base and SUVP is that our partners onboard their applications onto the Test Base Azure environment for validation runs against pre-release updates instead of carrying out the tests themselves.

In addition to pre-release security updates testing, we support pre-release feature updates testing on our platform. We have many other types of updates and OS testing on our roadmap.

**Q: Is there a cost associated with the service?**

**A:** The cost of the service depends on when you sign up and how much you use it. Here are the details:
- If you signed up before November 15, 2023, you'll receive 100 free hours (valued at $800) of Test Base usage under your subscription. These hours will expire in 6 months from the date of sign up. After the free hours are consumed or expired, you'll be charged $8 per hour for your usage.
- If you sign up on or after November 15, 2023, you'll receive 100 free hours (valued at $800) of Test Base usage under your tenant. These hours will expire in 6 months from the date of sign up. After the free hours are consumed or expired, you'll be charged $8 per hour for your usage.
- Starting from November 15, 2023, if you are a Windows E3/E5 or Microsoft 365 E3/E5 customer, you'll receive an additional 500 hours (equivalent to $4,000) of Test Base usage under your tenant. These hours don't have an expiration date and can be used anytime. Note: Don't disable the service principal "Test Base for M365 - Billing", otherwise you may lose the possibility of getting the additional hours.

**Q: How can I provide feedback about Test Base?**

**A:** To share your feedback about Test Base, select the **Feedback** icon at the bottom left of the portal. Include a screenshot with your submission to help Microsoft better understand your feedback.

You can also submit product suggestions and upvote other ideas at <testbasepreview@microsoft.com>.
