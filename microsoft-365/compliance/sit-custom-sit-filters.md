---
title: "Custom Sensitive Information Type Filters Reference"
f1.keywords:
- NOCSH
ms.author: chrfox
author: chrfox
manager: laurawi
audience: Admin
ms.topic: reference
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: 
- M365-security-compliance
search.appverid: 
- MOE150
- MET150
description: "This article presents a list of the filters that can be encoded into custom sensitive information types."
---

# Custom sensitive information type filters reference

In Microsoft you can define filters or additional checks while creating a custom sensitive information types (SIT).

## List of supported filters & how to use them.

### AllDigitsSame Exclude

Description: Allows you to exclude matches which have all digits as duplicate digits, like 111111111 or 111-111-111

Defining filters
```xml
<Filters id="ssn_filters">
    <Filter type="AllDigitsSameFilter"></Filter>
</Filters>
```

Using it in rule package at the entity level
```xml
<Entity id="50842eb7-edc8-4019-85dd-5a5c1f2bb085" patternsProximity="300" recommendedConfidence="85"  filters="ssn_filters">
      <Pattern confidenceLevel="85">
        <IdMatch idRef="Func_ssn" />
      </Pattern>
</Entity>
```

Using it in rule package at the pattern level
```xml
<Entity id="50842eb7-edc8-4019-85dd-5a5c1f2bb085" patternsProximity="300" recommendedConfidence="85">
      <Pattern confidenceLevel="85"  filters="ssn_filters">
        <IdMatch idRef="Func_ssn" />
      </Pattern>
</Entity>
```

### TextMatchFilter StartsWith 

Description: Allows you to define the starting characters for the entity. It has two variants, include and exclude.

For example to exclude the numbers starting with 0500, 91, 091, 010 such as these:

- 0500-4500-027
- 91564721450
- 91-8523697410
- 700-8956-7844
- 1000-3265-9874
- 0100-7892-3012

you can use this xml

```xml
<Filters id="phone_number_filters_exc">
    <Filter type="TextMatchFilter" direction="StartsWith" logic="Exclude" textProcessorId="Keyword_false_positives_sw">
</Filter>
</Filters>

  <Keyword id="Keyword_false_positives_sw">
    <Group matchStyle="string">
      <Term>0500</Term>
      <Term>91</Term>
      <Term>091</Term>
      <Term>0100</Term>
    </Group>
  </Keyword>
```
For example, to include the numbers starting with 0500, 91, 091, 0100 such as these: 

- 0500-4500-027
- 91564721450
- 91-8523697410
- 700-8956-7844
- 1000-3265-9874
- 0100-7892-3012

you can use this xml

```xml
<Filters id="phone_filters_inc">
    <Filter type="TextMatchFilter" direction="StartsWith" logic="Include" textProcessorId="Keyword_false_positives_sw">
</Filter>
```


Filter Name: TextMatchFilter EndsWith 
Description: Allows you to define the ending characters for the entity. 
Example Usage:
Exclude:
1234567891
1234-5678-0091
1234.4567.7091
1234-8091-4564
 

<!-- Sample to Exclude the numbers ending with 0500,91,091, 0100 -->
<Filters id="phone_number_filters_exc">
    <Filter type="TextMatchFilter" direction="EndsWith" logic="Exclude" textProcessorId="Keyword_false_positives_sw">
</Filter>

  <Keyword id="Keyword_false_positives_sw">
    <Group matchStyle="string">
      <Term>0500</Term>
      <Term>91</Term>
      <Term>091</Term>
      <Term>0100</Term>
    </Group>
  </Keyword>

Include:
1234567891
1234-5678-0091
1234.4567.7091
1234-8091-4564

<!-- Sample to Include the numbers ending with 0500,91,091, 0100 -->
<Filters id="phone_filters_inc">
    <Filter type="TextMatchFilter" direction=" EndsWith" logic="Include" textProcessorId="Keyword_false_positives_sw">
</Filter>



Filter Name: TextMatchFilter Full
Description: Allows you to blacklist certain matches and prevent them from triggering the rule. For example, exclude 4111111111111111 from the list of valid credit card matches.

Example Usage:
Exclude:
4485 3647 3952 7352
4111111111111111
3241891031113111

  <!-- Exclude Filter -->
  <!-- Blacklist 4111111111111111 and 3241891031113111 credit card numbers -->
<Filters id="cc_number_filters_exc">
    <Filter type="TextMatchFilter" direction="Full" logic="Exclude" textProcessorId="Keyword_false_positives_full">
</Filter>

  <Keyword id="Keyword_false_positives_full">
    <Group matchStyle="string">
      <Term>4111111111111111</Term>
      <Term>3241891031113111</Term>
    </Group>
  </Keyword>


Include:
4485 3647 3952 7352
4111111111111111
3241891031113111

<!--Include filter -->
<!--  Only interested one Credit cards like 4111111111111111 and 3241891031113111 credit card numbers -->
<Filters id="cc_filters_inc">
    <Filter type="TextMatchFilter" direction="Full" logic="Include" textProcessorId="Keyword_false_positives_full">
</Filter>

Filter Name: TextMatchFilter Prefix
Description: Allows you to define the preceding characters that should be always included or excluded. For example, if Credit card number is preceded by ‘Order ID:’ then remove the match from the valid matches.
Example Usage:
Exclude:
phone number 091-8974-653278
Phone 45-124576532-123
45-124576532-123
  <!-- Exclude Filter -->
  <!-- exclude  instances which are having "Phone number" and "call me at" string before the instance -->
<Filters id="cc_number_filters_exc">
    <Filter type="TextMatchFilter" direction="Prefix" logic="Exclude" textProcessorId="Keyword_false_positives_prefix">
</Filter>
  <Keyword id="Keyword_false_positives_prefix">
    <Group matchStyle="string">
      <Term>phone number</Term>
      <Term>call me at</Term>
    </Group>
  </Keyword>


Include:
Credit card 45-124576532-123 
45-124576532-123  // could be phone number

<!--Include filter -->
<!-- Include  instances which are having "credit card" and "card #" string before the instance -->
<Filters id="cc_filters_inc">
    <Filter type="TextMatchFilter" direction="Full" logic="Include" textProcessorId="Keyword_true_positives_prefix">
</Filter>

  <Keyword id="Keyword_true_positives_prefix">
    <Group matchStyle="string">
      <Term>credit card</Term>
      <Term>card #</Term>
    </Group>
  </Keyword

Filter Name: TextMatchFilter Suffix
Description: Allows you to define the following characters that should be always included or excluded. For example, if Credit card number is followed by ‘/xuid’ then remove the match from the valid matches.
Example Usage:
Exclude:
1234-5678-9321 4500 9870 6321 48925566
1234-5678-9321


<!-- Exclude Filter -->
<!-- Exclude if there are 5 more instances of  4 digits as suffix -->
<Filters id="cc_number_filters_exc">
    <Filter type="TextMatchFilter" direction="Prefix" logic="Exclude" textProcessorId="Regex_false_positives_suffix">
</Filter>

  <Regexid="Regex_false_positives_suffix">(\d{4}){5,}</Regex>











Exclude:
1234-5678-9321 /xuid
1234-5678-9321

<!-- Exclude Filter Sample 2-->
<!-- Exclude if followed by /xuidsuffix -->
<Filters id="cc_number_filters_exc">
    <Filter type="TextMatchFilter" direction="Prefix" logic="Exclude" textProcessorId="Keyword_false_positives_suffix">
</Filter>

  <Keyword id="Keyword_false_positives_suffix">
    <Group matchStyle="string">
      <Term>/xuid</Term>
    </Group>
  </Keyword>

Include:
45-124576532-123 
45-124576532-123  cvv 966
45-124576532-123  expires 03/23

<!-- Include filter -->
<!-- Include the instance only if the cvv or expires followed by the instance -->
<Filters id="cc_filters_inc">
    <Filter type="TextMatchFilter" direction="Full" logic="Include" textProcessorId="Keyword_true_positives_suffix">
</Filter>

  <Keyword id="Keyword_true_positives_suffix">
    <Group matchStyle="string">
      <Term>cvv</Term>
      <Term>expires</Term>
    </Group>
  </Keyword>








Using Filter within rule packages
Filters can be defined on the entire SIT or on a pattern. See below code snippets for examples of each – 
1.	At Sensitive Information Type 
  <!--Filters at Entity - will cover all children pattern -->
  <!-- The filters will be applied on ALL the instances classified by any of the pattern in that entity / sensitive type  -->
<Entity id="6443b88f-2808-482a-8e1a-3ae5026645e1" patternsProximity="300" recommendedConfidence="85" filters="CompositeFiltersAtEntityLevel">
      <Pattern confidenceLevel="85">
        <IdMatch idRef="Regex_denmark_id" />
      </Pattern>
</Entity>


2.	At Individual pattern of the Sensitive Information Type 

<!-- Filter at pattern only -->
<!-- The filter in this case will be applied on the instances matched on the pattern  -->
<Entity id="50842eb7-edc8-4019-85dd-5a5c1f2bb085" patternsProximity="300" recommendedConfidence="85">
      <Pattern confidenceLevel="85"  filters="CompositeFiltersAtPattern">
        <IdMatch idRef="Keyword_cc_verification" />
      </Pattern>
</Entity>
 


3.	At Sensitive Information Type  and an additional filter on some of the patterns of that entity

<!--Filters at Entity + pattern -->
<!-- The filters will be applied on ALL the instances classified by any of the pattern in that entity / sensitive type  -->
 <!-- And teh pattern level filter will filer the instances macthed by that pattern -->

<Entity id="6443b88f-2808-482a-8e1a-3ae5026645e1" patternsProximity="300" recommendedConfidence="85" filters="CompositeFiltersAtEntityLevel">
      <Pattern confidenceLevel="85" filters="CompositeFiltersAtPattern">
        <IdMatch idRef="Regex_denmark_id" />
      </Pattern>
</Entity>
 

 

## More information

- [Learn about data loss prevention](dlp-learn-about-dlp.md)

- [Sensitive information type entity definitions](sensitive-information-type-entity-definitions.md)

- [What the DLP functions look for](what-the-dlp-functions-look-for.md)
