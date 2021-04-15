---
title: How to Deploy Defender for Endpoint on Linux with Chef
description: Learn how to deploy Defender for Endpoint on Linux with Chef
keywords: microsoft, defender, atp, linux, scans, antivirus, microsoft defender for endpoint (linux)
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: v-lsaldanha
author: lovina-saldanha
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.technology: mde
---

# Deploy Defender for Endpoint on Linux with Chef

Before you begin:

- Install unzip if it’s not already installed. 
The Chef components are already installed and a Chef repository exists (chef generate repo <reponame>) to store the cookbook that will be used to deploy to Defender for Endpoint on Chef managed Linux servers.

You can create a new cookbook in your existing repository by running the following command from inside the cookbooks folder that is in your chef repository:</br>
`chef generate cookbook mdatp`

This command will create a new folder structure for the new cookbook called mdatp.  You can also use an existing cookbook if you already have one you’d like to use to add the MDE deployment into.
After the cookbook is created, create a files folder inside the cookbook folder that just got created:

`mkdir mdatp/files`

Transfer the Linux Server Onboarding zip file that can be downloaded from the Microsoft Defender Security Center portal to this new files folder.

On the Chef Workstation, navigate to the mdatp/recipes folder. This folder is created when the cookbook was generated. Use your preferred text editor (like vi or nano) to add the following instructions to the end of the default.rb file:
-	include_recipe '::onboard_mdatp'
- include_recipe '::install_mdatp'

Then save and close the default.rb file.
Next create a new recipe file named install_mdatp.rb in the recipes folder and add this text to the file:

```powershell

#Add Microsoft Defender   
Repo  
case node['platform_family']
when 'debian'
 apt_repository 'MDAPRepo' do
   arch               'amd64'
   cache_rebuild      true
   cookbook           false
   deb_src            false
   key                'BC528686B50D79E339D3721CEB3E94ADBE1229CF'
   keyserver          "keyserver.ubuntu.com"
   distribution       'focal'
   repo_name          'microsoft-prod'
   components         ['main']
   trusted            true
   uri                "https://packages.microsoft.com/ubuntu/20.04/prod"
 end
 apt_package "mdatp"
when 'rhel'
 yum_repository 'microsoft-prod' do
   baseurl            "https://packages.microsoft.com/rhel/7/prod/"
   description        "Microsoft Defender for Endpoint"
   enabled            true
   gpgcheck           true
   gpgkey             "https://packages.microsoft.com/keys/microsoft.asc"
 end
 if node['platform_version'] <= 8 then
    yum_package "mdatp"
 else
    dnf_package "mdatp"
 end
end
```

You’ll need to modify the version number, distribution, and repo name to match the version you’re deploying to and the channel you’d like to deploy.
Next you should create an onboard_mdatp.rb file in the mdatp/recipies folder.  Add the following text to that file:

```powershell

#Create MDATP Directory
mdatp = "/etc/opt/microsoft/mdatp"
zip_path = "/path/to/chef-repo/cookbooks/mdatp/files/WindowsDefenderATPOnboardingPackage.zip"

directory "#{mdatp}" do
  owner 'root'
  group 'root'
  mode 0755
  recursive true
end

#Extract WindowsDefenderATPOnbaordingPackage.zip into /etc/opt/microsoft/mdatp

bash 'Extract Onbaording Json MDATP' do
  code <<-EOS
  unzip #{zip_path} -d #{mdatp}
  EOS
  not_if { ::File.exist?('/etc/opt/microsoft/mdatp/mdatp_onboard.json') }
end
```

Make sure to update the path name to the location of the onboarding file.
To test deploy it on the Chef workstation, just run ``sudo chef-client -z -o mdatp``.
After your deployment you should consider creating and deploying a configuration file to the servers based on  [Set preferences for Microsoft Defender ATP for Linux - Windows security | Microsoft Docs](/windows/security/threat-protection/microsoft-defender-atp/linux-preferences).  
After you've created and tested your configuration file, you can place it into the cookbook/mdatp/files folder where you also placed the onboarding package.  Then you can create a settings_mdatp.rb file in the mdatp/recipies folder and add this text:

```powershell
#Copy the configuration file
cookbook_file '/etc/opt/microsoft/mdatp/managed/mdatp_managed.json' do
  source 'mdatp_managed.json'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end
```

To include this step as part of the recipe just add include_recipe ':: settings_mdatp' to your default.rb file within the recipe folder.
You can also use crontab to schedule automatic updates [Schedule an update of the Microsoft Defender for Endpoint (Linux)](linux-update-MDE-Linux.md).

Uninstall MDATP cookbook:

```powershell
#Uninstall the Defender package
case node['platform_family']
when 'debian'
 apt_package "mdatp" do
   action :remove
 end
when 'rhel'
 if node['platform_version'] <= 8 
then
    yum_package "mdatp" do
      action :remove
    end
 else
    dnf_package "mdatp" do
      action :remove
    end
 end
end
```

