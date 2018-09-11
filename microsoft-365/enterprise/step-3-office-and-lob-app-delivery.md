# Step 3: Office and LOB App Delivery

\[Pub Date\] ● 2 minutes to read ● Contributors

You are now ready to deliver Office and your Line of Business Apps. There are a number of ways to do this, including some exciting new options. Take some time to review and chose the best methods for your current needs.

![](media/getting-started-media/step-3-office-and-lob-app-delivery-media-1.png)

![](media/getting-started-media/step-3-office-and-lob-app-delivery-media-2.png)

While some applications are only available as either a 32-bit or 64-bit compiled version, others, including Office 365 ProPlus, both as 32-bit and 64-bit native compiled code, and one of biggest decisions you will make is which version to deploy. To take advantage of additional compute power and RAM on new devices, you will want to use the 64-bit version, but before you do you will need to figure out any add-in or file-related compatibility challenges you may have. This may require you to revisit Step 1 Device and App Readiness before you continue.

If nothing is blocking you, we recommend you deploy 64-bit versions of all apps, including Microsoft Office. 64-bit native compiled apps offer the best performance and is the most future-proof choice.

There are many methods and models for installing apps on Windows, so let’s look at your delivery options.

[Windows 10 application management](https://docs.microsoft.com/en-us/windows/application-management/)

## MSI-based Deployments

For your line of business apps, you’ll probably use MSI-based packages or executables, and install apps as part of an OS deployment task sequence. Windows 10 continues to work with these packages

Software deployment tools like System Center Configuration Manager and Microsoft Intune are also optimized to deliver MSI-packaged apps. Once you have validated your apps on Windows 10, you can use System Center Configuration Manager (current branch) for app delivery. If you use the Company Portal in Microsoft Intune you can extend the choice of IT sanctioned apps available to your organization to include the latest applications, and users to self-select what they need.

![](media/getting-started-media/step-3-office-and-lob-app-delivery-media-3.png)

## PC Imaging

Another popular method of app delivery is PC imaging. In this case, applications are either installed via task sequence or manually on a sample PC, then a system image is captured with the required applications pre-installed. The imaging approach to build and capture can save time when provisioning new PCs but remember Operating systems and apps within the image can become stale quickly. The Cumulative Update model in Windows 10 and Office 365 ProPlus help with this problem, but doesn’t eliminate it completely. This is why we recommend a thin image approach, where your applications are installed from outside the image at deploy time.

![](media/getting-started-media/step-3-office-and-lob-app-delivery-media-4.png)

If you do want to include Office 365 ProPlus in your image, remember that this uses a user-based activation; it cannot be pre-activated by the system admin. Use the Office Deployment Tool to pre-install Office on the device you are imaging and skip the user sign-in. Users can sign-in, be assigned the activation and take advantage of other capabilities that leverage sign-in on first use.

## Click-to-Run 

Office 365 ProPlus is installed using Click-to-Run, and Click-to-Run replaces MSI-based packaging in every version of the upcoming Office 2019 release for Windows. It brings with it a number of advantages, including faster installations, faster and more efficient updating, and cleaner uninstallation

Programs delivered via Click-to-Run execute in a virtual application environment on your computer and so co-exist with other applications without conflict; they also take about half the disk space they would as an MSI-based package. And because Click-to-Run supports program streaming, by streaming the most commonly used features first, users can start using Office applications in just a few minutes, rather than waiting for Office to install fully first. This is important not just for the initial deployment, it means updates can be streamed seamlessly in the background with minimal impact on users.

If you use System Center Configuration Manager, you can still use it for broad deployment of Office 365 ProPlus. System Center Configuration Manager (current branch) has native support for the updated Office Customization Tool, package customization for Click-to-Run at install time, and native support for software update management post installation.

[Manage Office 365 ProPlus with Configuration Manager](https://docs.microsoft.com/en-us/sccm/sum/deploy-use/manage-office-365-proplus-updates)

## Browser-based Apps

There are a few things to consider in order to make sure that your browser-based applications continue to work as expected. If you have specific web sites and apps that you know have compatibility problems with Microsoft Edge, you can use the Enterprise Mode site list so that the web sites will automatically open using Internet Explorer 11.

Additionally, if you know that your intranet sites aren't going to work properly with Microsoft Edge, you can set all intranet sites to open using Internet Explorer 11 automatically. This process uses an XML file to govern whether IE11 is used for each site, using Group Policy to enforce settings.

So far, we have covered well known deployment methods. But there are two new approaches to app deployment you may wish to consider.

[What is Enterprise Mode](https://docs.microsoft.com/en-us/internet-explorer/ie11-deploy-guide/what-is-enterprise-mode#what-is-enterprise-mode)

## Microsoft Store for Business 

Microsoft Store for Business provides a flexible way discover, acquire, manage, and distribute free and paid apps to Windows 10 devices at scale. As an IT admin, you can publish selected Microsoft Store apps, along with your custom own apps, to your own private store, and assign and re-use licenses as needed. Your users are directed to this store only, and so can only find and install approved apps.

Store apps can be natively built as UWP apps or you can use the Desktop Bridge to repackage your existing apps for the Store and add modern experiences for Windows 10. Aside from the code that you use to light up Windows 10 experiences, your app remains unchanged and continues to run in full-trust user mode.

![](media/getting-started-media/step-3-office-and-lob-app-delivery-media-5.png)

## MSIX Containerization

A new option for application packaging is MSIX. MSIX uses the containerization technology available in Windows, bringing together the best aspects of Click-to-Run, UWP and MSI packaging. With tools to migrate existing installers like EXE, MSI, APPV and APPX directly to MSIX we see MSIX Containerization provides a unifed path for the many installation technologies in use today. MSIX support is included in current versions of Windows: any device running Windows 10 RS5 or newer, includes everything you need to install and run MSIX packaged apps. Windows 10 dynamically integrates MSIX containers it receives, while keeping the applications separate from the operating system.

Containerization means clean uninstall and removal of packages, unlike a lot of MSI and EXE-based packages today that may leave items on the system. It also means only needing Standard User credentials to install applications – you do not have to have Administrator credentials to install MSIX containers. MSIX containers are more efficient to update too. When an update is published, use of block level differentials means only net new binaries are applied, reducing the update payload, for faster deployments consuming less network bandwidth.

(You can find more information on MSIX via the MSIX community site: <https://techcommunity.microsoft.com/t5/MSIX/ct-p/MSIX> )

## Next Step: 

## Step 4: User Files and Settings

[Step 4: User Files and Settings](https://review.docs.microsoft.com/microsoft-365/enterprise/step-4-user-files-and-settings-migration?branch=desktop-deployment-book)

## Previous Step

## Step 2: Directory and Network Readiness

[Step 2: Directory and Network Readiness](https://review.docs.microsoft.com/microsoft-365/enterprise/step-2-directory-and-network-readiness?branch=desktop-deployment-book) 

## Feedback:

We'd love to hear your thoughts. Choose the type you'd like to provide:

Product feedback Sign in to give documentation feedback

Our new feedback system is built on GitHub Issues. Read about this change in our blog post.
