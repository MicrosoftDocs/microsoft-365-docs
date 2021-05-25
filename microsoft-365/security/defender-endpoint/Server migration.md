Server migration scenarios 

This chapter contains high level instructions for various possible migration scenarios. Please note that these high-level steps are intended as guidelines and based on this early release. We will provide updated instructions for the various management products at a later stage. 

 

**Note**: Full Microsoft Endpoint Configuration Manager automation & integration and MDE Attach will be available for testing at a later date. Please use Group Policy, PowerShell, MEM tenant attach or local configuration in the interim. Azure Defender automated deployment and onboarding is also not available currently.

 

Microsoft Endpoint Configuration Manager migration scenarios 

1.  > I’m using Microsoft Endpoint Configuration Manager to manage my servers, including System Center Endpoint Protection (SCEP) and Microsoft Monitoring Agent (MMA), and want to move to the new Microsoft Defender Antivirus instead. How do I proceed? (SCEP\&MMA \> MEM tenant attach) 

Preferred: Microsoft Endpoint Manager tenant attach (connect Microsoft Endpoint Configuration Manager to Intune using a few clicks, then configure AV policies in MEM for these devices) 

Migration steps: 

1\. Create a new collection with membership rules to include machines running Defender on the machines to be migrated (tenant attach scope) 

2\. Enable tenant attach and include (sync) the collections for which you want to move EPP policy management to MEM 

3\. Exclude your to be migrated machines from the collection you use to target SCEP+Defender onboarding policies to your servers today 

4\. Author your policies (AV, EDR onboarding, FW) in MEM and target to the MEM collection you created 

5\. Create a package to remove MMA workspace config for MDE, uninstall SCEP. Then install the Defender package on the target collection and update the platform and definitions. 

6\. Apply the onboarding package\* 

 

2.  > I’m using MECM to manage my servers. I have a 3rd party AV + MMA and want to move to new Defender instead. How do I proceed? (3<sup>rd</sup> party \> MEM tenant attach) 

Preferred: tenant attach 

Migration steps: 

1\. Create a new collection with membership rules to include machines running Defender on the machines to be migrated (tenant attach scope) 

2\. Enable tenant attach and include the collections for which you want to move EPP policy management to MEM 

3\. Ensure 3rd party AV management no longer pushes AV to these machines 

4\. Author your policies in MEM and target to the MEM collection 

5\. Create a package to Install the Defender package on the target collection, set to passive mode and update Defender, remove MMA workspace config for MDE. 

6\. Remove 3rd party AV, either using the 3rd party console or MECM as appropriate, remove passive mode configuration 

7\. Apply the onboarding package\* 

 

\*create a program in MECM will allow you to define custom installer logic (prereqs) and use scripted installation (ie PowerShell) to customize install operations. For example, uninstall MMA after if so desired.  

 

\*These steps will eventually be fully automated by MECM 

 

If you wish to move **from tenant attach to MDE attach**, ensure the server is a part of an AAD group that has the required policies targeted then proceed to **uninstall** the MECM agent. 

  - > MDE attach will not work if the client is managed by MECM. Therefore, a server can be in scope for MDE attach but only after MECM agent is removed, policies will be applied. 

>  

3.  > I’m using MECM to manage my servers, including SCEP\&MMA, and want to move to new Defender instead but keep using MECM for configuration of endpoint security policies. How do I proceed? (SCEP\&MMA \> MECM) 

Timelines TBC. 

 

Options: 

In the design partner phase, follow the steps described in 1.1 to switch to MEM tenant attach. 

In the public preview phase, you can use MECM for configuration only and will need to manually deploy. 

 

4.  > I’m using 3<sup>rd</sup> party AV today and want to move to new Defender. How do I proceed? 

Preferred: MDE Attach 

Migration steps: 

1.  > Set up your policies beforehand in MEM and target to the intended group 

<!-- end list -->

2.  > Install the new unified package 

<!-- end list -->

3.  > Set Defender to passive mode\*, update the platform and definitions 

<!-- end list -->

4.  > Apply onboarding package 

<!-- end list -->

5.  > Add server to policy target group 

<!-- end list -->

6.  > Remove 3<sup>rd</sup> party AV and remove passive mode settings 

\*installer flag or ForcePassiveMode 

Greenfield or 3<sup>rd</sup> party only 

1.  > I have a server I would like to install to. I have another solution running (3<sup>rd</sup> party). 

Preferred: MDE Attach 

1.  > Set up your policies beforehand in MEM and target to the intended AAD group (for devices) 

<!-- end list -->

2.  > Download the installer and deploy using desired mechanism (GPO is 1 option),  

<!-- end list -->

3.  > Set Defender to passive mode, update it 

<!-- end list -->

4.  > Apply onboarding package 

<!-- end list -->

5.  > Remove 3<sup>rd</sup> party AV/EDR and remove passive mode (customer to orchestrate) 

 

2.  > I have a clean server would like to install to. 

Preferred: MDE Attach 

1.  > Set up your policies beforehand in MEM and target to the intended AAD group (for devices) 

<!-- end list -->

2.  > Download the installer and deploy using desired mechanism (GPO is 1 option),  

<!-- end list -->

3.  > Set Defender to passive mode, update it 

<!-- end list -->

4.  > Apply onboarding package 

<!-- end list -->

5.  > Remove 3<sup>rd</sup> party AV/EDR and remove passive mode (customer to orchestrate) 

 

3.  > I have a clean server would like to install to. I don’t want to use Azure Defender. I don’t want to use MEM. 

Preferred: GPO 

1.  > Set up your policies beforehand in GPO (same policy configuration as Defender AV on Server 2019) and target to the intended AAD group (for devices) 

<!-- end list -->

2.  > Download the installer and deploy using desired mechanism  

<!-- end list -->

3.  > Apply onboarding package 

 

If you want to use a different/3<sup>rd</sup> party management solution, we will support existing GPO/PowerShell/WMI interfaces. For deployment, you can use the same MSI + onboarding <span class="underline">Instructions</span>.
