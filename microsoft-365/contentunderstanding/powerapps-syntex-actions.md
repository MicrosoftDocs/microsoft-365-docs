# Work with Power Automate Actions in SharePoint Syntex

This article discusses about the power automate actions available for Syntex and demonstrate the usage, triggers and values of Syntex actions and its outputs.


## When a file is classified by Content Understanding model

The trigger , when a file is classified by content understanding model , helps us with the post processing of data or file. The output from this trigger can help us with the subsequent actions as it holds all the data that has been extracted from the syntex model and the other critical data like  ConfidenceScore and ClassificationDate.

### UseCase
A user should be notified whenever a document is of different template.

#### Solution

1. A power automate associated with the trigger is created
2. Validate the confidence score
3. If the confidence score is low, less than 99 percentage , update an excel for the user to review


##### A power automate associated with the trigger is created
![image](https://user-images.githubusercontent.com/9211327/186288875-976db707-0361-46d1-a001-86ef1982a4b5.png)

##### Validate Confidence Score

The confidence score can be very useful in scenarios like if a user uploads a document which was not trained and classified by the model or if the data has not been extracted by the extractors. For this example am taking the confidence score should be 99%

![image](https://user-images.githubusercontent.com/9211327/186289298-dbc1c1e5-8b8d-47c0-829b-a0d271687d7e.png)

###### Create Excel

As the excel connectors in the flow support , adding a row only to the table , I have created an excel in the below format

![image](https://user-images.githubusercontent.com/9211327/186299096-03b3ef40-3792-425c-aae1-1125f1c512ce.png)



The following actions has been used to fetch the file properties of the classified file and update it in excel

![image](https://user-images.githubusercontent.com/9211327/186290782-59004c14-d4c9-440b-b16b-74a5b2aee0f3.png)


#### Testing the solution

I have uploaded a file to the library removed few of the details from existing file , so that a 
Below is the screenshot of the confidence score
![image](https://user-images.githubusercontent.com/9211327/186297006-68414197-ab12-45b3-93a1-8f502a31be58.png)

###### Flow Output
![image](https://user-images.githubusercontent.com/9211327/186296362-a9f06224-4426-416c-ba6a-e93bb6401db5.png)

###### Excel
We can notice a new row ahs been added to the excel, with the data

![image](https://user-images.githubusercontent.com/9211327/186296679-2cc69b18-650c-46f0-acac-fcb6761bc8bd.png)


