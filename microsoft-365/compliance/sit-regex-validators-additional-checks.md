---
title: "Sensitive information type REGEX validators and additional checks"
f1.keywords:
- NOCSH
ms.author: chrfox
author: chrfox
manager: laurawi
audience: Admin
ms.topic: how-to
ms.service: O365-seccomp
ms.date: 
ms.localizationpriority: medium
ms.collection: 
- tier1
- purview-compliance
search.appverid: 
- MOE150
- MET150
description: "Learn how to use REGEX validators and additional checks in your sentisitve information types."
ms.custom: seo-marvel-apr2020
---
# Sensitive information type REGEX validators and additional check

> [!IMPORTANT]
> Microsoft Customer Service & Support can't assist with creating custom classifications or regular expression patterns. Support engineers can provide limited support for the feature, such as, providing sample regular expression patterns for testing purposes, or assisting with troubleshooting an existing regular expression pattern that's not triggering as expected, but can't provide assurances that any custom content-matching development will fulfill your requirements or obligations.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Sensitive Information Type regular expression validators

### Checksum validator

If you need to run a checksum on a digit in a regular expression, you can use the *checksum validator*. For example, say you need to create a SIT for an eight digit license number where the last digit is a checksum digit that is validated using a mod 9 calculation. You've set up the checksum algorithm like this:

```console
Sum = digit 1 * Weight 1 + digit 2 * weight 2 + digit 3 * weight 3 + digit 4 * weight 4 + digit 5 * weight 5 + digit 6 * weight 6 + digit 7 * weight 7 + digit 8 * weight 8
Mod value = Sum % 9
If Mod value == digit 8
    Account number is valid
If Mod value != digit 8
    Account number is invalid
```

1. Define the primary element with this regular expression:

   ```console
   \d{8}
   ```

2. Then add the checksum validator.

3. Add the weight values separated by commas, the position of the check digit and the Mod value. For more information on the Modulo operation, see [Modulo operation](https://en.wikipedia.org/wiki/Modulo_operation).

   > [!NOTE]
   > If the check digit is not part of the checksum calculation then use 0 as the weight for the check digit. For example, in the above case weight 8 will be equal to 0 if the check digit is not to be used for calculating the check digit.

   :::image type="content" alt-text="screenshot of configured checksum validator." source="../media/checksum-validator.png" lightbox="../media/checksum-validator.png":::

### Date validator

If a date value that is embedded in regular expression is part of a new pattern you are creating, you can use the *date validator* to test that it meets your criteria. For example, say you want to create a SIT for a nine digit employee identification number. The first six digits are the date of hire in DDMMYY format and the last three are randomly generated numbers. To validate that the first six digits are in the correct format.

1. Define the primary element with this regular expression:

   ```console
   \d{9}
   ```

2. Then add the date validator.

3. Select the date format and the start offset. Since the date string is the first six digits, the offset is `0`.

   :::image type="content" alt-text="screenshot of configured date validator." source="../media/date-validator.png" lightbox="../media/date-validator.png":::

### Functional processors as validators

You can use function processors for some of the most commonly used SITs as validators. This allows you to define your own regular expression while ensuring they pass the additional checks required by the SIT. For example, Func_India_Aadhar will ensure that the custom regular expression defined by you passes the validation logic required for Indian Aadhar card. For more information on DLP functions that can be used as validators, see [Sensitive information type functions](sit-functions.md). 

### Luhn check validator

You can use the Luhn check validator if you have a custom Sensitive information type that includes a regular expression which should pass the [Luhn algorithm](https://en.wikipedia.org/wiki/Luhn_algorithm).

## Sensitive information type additional checks

Here are the definitions and some examples for the available additional checks.

**Exclude specific matches**: This check lets you define keywords to exclude when detecting matches for the pattern you are editing. For example, you might exclude test credit card numbers like '4111111111111111' so that they're not matched as a valid number.

**Starts or doesn't start with characters**: This check lets you define the characters that the matched items must or must not start with. For example, if you want the pattern to detect only credit card numbers that start with 41, 42, or 43, select **Starts with** and add 41, 42, and 43 to the list, separated by commas. 

**Ends or doesn't end with characters**: This check lets you define the characters that the matched items must or must not end with. For example, if your Employee ID number cannot end with 0 or 1, select **Doesn't end with** and add 0 and 1 to the list, separated by commas.

**Exclude duplicate characters**: This check lets you ignore matches in which all the digits are the same. For example, if the six digit employee ID number cannot have all the digits be the same, you can select **Exclude duplicate characters** to exclude 111111, 222222, 333333, 444444, 555555, 666666, 777777, 888888, 999999, and 000000 from the list of valid matches for the employee ID.

**Include or exclude prefixes**: This check lets you define the keywords that must or must not be found immediately before the matching entity. Depending on your selection, entities will be matched or not matched if they're preceded by the prefixes you include here. For example, if you **Exclude** the prefix **GUID:**, any entity that's preceded by **GUID:** won't be considered a match.

**Include or exclude suffixes** This check lets you define the keywords that must or must not be found immediately after the matching entity. Depending on your selection, entities will be matched or not matched if they're followed by the suffixes you include here. For example, if you **Exclude** the suffix **:GUID**, any text that's followed by **:GUID** won't be matched.
