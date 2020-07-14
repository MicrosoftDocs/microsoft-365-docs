# **Bookings Setup**

**<span class="underline">CREATE BOOKINGS PAGE</span>**

1.  Navigate to Microsoft Bookings
    
      - Office 365 Apps page
        
          - ![A screenshot of a cell phone
            Description automatically generated](c:\\GitHub\\microsoft-365-docs-pr\\microsoft-365\\bookings/media/image1.png)
    
      - <https://book.ms/>

2.  Create a new Bookings calendar and fill out the “Business Name” and “Business Category”
    
    1.  “Business Name” - This is what your Bookings calendar will be titled. This can be your actual business name, the name of the business department, the high-level service you are providing, or another name to fit your scenario. For large enterprises, we recommend creating a Bookings calendar at the department-level to ease scheduling.
    
    2.  “Business Category” - Choose the category that best fits your business.
        
        ![A screenshot of a cell phone
        Description automatically generated](c:\\GitHub\\microsoft-365-docs-pr\\microsoft-365\\bookings/media/image2.png)

**<span class="underline">BUSINESS INFORMATION</span>**

Add information about your business or department on the Business Information page

1.  If these field are filled out, the information will appear on all confirmations and reminder emails.

> ![A screenshot of a cell phone
> Description automatically generated](c:\\GitHub\\microsoft-365-docs-pr\\microsoft-365\\bookings/media/image3.png)

1.  Business name, Business address, Business phone

2.  Website URL will appear as a URL link (footer)

3.  Privacy policy URL will appear hyperlinked as “Privacy Policy” (footer)

4.  Terms and conditions URL will appear hyperlinked as “Terms of Sale” (footer)

5.  Business logo will appear as an image on the page (header)

<!-- end list -->

2.  Currency type – If Service has a set price, it will be shown in the currency selected on the main Self-Service Page. If no Services have prices, this field is not relevant.

3.  Business hours – The hours you set here are the hours in which all bookings are restricted to. Additional time restrictions of when appointments are bookable can be set for each service and for each staff member in the Services and Staff page, respectively.

**<span class="underline">STAFF – Add staff to your Bookings page</span>**

1.  Select the “+ Add Staff” button at the top left of the screen

2.  When adding staff from your tenant, type their name in the “Add people” field, select them from the drop-down, and the other fields will automatically populate.
    
    1.  Once the staff member is added, you can edit the name that appears on all communications by selecting the “x” by their name and changing the “Add people field.” This can be useful if you would like staff members to have a specific title or name customers will see, such as listing Adele Vance as “Dr. Vance, MD.”

3.  Add staff outside of your tenant by manually filling in their email and other information. Please note that staff from outside the tenant will not be able to share free/busy information with Bookings.

4.  Select staff role – Administrator, Viewer, or Guest
    
    2.  Administrators can edit all settings, add and remove staff, and create, edit and delete bookings.
    
    3.  Viewers can see all the bookings on the calendar. They can’t modify or delete them. They have read-only access to settings
    
    4.  Guests can be assigned to bookings but they can’t open the booking mailbox.

5.  Selecting “Notify all staff via email when a booking assigned to them is created to changed” will enable staff emails that will look like this:

> ![A screenshot of a cell phone
> Description automatically generated](c:\\GitHub\\microsoft-365-docs-pr\\microsoft-365\\bookings/media/image4.png)

6.  Selecting “Events on Office 365 calendar affect availability” means that the free/busy information from the staff’s calendar will impact availability for bookings services through Bookings.
    
    5.  For example, if the staff has a team meeting or personal appointment scheduled for 3pm Wednesday, Bookings will show then as “unavailable” to be booked for that particular timeslot and a “Busy” or “Tentative” timeslot will show in the calendar view of the Bookings web app.
        
        1.  ![](c:\\GitHub\\microsoft-365-docs-pr\\microsoft-365\\bookings/media/image5.png)
    
    6.  We highly recommend leaving this setting on to avoid double-booking and optimize staff’s calendars.

7.  Selecting “Use business hours” will default bookable times to when the staff’s calendar is free during the timeframes established in the “Business hours” section of “Business Information”
    
    7.  By deselecting this box, staff can be given custom hours that further limit when they can be booked. This is helpful for scenarios where a staff member may only be on site Tuesdays and Wednesdays, or they leave mornings for one type of appointments and afternoons for the other.

**<span class="underline">SERVICES – Define services and appointment types to be booked</span>**

Define uniform Services that are bookable

1.  Select the “+ Add a service” button at the top left of the screen

2.  Service name – The name of the service that is bookable. This name will show in the drop-down menu on the Calendar page, when manually adding an appointment on the Calendar page, and as a tile on the Self-Service page.

3.  Description – This text will display when the information icon is clicked on the Self-Service page.

4.  Default location – This will display on the confirmation and reminder emails for both staff and customers, as well as on the calendar even created for the booking.

5.  “Add online meeting” toggle – Enables online meetings for each appointment via Teams or Skype, whichever is configured as the default client for the staff member.
    
    1.  Toggle ON –
        
        1.  Teams/Skype link unique to the booking will be added to the calendar event on both the staff and customer’s calendar, along with dial-in information
        
        2.  Teams/Skype meeting join link (“Join Teams meeting”) will be added to all confirmation and reminder emails
            
            1.  ![](c:\\GitHub\\microsoft-365-docs-pr\\microsoft-365\\bookings/media/image6.png)
        
        3.  Teams meetings can be joined via the Teams mobile or desktop app, in a web browser, or via the phone dial-in
    
    2.  Toggle OFF – Appointments will not contain a virtual option and all related fields that appear when the toggle is ON will not be shown.
    
    3.  *We strongly recommend enabling Teams as the default online meeting service for the tenant to enhance the experience of booking virtual appointments.*

6.  Default Duration – How long the meeting will be booked for. The time is blocked from the start time selected when booking, and the full appointment time will be blocked on the staff’s calendar.

7.  Buffer time your customer can’t book – Turning this toggle ON allows extra time to be added to the staff’s calendar every time an appointment is booked.
    
    4.  The time will be blocked on the staff’s calendar and impact free/busy, meaning if an appointment ends at 3:00pm and 10 minutes of buffer time is added to the end of the meeting, the staff’s calendar will show busy and non-bookable until 3:10pm.
    
    5.  This can be useful if staff need time before a meeting to prepare, like a doctor reviewing a patient’s chart or financial advisor preparing relevant account information, or after a meeting, like when traveling to another location.

8.  Let the customer manage their booking toggle – Impacts if the customer can modify or cancel their booking when booked through the Calendar tab on the Bookings web app.
    
    6.  Toggle ON – “Manage Booking” button appears on customer confirmation email
        
        4.  When selected, the customer can:
            
            2.  Reschedule – Bring user to service-specific Self-Service Page to select a new time/date for the same service and staff member of original booking (note: staff member is defaulted to original booking but can be changed by the customer in this scenario)
            
            3.  Cancel – cancels booking and removes from staff calendar
            
            4.  New booking – bring user to Self-Service page with all services/staff listed to schedule a booking
                
                ![A screenshot of a cell phone
                Description automatically generated](c:\\GitHub\\microsoft-365-docs-pr\\microsoft-365\\bookings/media/image7.png)
        
        5.  We only recommend leaving this toggle on if you are comfortable with the customer accessing the Self-Service Page.

9.  Toggle OFF – No ability to reschedule or cancel booking when booked through the Calendar tab on the Bookings web app. When booking through the Self-Service Page, customers will still have the “manage booking” button appear, even when the toggle is off.
    
    6.  We recommend this setting if you want to limit access to the Self-Service page, and we suggest adding text in confirmation/reminder emails to inform the customer of how to make changes to their booking, such as calling the office or emailing the help desk.

10. Maximum attendees per event – This setting allows you to create class-style services that require the ability for multiple people to book the same appointment time and staff. The appointment timeslot for the selected service, staff, and time will be available to book until maximum number of attendees has been reached. Current appointment capacity and attendees can be viewed within the calendar in the Bookings web app.
    
    7.  ![](c:\\GitHub\\microsoft-365-docs-pr\\microsoft-365\\bookings/media/image8.png)

11. Default price – This price will show on the Self-Service Page. If “Price not set” is selected, then no price or reference to cost/pricing will appear.

12. Notes – This field will appear in the booking event for booked staff, as well as on the event that appear on the Calendar tab in the Bookings web app.

13. Custom Fields – This section allows questions to be added or removed as those that are required for customer to answer to successfully book.
    
    8.  Customer email, phone number, address, and notes are non-removable fields; however, they can be made optional by deselecting “Required” next to the respective question.
    
    9.  Add a multiple choice or text-response question by selecting “+ Add a question” at the top of the page.
        
        7.  Custom fields can be useful when collecting information that is needed every time the specific appointment is booked. Examples could include insurance provider for a clinic visit, loan type for loan consultation, major of study for academic advising, applicant ID for candidate interviews, etc.

14. Reminders and Confirmations – Emails that are sent out to the customer or staff member, or both, at a specified time period before the appointment. Multiple messages can be created for each appointment to your preference.
    
    10. The default confirmation and reminder emails include basic information about the appointment, such as the customer/client name, staff name, service/appointment booked, time of appointment, meeting link to join (if online meeting), and ability to manage the booking (if selected as an option).

> ![A screenshot of a cell phone
> Description automatically generated](c:\\GitHub\\microsoft-365-docs-pr\\microsoft-365\\bookings/media/image9.png)

11. As an optional way to customize, you can include any additional text you would like here, such as information on rescheduling or what to bring for the appointment. Here is an example of customized text added to the original confirmation email, seen in the “Additional Information” section:

> ![A screenshot of a cell phone
> Description automatically generated](c:\\GitHub\\microsoft-365-docs-pr\\microsoft-365\\bookings/media/image10.png)

15. Enable text message notifications for your customer – SMS messages are sent to the customer only if they opt-in.
    
    12. Opt-in box on the manual booking and Self-Service Page:

> ![A screenshot of a cell phone
> Description automatically generated](c:\\GitHub\\microsoft-365-docs-pr\\microsoft-365\\bookings/media/image11.png)

13. Text message notifications will look like this (Note: SMS notifications are currently only available in North America):

> ![A screenshot of a cell phone
> Description automatically generated](c:\\GitHub\\microsoft-365-docs-pr\\microsoft-365\\bookings/media/image12.jpeg)

16. Publishing options – Choose whether or not to have this service appear as bookable on the Self-Service Page, or keep it to only bookable on the Calendar tab within the Bookings web app.

17. Scheduling Policy – Determine how appointment times are viewed and the time period in which bookings can be made or cancelled.

18. Email notifications – Determine when emails are sent to organization staff and customers.

19. Staff checkbox – Allow customers to choose a specific staff member for their appointment.
    
    14. Checked/selected – Customers can choose between all staff assigned to the apointment when booking on the Self-Service Page. “Anyone” can be chosen and an available staff member will be chosen at random and assigned the appointment.
    
    15. Unchecked/deselected – Customers booking via the Self-Service Page select a service and time/date, and the available staff will be booked at random. Specific staff can still be selected when booked through the Calendar tab in the Bookings web app.

20. Availability – Choose when the service can be booked
    
    16. Bookable when staff are free – Service maintains availability based on when staff are free within business hours, with no extra time restrictions.
    
    17. Custom hours (recurring weekly) – Service has an added layer of availability that can be further restricted (in addition to business hours or staff hours). This should be used when a service can only be done at a specific time.
    
    18. “+ Set different availability for a date range” – This impacts availability at a specific point in time, instead of a recurring basis. For example, this could be used when a machine that is needed for the service is temporarily being serviced and unavailable, or when an organization is closed for the holidays.

21. Assign Staff – Select which staff (that have been added to the Staff tab) will be bookable for that specific service. Selecting no staff will result in all staff being assigned to the service.

**<span class="underline">BOOKING PAGE – Self-Service Page</span>**

Page outside of the Bookings web app where appointments can be scheduled.

1.  Booking page status – Publish your calendar and make it live to be bookable. Options to share the link via email, Twitter, and even add as a “Book Now” button to a Facebook page. The link can also be embedded into your organization’s website. The Self-Service page looks like this:

> ![A screenshot of a cell phone
> Description automatically generated](c:\\GitHub\\microsoft-365-docs-pr\\microsoft-365\\bookings/media/image13.png)

2.  Booking page access control: Require an Office 365 account from my organization to book – Only allow those within your organization to view your page and book services. Access to the page is authorized via credential checks to ensure the visitor belongs to an account within the tenant.

3.  Booking page access control: Disable direct search engine indexing of booking page – Ensure your page is not shown in Google, Bing, or other search engine results. Deselecting this box will ensure access to the page is limited to the generated page link.

4.  Customer data usage consent – When this is selected, the text will appear on the Self-Service Page and must be checked by the user to complete the booking.

5.  Scheduling policy, Email notifications, and Staff – Similar settings to those that appear in each service on the Services tab.

6.  Availability – This defaults to business hours but can be changed for page-wide availability for bookings. Option to set specific date ranges for different availability, such as holidays or extended hours.

7.  Customize your page – Choose colors and logos that appear on the Self-Service Page for brand consistency.

8.  Region and time zone settings – Set the time zone and language preferences for what is displayed on the Self-Service Page. We recommend having these settings reflect the time zone in which your business operates. The Self-Service Page will automatically detect the visitor’s time zone and show availability in the native time zone without any extra work. For example, if an appointment is available at 1:00pm PST, someone in CST will see the available timeslot displayed as available at 3:00pm CST.

**<span class="underline">CALENDAR</span>**

A calendar view of all staff with respective free/busy and appointments that have been scheduled via Bookings. New appointments can be booked directly from this page.

1.  Create a new booking two different ways:
    
    1.  Select the “+ New booking” button on the top left of the page
        
        1.  Select the service you would like to book from the drop-down menu. These are the services that have been created in the Services tab.
        
        2.  Fill out customer information, choose a time for the service, and select an available staff member.
    
    2.  Click directly within the calendar
        
        3.  The time and staff member will auto-populate based on where the calendar was clicked but can be changed.
        
        4.  Fill out customer information and select the service from the drop-down menu in “Service details”
    
    3.  Note: All fields and settings will populate based on what was set as the default service experience in the Services page, but edits to these field can still be made in the booking window when creating a booking within the Calendar tab.

2.  View/edit an existing booking – Select the event from the calendar and click “Edit” or “Open Booking” in the top right corner of the event window.

3.  View calendar by day, work week, week, or month. Bookings are differentiated by staff member via color (as chosen in the Staff tab), and staff calendars can be view side-by-side in the “Day” view.

4.  Time off can be added directly to the calendar to easily block staff calendars and ensure they are not bookable specific days. This can be used for time off, vacation, sick days, etc.

5.  Agenda and calendar-view of the schedule can be printed using the Print button in the top ribbon.

**<span class="underline">CUSTOMERS</span>**

Those that book an appointment will have their information stored in this tab. Contact information and relevant notes can be added and edited here.

**<span class="underline">HOME</span>**

Easy navigation to tabs and sections within the Bookings web app. Data from bookings made can be exported here via a TSV file.
