---
title: "Custom sensitive information type filters reference"
f1.keywords:
- NOCSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date: 09/17/2019
audience: Admin
ms.topic: reference
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection: 
- tier1
- purview-compliance
search.appverid: 
- MOE150
- MET150
description: "This article presents a list of the filters that can be encoded into custom sensitive information types."
---

# Custom sensitive information type filters reference

In Microsoft Purview, you can define filters or other checks while creating a custom sensitive information type (SIT).

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## List of supported filters and use cases

### AllDigitsSame Exclude

Description: Allows you to exclude matches that have all digits as duplicate digits, such as 111111111 or 111-111-111

Defining filters:
```xml
<Filters id="ssn_filters">
    <Filter type="AllDigitsSameFilter"></Filter>
</Filters>
```

Using it in rule package at the entity level:
```xml
<Entity id="50842eb7-edc8-4019-85dd-5a5c1f2bb085" patternsProximity="300" recommendedConfidence="85"  filters="ssn_filters">
      <Pattern confidenceLevel="85">
        <IdMatch idRef="Func_ssn" />
      </Pattern>
</Entity>
```

Using it in rule package at the pattern level:
```xml
<Entity id="50842eb7-edc8-4019-85dd-5a5c1f2bb085" patternsProximity="300" recommendedConfidence="85">
      <Pattern confidenceLevel="85"  filters="ssn_filters">
        <IdMatch idRef="Func_ssn" />
      </Pattern>
</Entity>
```

### TextMatchFilter StartsWith 

Description: Allows you to define the starting characters for the entity. It has two variants, *exclude* and *include*.

For example, to *exclude* the numbers starting with 0500, 91, 091, 010 in a list like this:

- 0500-4500-027
- 91564721450
- 91-8523697410
- 700-8956-7844
- 1000-3265-9874
- 0100-7892-3012

you can use the following XML:

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
Similarly, to *include* the numbers starting with 0500, 91, 091, 0100 in a list like this: 

- 0500-4500-027
- 91564721450
- 91-8523697410
- 700-8956-7844
- 1000-3265-9874
- 0100-7892-3012

you can use the following XML:

```xml
<Filters id="phone_filters_inc">
    <Filter type="TextMatchFilter" direction="StartsWith" logic="Include" textProcessorId="Keyword_false_positives_sw">
</Filter>
```

### TextMatchFilter EndsWith

Description: Allows you to define the ending characters for the entity.

For example, to *exclude* the numbers ending with 0500,91,091, 0100 in a list like this:

- 1234567891
- 1234-5678-0091
- 1234.4567.7091
- 1234-8091-4564

you can use the following XML:

```xml
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
```

For example, to *include* the numbers ending with 0500, 91, 091, 0100, in a list like this:

- 1234567891
- 1234-5678-0091
- 1234.4567.7091
- 1234-8091-4564

You can use the following XML:

```xml
<Filters id="phone_filters_inc">
    <Filter type="TextMatchFilter" direction=" EndsWith" logic="Include" textProcessorId="Keyword_false_positives_sw">
</Filter>
```

### TextMatchFilter Full

Description: Allows you to prohibit certain matches to prevent them from triggering the rule, such as excluding 4111111111111111 from the list of valid credit card matches.

For example, to *exclude* credit card numbers like 4111111111111111 and 3241891031113111 in a list like this:

- 4485 3647 3952 7352
- 4111111111111111
- 3241891031113111

you can use the following XML:

```xml
<Filters id="cc_number_filters_exc">
    <Filter type="TextMatchFilter" direction="Full" logic="Exclude" textProcessorId="Keyword_false_positives_full">
</Filter>

  <Keyword id="Keyword_false_positives_full">
    <Group matchStyle="string">
      <Term>4111111111111111</Term>
      <Term>3241891031113111</Term>
    </Group>
  </Keyword>
```

Likewise, to *include* credit card numbers like 4111111111111111 and 3241891031113111 in a list like this:

- 4485 3647 3952 7352
- 4111111111111111
- 3241891031113111

you can use the following XML:

```xml
<Filters id="cc_filters_inc">
    <Filter type="TextMatchFilter" direction="Full" logic="Include" textProcessorId="Keyword_false_positives_full">
</Filter>
```

### TextMatchFilter Prefix

Description: Allows you to define the preceding characters that should be always excluded or included. For example, if **Credit card number** is preceded by ‘Order ID:’, then remove the match from the valid matches.

For example, to exclude occurrences of phone numbers that have **Phone number** and **call me at** strings before the phone number, in a list like this:

- Phone number 091-8974-653278
- Phone 45-124576532-123
- 45-124576532-123

you can use the following XML:

```xml
<Filters id="cc_number_filters_exc">
    <Filter type="TextMatchFilter" direction="Prefix" logic="Exclude" textProcessorId="Keyword_false_positives_prefix">
</Filter>
  <Keyword id="Keyword_false_positives_prefix">
    <Group matchStyle="string">
      <Term>phone number</Term>
      <Term>call me at</Term>
    </Group>
  </Keyword>
```

Similarly, to include occurrences that have **credit card** and **card #** strings before the credit card number, in a list like this:

- Credit card 45-124576532-123 
- 45-124576532-123  (which could be phone number)

you can use the following XML:

```xml
<Filters id="cc_filters_inc">
    <Filter type="TextMatchFilter" direction="Full" logic="Include" textProcessorId="Keyword_true_positives_prefix">
</Filter>

  <Keyword id="Keyword_true_positives_prefix">
    <Group matchStyle="string">
      <Term>credit card</Term>
      <Term>card #</Term>
    </Group>
  </Keyword
```

### TextMatchFilter Suffix

Description: Allows you to define the following characters that should be always excluded or included. For example, if Credit card number is followed by ‘/xuid’ then remove the match from the valid matches.

For example, top exclude occurrences if there are five more instances of four digits as suffix in a list like this:

- 1234-5678-9321 4500 9870 6321 48925566
- 1234-5678-9321

you can use the following XML:

```xml
<Filters id="cc_number_filters_exc">
    <Filter type="TextMatchFilter" direction="Prefix" logic="Exclude" textProcessorId="Regex_false_positives_suffix">
</Filter>

  <Regexid="Regex_false_positives_suffix">(\d{4}){5,}</Regex>
```
You can also exclude occurrences if they are followed by **/xuidsuffix**, like the one in this list:

- 1234-5678-9321 /xuid
- 1234-5678-9321

you can use this XML:

```xml
<Filters id="cc_number_filters_exc">
    <Filter type="TextMatchFilter" direction="Prefix" logic="Exclude" textProcessorId="Keyword_false_positives_suffix">
</Filter>

  <Keyword id="Keyword_false_positives_suffix">
    <Group matchStyle="string">
      <Term>/xuid</Term>
    </Group>
  </Keyword>
```

Similarly, to include an occurrence only if it is followed by **cvv** or **expires**, such as the two in this list:

- 45-124576532-123 
- 45-124576532-123  cvv 966
- 45-124576532-123  expires 03/23

you can use this XML:

```xml
<Filters id="cc_filters_inc">
    <Filter type="TextMatchFilter" direction="Full" logic="Include" textProcessorId="Keyword_true_positives_suffix">
</Filter>

  <Keyword id="Keyword_true_positives_suffix">
    <Group matchStyle="string">
      <Term>cvv</Term>
      <Term>expires</Term>
    </Group>
  </Keyword>
```

## Using filters in rule packages

Filters can be defined on the entire SIT or on a pattern. Here are some examples.

### At the sensitive information type level

Filters at Entity - will cover all child patterns

The filters will be applied to **all** the instances classified by any of the patterns in that entity / sensitive information type.

```xml
<Entity id="6443b88f-2808-482a-8e1a-3ae5026645e1" patternsProximity="300" recommendedConfidence="85" filters="CompositeFiltersAtEntityLevel">
      <Pattern confidenceLevel="85">
        <IdMatch idRef="Regex_denmark_id" />
      </Pattern>
</Entity>
```

### At the individual pattern of the sensitive information type level

Filters only at the pattern level.

The filter will be applied to only the instances matched by the pattern.

```xml
<Entity id="50842eb7-edc8-4019-85dd-5a5c1f2bb085" patternsProximity="300" recommendedConfidence="85">
      <Pattern confidenceLevel="85"  filters="CompositeFiltersAtPattern">
        <IdMatch idRef="Keyword_cc_verification" />
      </Pattern>
</Entity>
```


### At the sensitive information type level with an additional filter on some of the patterns of that entity

Filters at Entity + pattern

The filters will be applied to **all** the instances classified by any of the patterns in that entity / sensitive information type. The pattern level filter will filter the instances matched by that pattern.

```xml
<Entity id="6443b88f-2808-482a-8e1a-3ae5026645e1" patternsProximity="300" recommendedConfidence="85" filters="CompositeFiltersAtEntityLevel">
      <Pattern confidenceLevel="85" filters="CompositeFiltersAtPattern">
        <IdMatch idRef="Regex_denmark_id" />
      </Pattern>
</Entity>
```

## More information

- [Learn about Microsoft Purview Data Loss Prevention](dlp-learn-about-dlp.md)

- [Sensitive information type entity definitions](sensitive-information-type-entity-definitions.md)

- [Sensitive information type functions](sit-functions.md)
