---
title: "What the DLP functions look for"
f1.keywords:
- NOCSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date: 6/18/2016
audience: Admin
ms.topic: reference
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: 
- M365-security-compliance
search.appverid: 
- MOE150
- MET150
description: "The sensitive information types look for a specific pattern and corroborate it by ensuring proper formatting, enforcing checksums, and looking for relevant keywords or other information. Some of this functionality is performed by internal functions. This topic explains what these functions look for, to help you understand how the predefined sensitive information types work."
---

# What the DLP functions look for

Data loss prevention (DLP) includes sensitive information types, such as Credit Card Number and EU Debit Card Number, which are ready for you to use in your DLP policies. These sensitive information types look for a specific pattern and corroborate it by ensuring proper formatting, enforcing checksums, and looking for relevant keywords or other information. Some of this functionality is performed by internal functions. For example, the Credit Card Number sensitive information type uses a function to look for dates formatted like an expiration date, to help corroborate that a number is a credit card number.
  
This topic explains what these functions look for, to help you understand how the predefined sensitive information types work. For more information, see [What the sensitive information types look for](what-the-sensitive-information-types-look-for.md).
  
## Func_us_date

This function looks for a date in the format commonly used in the U.S. This includes the formats "month/day/year", "month-day-year", and "month day year ". The names or abbreviations of months are not case sensitive. 
  
Examples:
  
- December 2, 2016
    
- Dec 2, 2016
    
- dec 02 2016
    
- 12/2/2016
    
- 12/02/16
    
- Dec-2-2016
    
- 12-2-16
    
Accepted month names:
  
- English
    
  - January, February, march, April, may, June, July, August, September, October, November, December
    
  - Jan. Feb. Mar. Apr. May June July Aug. Sept. Oct. Nov. Dec.
    
## Func_eu_date

This function looks for a date in the format commonly used in the E.U. (and most places outside the U.S.). This includes the formats "day/month/year", "day-month-year", and "day month year". The names or abbreviations of months are not case sensitive.
  
Examples:
  
- 2 Dec 2016
    
- 02 dec 2016
    
- 2 Dec 16
    
- 2/12/2016
    
- 02/12/16
    
- 2-Dec-2016
    
- 2-12-16
    
Accepted month names:
  
- English
    
  - January, February, march, April, may, June, July, August, September, October, November, December
    
  - Jan. Feb. Mar. Apr. May June July Aug. Sept. Oct. Nov. Dec.
    
- Dutch
    
  - januari, februari, maart, April, mei, juni, juli, augustus, September, ocktober, October, November, December
    
  - jan feb maart apr mei jun jul aug sep sept oct okt nov dec
    
- French
    
  - janvier, février, mars, avril, mai, juin juillet, août, septembre, octobre, novembre, décembre
    
  - janv. févr. mars avril mai juin juil. août sept. oct. nov. déc.
    
- German
    
  - jänuar, februar, märz, April, mai, juni juli, August, September, oktober, November, dezember
    
  - Jan./Jän. Feb. März Apr. Mai Juni Juli Aug. Sept. Okt. Nov. Dez.
    
- Italian
    
  - gennaio, febbraio, marzo, aprile, maggio, giugno, luglio, agosto, settembre, ottobre, novembre, dicembre
    
  - genn. febbr. mar. apr. magg. giugno luglio ag. sett. ott. nov. dic.
    
- Portuguese
    
  - janeiro, fevereiro, março, marco, abril, maio, junho, julho, agosto, setembro, outubro, novembro, dezembro
    
  - jan fev mar abr mai jun jul ago set out nov dez
    
- Spanish
    
  - enero, febrero, marzo, abril, mayo, junio, julio, agosto, septiembre, octubre, noviembre, diciembre
    
  - enero feb. marzo abr. mayo jun. jul. agosto sept./set. oct. nov. dic.
    
## Func_eu_date1 (deprecated)

> [!NOTE]
> This function is deprecated because it supports only Portuguese month names, which are now included in the  `Func_eu_date` function above. 
  
This function looks for a date in the format commonly used in Portuguese. The format for this function is the same as  `Func_eu_date`, differing only in the language used.
  
Examples:
  
- 2 Dez 2016
    
- 02 dez 2016
    
- 2 Dez 16
    
- 2/12/2016
    
- 02/12/16
    
- 2-Dez-2016
    
- 2-12-16
    
Accepted month names:
  
- Portuguese
    
  - janeiro, fevereiro, março, marco, abril, maio, junho, julho, agosto, setembro, outubro, novembro, dezembro
    
  - jan fev mar abr mai jun jul ago set out nov dez
    
## Func_eu_date2 (deprecated)

> [!NOTE]
> This function is deprecated because it supports only Dutch month names, which are now included in the  `Func_eu_date` function above. 
  
This function looks for a date in the format commonly used in Dutch. The format for this function is the same as  `Func_eu_date`, differing only in the language used.
  
Examples:
  
- 2 Mei 2016
    
- 02 mei 2016
    
- 2 Mei 16
    
- 2/12/2016
    
- 02/12/16
    
- 2-Mei-2016
    
- 2-12-16
    
Accepted month names:
  
- Dutch
    
  - januari, februari, maart, April, mei, juni, juli, augustus, September, ocktober, October, November, December
    
  - jan feb maart apr mei jun jul aug sep sept oct okt nov dec
    
## Func_expiration_date

This function looks for a date in the formats commonly used by credit and debit cards, which exclude days in favor of months. This function will match dates in format of "month/year", "month-year", "[month name] year", and "[month abbreviation] year". The names or abbreviations of months are not case sensitive.
  
Examples:
  
- MM/YY -- for example, 01/11 or 1/11
    
- MM/YYYY -- for example, 01/2011 or 1/2011
    
- MM-YY -- for example, 01-22 or 1-11
    
- MM-YYYY -- for example, 01-2000 or 1-2000
    
The following formats support YY or YYYY:
  
- Month-YYYY -- for example, .Jan-2010 or january-2010 or Jan-10 or january-10
    
- Month YYYY -- for example, 'january 2010' or 'Jan 2010' or 'january 10' or 'Jan 10'
    
- MonthYYYY -- for example, 'january2010' or 'Jan2010' or 'january10' or 'Jan10'
    
- Month/YYYY -- for example, 'january/2010' or 'Jan/2010' or 'january/10' or 'Jan/10'
    
Accepted month names:
  
- English
    
  - January, February, march, April, may, June, July, August, September, October, November, December
    
  - Jan Feb Mar Apr May June July Aug Sept Oct Nov Dec
    
## Func_us_address

This function looks for a U.S. state name or postal abbreviation followed by a valid zip code, just as they are used in postal addresses. The zip code must be one of the correct zip codes associated with the U.S. state name or abbreviation. The U.S. state name and zip code cannot be separated by punctuation or letters.
  
Examples:
  
- Washington 98052
    
- Washington 98052-9998
    
- WA 98052
    
- WA 98052-9998
    

