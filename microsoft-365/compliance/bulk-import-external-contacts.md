---
title: "Bulk import external contacts to Exchange Online"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
ms.date: 6/29/2018
audience: End User
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
- MOP150
ms.assetid: bed936bc-0969-4a6d-a7a5-66305c14e958
description: "Learn how admins can use Exchange Online PowerShell and a CSV file to bulk import external contacts to the global address list."
---

# Bulk import external contacts to Exchange Online

**This article is for administrators. Are you trying to import contacts to your own mailbox? See [Import contacts to Outlook](https://support.office.com/article/bb796340-b58a-46c1-90c7-b549b8f3c5f8)**
   
Does your company have lots of existing business contacts that you want to include in the shared address book (also called the global address list) in Exchange Online? Do you want to add external contacts as members of distribution groups, just like you can with users inside your company? If so, you can use Exchange Online PowerShell and a CSV (comma-separated value) file to bulk import external contacts into Exchange Online. It's a three-step process:
  
[Step 1: Create a CSV file that contains information about the external contacts](#step-1-create-a-csv-file-that-contains-information-about-the-external-contacts)

[Step 2: Create the external contacts with PowerShell](#step-2-create-the-external-contacts-with-powershell) 

[Step 3: Add information to the properties of the external contacts](#step-3-add-information-to-the-properties-of-the-external-contacts)

After you complete these steps to import contacts, you can perform these additional tasks:
  
- [Add more external contacts](#add-more-external-contacts)
  
- [Hide external contacts from the shared address book](#hide-external-contacts-from-the-shared-address-book)
  
## Step 1: Create a CSV file that contains information about the external contacts

The first step is to create a CSV file that contains information about each external contact that you want to import to Exchange Online. 
  
1. Copy the following text to a text file in NotePad, and save it on your desktop as a CSV file by using a filename suffix of .csv; for example, ExternalContacts.csv.
    
    > [!TIP]
    > If your language contains special characters (such as **å**, **ä**, and **ö** in Swedish) save the CSV file with UTF-8 or other Unicode encoding when you save the file in NotePad. 
  
    ```text
    ExternalEmailAddress,Name,FirstName,LastName,StreetAddress,City,StateorProvince,PostalCode,Phone,MobilePhone,Pager,HomePhone,Company,Title,OtherTelephone,Department,CountryOrRegion,Fax,Initials,Notes,Office,Manager
    danp@fabrikam.com,Dan Park,Dan,Park,1234 23rd Ave,Golden,CO,80215,206-111-1234,303-900-1234,555-1212,123-456-7890,Fabrikam,Shipping clerk,555-5555,Shipping,US,123-4567,R.,Good worker,31/1663,Dan Park
    pilar@contoso.com,Pilar Pinilla,Pilar,Pinilla,1234 Main St.,Seattle,WA,98017,206-555-0100,206-555-0101,206-555-0102,206-555-1234,Contoso,HR Manager,206-555-0104,Executive,US,206-555-0105,P.,Technical decision maker,31/1000,Dan Park
    ```

    The first row, or header row, of the CSV file lists the properties of contacts that can be used when you import them to Exchange Online. Each property name is separated by a comma. Each row under the header row represents the property values for importing a single external contact. 
    
    > [!NOTE]
    > This text includes sample data, which you can delete. But don't delete or change the first (header) row. It contains all of the properties for the external contacts. 
  
2. Open the CSV file in Microsoft Excel to edit the CSV file because it's much easier to use Excel to edit the CSV file.
    
3. Create a row for each contact that you want to import to Exchange Online. Populate as many of the cells as possible. This information will be displayed in the shared address book for each contact. 
    
    > [!IMPORTANT]
    >  The following properties (which are the first four items in the header row) are required to create an external contact and must be populated in the CSV file: **ExternalEmailAddress**, **Name**, **FirstName**, **LastName**. The PowerShell command that you run in Step 2 will use the values for these properties to create the contacts. 

## Step 2: Create the external contacts with PowerShell

The next step is to use the CSV file that you created in Step 1 and PowerShell to bulk import the external contacts listed in the CSV file to Exchange Online. 
  
1.  Connect PowerShell to your Exchange Online organization. For step-by-step instructions, see [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell). Be sure to use the user name and password for your global administrator account when you connect to Exchange Online PowerShell. 
    
2. After you connect PowerShell to Exchange Online, go to the desktop folder where you saved the CSV file in Step 1; for example `C:\Users\Administrator\desktop`.
    
3. Run the following command to create the external contacts:

    ```powershell
    Import-Csv .\ExternalContacts.csv|%{New-MailContact -Name $_.Name -DisplayName $_.Name -ExternalEmailAddress $_.ExternalEmailAddress -FirstName $_.FirstName -LastName $_.LastName}
    ```

    It might take a while to create the new contacts, depending on how many you're importing. When the command is finished running, PowerShell displays a list of the new contacts that were created. 
    
4. To view the new external contacts, go to the Exchange admin center (EAC), and then click **Recipients** \> **Contacts**. 
    
    > [!TIP]
    > For instructions for connecting to the EAC, see [Exchange admin center in Exchange Online](/exchange/exchange-admin-center). 
  
5. If necessary, click **Refresh** to update the list and see the external contacts that were imported. 
    
    The imported contacts will appear in the shared address book in Outlook and Outlook on the web.
    
    > [!NOTE]
    > You can also view the contacts in the Microsoft 365 admin center by going to **Users** \> **Contacts**. 

## Step 3: Add information to the properties of the external contacts

After you run the command in Step 2, the external contacts are created, but they don't contain any of the contact or organization information, which is the information from most of the cells in the CSV file. This is because when you create new external contacts, only the required properties are populated. Don't worry if you don't have all the information populated in the CSV file. If it's not there, it won't be added.
  
1.  Connect PowerShell to your Exchange Online organization. For step-by-step instructions, see [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell).
    
2. Go to the desktop folder where you saved the CSV file in Step 1; for example, `C:\Users\Administrator\desktop`.
    
3. Run the following two commands to add the other properties from the CSV file to the external contacts that you created in Step 2.
    
    ```powershell
    $Contacts = Import-CSV .\ExternalContacts.csv
  
    ```

    ```powershell
    $contacts | ForEach {Set-Contact $_.Name -StreetAddress $_.StreetAddress -City $_.City -StateorProvince $_.StateorProvince -PostalCode $_.PostalCode -Phone $_.Phone -MobilePhone $_.MobilePhone -Pager $_.Pager -HomePhone $_.HomePhone -Company $_.Company -Title $_.Title -OtherTelephone $_.OtherTelephone -Department $_.Department -Fax $_.Fax -Initials $_.Initials -Notes  $_.Notes -Office $_.Office -Manager $_.Manager}
    ```

    > [!NOTE]
    > The  _Manager_ parameter might be problematic. If the cell is blank in the CSV file, you will get an error and none of the property information will be added to the contact. If you don't need to specify a manager, then just delete  ` -Manager $_.Manager ` from the previous PowerShell command. 
  
    Again, it might take a while to update the contacts, depending on how many you imported in Step 1. 
    
4. To verify that the properties were added to the contacts: 
    
1. In the EAC, go to **Recipients** \> **Contacts**.
    
2. Click a contact and then click **Edit** ![Edit icon](../media/ebd260e4-3556-4fb0-b0bb-cc489773042c.gif) to display the contact's properties. 
    
That's it! Users can see the contacts and the additional information in the address book Outlook and Outlook on the web.
  
## Add more external contacts

You can repeat Steps 1 through Step 3 to add new external contacts in Exchange Online. You or users in your company can just add a new row in the CSV file for the new contact. Then you can run the PowerShell commands from Step 2 and Step 3 to create and add information to the new contacts.
  
> [!NOTE]
> When you run the command to create new contacts, you might get an error saying that the contacts that were created earlier already exist. But any new contact added to the CSV file is created. 
  
## Hide external contacts from the shared address book>

Some companies may use external contacts only so they can be added as members of distribution groups. In this scenario, they may want to hide external contacts from the shared address book. Here's how:
  
1.  Connect PowerShell to your Exchange Online organization. For step-by-step instructions, see [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell).
    
2. To hide a single external contact, run the following command.
    
    ```powershell
    Set-MailContact <external contact> -HiddenFromAddressListsEnabled $true 
    ```

    For example, to hide Pilar Pinilla from the shared address book, run this command:

    ```powershell
    Set-MailContact "Pilar Pinilla" -HiddenFromAddressListsEnabled $true
    ```

3. To hide all external contacts from the shared address book, run this command:

    ```powershell
    Get-Contact -ResultSize unlimited -Filter {(RecipientTypeDetails -eq 'MailContact')} | Set-MailContact -HiddenFromAddressListsEnabled $true  
    ```

After you hide them, external contacts aren't displayed in the shared address book, but you can still add them as members of a distribution group.