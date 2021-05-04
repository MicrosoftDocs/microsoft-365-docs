---
title: "What the Data Loss Prevention (DLP) functions look for"
f1.keywords:
- NOCSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date:
audience: Admin
ms.topic: reference
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: 
- M365-security-compliance
search.appverid: 
- MOE150
- MET150
ms.custom:
- seo-marvel-apr2020
recommendations: false
description: Learn what the data loss prevention (DLP) functions look for.
---

# What the DLP functions look for

Data loss prevention (DLP) policies can use sensitive information types to identify sensitive items. Credit card number and EU debit card number are examples of sensitive information types. Sensitive information types look for  specific patterns. Sensitive information types validate the data by looking at it's format, it's checksums, and looks for relevant keywords or other information. Some of this functionality is performed by internal functions. For example, the Credit Card Number sensitive information type uses a function to look for dates that are formatted like an expiration date. This helps to corroborate that a number is a credit card number.
  
This article explains what these functions look for, to help you understand how the predefined sensitive information types work. For more information, see [Sensitive information type entity definitions](sensitive-information-type-entity-definitions.md)
  
## Table of functions

|function name  |function action  |is a validator|
|---------|---------|---------|
|Func_Argentina_Unique_Tax_Key|detects and validates Argentina Unique tax key|no|
|Func_aba_routing|detects ABA routing number| yes|
|Func_alabama_drivers_license_number|detects Alabama driver’s license number|no|
|Func_alaska_delaware_oregon_drivers_license_number|detects Alaska, Delaware, Oregon driver’s license number|no|
|Func_alaska_drivers_license_number|detects Alaska driver’s license number|no|
|Func_alberta_drivers_license_number|detects Alberta driver’s license number|no|
|Func_Argentina_Unique_Tax_Key|detects Argentina Unique tax key|no|
|Func_arizona_drivers_license_number|detects Arizona driver’s license number|no|
|Func_arkansas_drivers_license_number|detects Arkansas driver’s license number|no|
|Func_australian_business_number|detects Australia business number|no|
|Func_Australian_Company_Number|detects Australia company number|no|
|Func_australian_medical_account_number|detects Australia medical account number|no|
|Func_australian_tax_file_number|detects Australia tax file number|yes|
|Func_austria_eu_ssn_or_equivalent|detects Austria social security number|no|
|Func_austria_eu_tax_file_number|detects Austria tax file number|no|
|Func_Austria_Value_Added_Tax|detects Austria Value Added Tax|no|
|Func_belgium_national_number|detects Belgium national number|no|
|Func_belgium_value_added_tax_number|detects Belgium value added tax number|no|
|Func_brazil_cnpj|detects Brazil legal entity number (CNPJ)|yes|
|Func_brazil_cpf|detects Brazil CPF|yes|
|Func_brazil_rg|detects Brazil RG|no|
|Func_british_columbia_drivers_license_number|detects British Columbia driver’s license number|no|
|Func_bulgaria_eu_national_id_card|detects Bulgaria uniform civil number|no|
|Func_california_drivers_license_number|detects California driver’s license number|no|
|Func_canadian_sin|detects Canada sin|yes|
|Func_chile_id_card|detects Chile ID card|no|
|Func_china_resident_id|detects China-resident ID|no|
|Func_colorado_drivers_license_number|detects Colorado driver’s license number|no|
|Func_connecticut_drivers_license_number|detects Connecticut driver’s license number|no|
|Func_credit_card|detects credit card|yes|no|
|Func_croatia_id_card|detects Croatia ID card|no|
|Func_croatia_oib_number|detects Croatia OIB number|no|
|Func_cyprus_eu_tax_file_number|detects Cyprus tax file number|no|
|Func_czech_id_card|detects Czech ID card|no|
|Func_czech_id_card_new_format|detects Czech ID card in new format|no|
|Func_dea_number|detects DEA number|yes|
|Func_denmark_eu_tax_file_number|detects Denmark personal identification number|no|
|Func_district_of_columbia_drivers_license_number|detects District of Columbia driver’s license number|no|
|Func_estonia_eu_national_id_card|detects Estonia Personal Identification Code|no|
|Func_eu_debit_card|detects EU debit card|no|
|Func_finnish_national_id|detects Finnish national ID|no|
|Func_florida_drivers_license_number|detects Florida driver’s license number|no|
|Func_florida_maryland_michigan_minnesota_drivers_license_number|detects Florida, Maryland, Michigan, Minnesota driver’s license number|no|
|Func_formatted_itin|detects formatted US ITIN|yes|
|Func_fr_insee|detects France INSEE|no|
|Func_fr_passport|detects France passport|no|
|Func_france_eu_tax_file_number|detects France tax file number|no|
|Func_france_value_added_tax_number|detects France value added tax number|no|
|Func_french_drivers_license|detects French driver’s license|no|
|Func_french_insee|detects French INSEE|no|
|Func_georgia_drivers_license_number|detects Georgia driver’s license number|no|
|Func_german_drivers_license|detects Germany driver’s license|no|
|Func_german_passport|detects Germany passport|no|
|Func_german_passport_data|detects Germany passport|no|
|Func_germany_eu_tax_file_number|detects Germany tax file number|no|
|Func_germany_value_added_tax_number|detects Germany value added tax number|no|
|Func_greece_eu_ssn|detects Greece sin (AMKA)|no|
|Func_hawaii_drivers_license_number|detects Hawaii driver’s license number|no|
|Func_hong_kong_id_card	|detects Hong Kong ID card|no|
|Func_hungarian_value_added_tax_number|detects Hungary value added tax number|no|
|Func_hungary_eu_national_id_card|detects Hungary personal identification number|no|
|Func_hungary_eu_ssn_or_equivalent|detects Hungary social security number|no|
|Func_hungary_eu_tax_file_number|detects Hungary tax file number|no|
|Func_iban|detects IBAN|yes|
|Func_idaho_drivers_license_number|detects Idaho driver’s license number|no|
|Func_illinois_drivers_license_number|detects Illinois driver’s license number|no|
|Func_india_aadhaar|detects India aadhaar|yes|
|Func_indiana_drivers_license_number|detects Indiana driver’s license number|no|
|Func_iowa_drivers_license_number|detects Iowa driver’s license number|no|
|Func_ireland_pps|detects Ireland PPS|no|
|Func_israeli_national_id_number|detects Israel national ID number|no|
|Func_italy_eu_national_id_card	|detects Italy fiscal code|no|
|Func_italy_value_added_tax_number|detects Italy value added tax number|no|
|Func_japanese_my_number_corporate|detects Japan my number corporate|yes|
|Func_japanese_my_number_personal|detects Japan my number personal|yes|
|Func_jp_bank_account|detects Japan bank account|no|
|Func_jp_bank_account_branch_code|detects Japan bank account branch code|no|
|Func_jp_drivers_license_number|detects Japan driver’s license number|no|
|Func_jp_passport|detects Japan passport|no|
|Func_jp_resident_registration_number|detects Japan-resident registration number|no|
|Func_jp_sin|detects Japan SIN|no|
|Func_jp_sin_pre_1997|detects Japan sin pre 1997|no|
|Func_kansas_drivers_license_number|detects Kansas driver’s license number|no|
|Func_kentucky_drivers_license_number|detects Kentucky driver’s license number|no|
|Func_kentucky_massachusetts_virginia_drivers_license_number|detects Kentucky, Massachusetts, Virginia driver’s license number|no|
|Func_latvia_eu_national_id_card|detects Latvia personal code|no|
|Func_lithuania_eu_tax_file_number|detects Lithuania personal code|no|
|Func_louisiana_drivers_license_number|detects Louisiana driver’s license number|no|
|Func_luxemburg_eu_tax_file_number|detects Luxemburg national identification number (natural persons)|no|
|Func_luxemburg_eu_tax_file_number_non_natural|detects Luxemburg national identification number (non-natural persons)|no|
|Func_maine_drivers_license_number|detects Maine driver’s license number|no|
|Func_manitoba_drivers_license_number|detects Manitoba driver’s license number|no|
|Func_maryland_drivers_license_number|detects Maryland driver’s license number|no|
|Func_massachusetts_drivers_license_number|detects Massachusetts driver’s license number|no|
|Func_mexico_population_registry_code|detects Mexico population registry code|no|
|Func_michigan_minnesota_drivers_license_number|detects Michigan, Minnesota driver’s license number|no|
|Func_minnesota_drivers_license_number|detects Minnesota driver’s license number|no|
|Func_mississippi_oklahoma_drivers_license_number|detects Mississippi, Oklahoma driver’s license number|no|
|Func_missouri_drivers_license_number|detects Missouri driver’s license number|no|
|Func_montana_drivers_license_number|detects Montana driver’s license number|no|
|Func_nebraska_drivers_license_number|detects Nebraska driver’s license number|no|
|Func_netherlands_bsn|detects Netherlands BSN|no|
|Func_netherlands_eu_tax_file_number|detects Netherlands tax file number|no|
|Func_netherlands_value_added_tax_number|detects Netherlands value added tax number|no|
|Func_nevada_drivers_license_number|detects Nevada driver’s license number|no|
|Func_new_brunswick_drivers_license_number|detects New Brunswick driver’s license number|no|
|Func_new_hampshire_drivers_license_number|detects New Hampshire driver’s license number|no|
|Func_new_jersey_drivers_license_number	|detects New Jersey driver’s license number|no|
|Func_new_mexico_drivers_license_number	|detects New Mexico driver’s license number|no|
|Func_new_york_drivers_license_number	|detects New York driver’s license number|no|
|Func_new_zealand_bank_account_number	|detects New Zealand bank account number|no|
|Func_new_zealand_inland_revenue_number	|detects New Zealand inland revenue number|no|
|Func_new_zealand_ministry_of_health_number|detects New Zealand ministry of health number|no|
|Func_newfoundland_labrador_drivers_license_number|detects Newfoundland Labrador driver’s license number|no|
|Func_newzealand_driver_license_number	|detects New Zealand driver license number|no|
|Func_newzealand_social_welfare_number	|detects New Zealand social welfare number|no|
|Func_north_carolina_drivers_license_number|detects North Carolina driver’s license number|no|
|Func_north_dakota_drivers_license_number|detects North Dakota driver’s license number|no|
|Func_norway_id_number	|detects Norway ID number|no|
|Func_nova_scotia_drivers_license_number|detects Nova Scotia driver’s license number|no|
|Func_ohio_drivers_license_number	|detects Ohio driver’s license number|no|
|Func_ontario_drivers_license_number	|detects Ontario driver’s license number|no|
|Func_pennsylvania_drivers_license_number|detects Pennsylvania driver’s license number|no|
|Func_pesel_identification_number	|detects Poland National ID (PESEL)|no|
|Func_poland_eu_tax_file_number	|detects Poland tax file number|no|
|Func_polish_national_id	|detects Poland identity card|no|
|Func_polish_passport_number	|detects Polish passport number|no|
|Func_polish_regon_number	|detects Polish REGON number|no|
|Func_portugal_eu_tax_file_number|detects Portugal Tax Identification Number|no|
|Func_prince_edward_island_drivers_license_number|detects Prince Edward Island driver’s license number|no|
|Func_quebec_drivers_license_number	|detects Quebec driver’s license number|no|
|Func_randomized_formatted_ssn	|detects randomized formatted US SSN|yes|
|Func_randomized_unformatted_ssn|detects randomized unformatted US SSN|yes|
|Func_rhode_island_drivers_license_number|detects Rhode Island driver’s license number|no|
|Func_romania_eu_national_id_card	|detects Romania personal numeric code (CNP)|no|
|Func_saskatchewan_drivers_license_number|detects Saskatchewan driver’s license number|no|
|Func_slovakia_eu_national_id_card	|detects Slovakia personal number|no|
|Func_slovenia_eu_national_id_card	|detects Slovenia Unique Master Citizen Number|no|
|Func_slovenia_eu_tax_file_number	|detects Slovenia tax file number|no|
|Func_south_africa_identification_number|detects South Africa identification number|yes|
|Func_south_carolina_drivers_license_number|detects South Carolina driver’s license number|no|
|Func_south_dakota_drivers_license_number|detects South Dakota driver’s license number|no|
|Func_south_korea_resident_number	|detects South Korea resident number|no|
|Func_spain_eu_DL_and_NI_number_citizen	|detects Spain DL and NI number citizen|no|
|Func_spain_eu_DL_and_NI_number_foreigner|detects Spain DL and NI number foreigner|no|
|Func_spain_eu_driver's_license_number	|detects Spain driver's license number|no|
|Func_spain_eu_tax_file_number	|detects Spain tax file number|no|
|Func_spanish_social_security_number|detects Spanish social security number|no|
|Func_ssn	|Function to detect non-randomized formatted US SSN|yes|
|Func_sweden_eu_tax_file_number|detects Sweden tax file number|no|
|Func_swedish_national_identifier|detects Swedish national identifier|yes|
|Func_swiss_social_security_number_ahv|detects Swiss social security number AHV|no|
|Func_taiwanese_national_id	|detects Taiwanese national ID|no|
|Func_tennessee_drivers_license_number|detects Tennessee driver’s license number|no|
|Func_texas_drivers_license_number	|detects Texas driver’s license number|no|
|Func_Thai_Citizen_Id	|detects Thai Citizen ID|no|
|Func_Turkish_National_Id|detects Turkish National ID|yes|
|Func_uk_drivers_license|detects UK driver’s license|no|
|Func_uk_eu_tax_file_number|detects UK unique taxpayer number|no|
|Func_uk_nhs_number	|detects UK NHS number|yes|
|Func_uk_nino	|detects UK NINO|no|
|Func_unformatted_canadian_sin|detects unformatted Canadian SIN|no|
|Func_unformatted_itin	|detects unformatted US ITIN|yes|
|Func_unformatted_ssn	|detects non-randomized unformatted US SSN|yes|
|Func_usa_uk_passport	|detects USA and UK passport|yes|
|Func_utah_drivers_license_number|detects Utah driver’s license number|no|
|Func_vermont_drivers_license_number|detects Vermont driver’s license number|no|
|Func_virginia_drivers_license_number|detects Virginia driver’s license number|no|
|Func_washington_drivers_license_number|detects Washington driver’s license number|no|
|Func_west_virginia_drivers_license_number|detects West Virginia driver’s license number|no|
|Func_wisconsin_drivers_license_number	|detects Wisconsin driver’s license number|no|
|Func_wyoming_drivers_license_number	|detects Wyoming driver’s license number|no|


## Func_us_date

Func_us_date looks for dates in common U.S. formats. The common formats are "month/day/year", "month-day-year", and "month day year ". The names or abbreviations of months aren't case-sensitive. 
  
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

Fund_eu_dates looks for dates in common E.U. formats (and most places outside the U.S.), such as "day/month/year", "day-month-year", and "day month year". The names or abbreviations of months aren't case-sensitive.
  
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
    
  - jan feb maart apr mei jun jul aug sep sept out okt nov dec
    
## Func_expiration_date

Func_expiration_date looks for dates that are in formats commonly used by credit and debit cards. This function will match dates in format of "month/year", "month-year", "[month name] year", and "[month abbreviation] year". The names or abbreviations of months aren't case-sensitive.
  
Examples:
  
- MM/YY -- for example, 01/11 or 1/11
    
- MM/YYYY -- for example, 01/2011 or 1/2011
    
- MM-YY -- for example, 01-22 or 1-11
    
- MM-YYYY -- for example, 01-2000 or 1-2000
    
The following formats support YY or YYYY:
  
- Month-YYYY -- for example Jan-2010 or january-2010 or Jan-10 or january-10
    
- Month YYYY -- for example, 'january 2010' or 'Jan 2010' or 'january 10' or 'Jan 10'
    
- MonthYYYY -- for example, 'january2010' or 'Jan2010' or 'january10' or 'Jan10'
    
- Month/YYYY -- for example, 'january/2010' or 'Jan/2010' or 'january/10' or 'Jan/10'
    
Accepted month names:
  
- English
    
  - January, February, march, April, may, June, July, August, September, October, November, December
    
  - Jan Feb Mar Apr May June July Aug Sept Oct Nov Dec
    
## Func_us_address

Func_us_address looks for a U.S. state name or postal abbreviation followed by a valid zip code. The zip code must be one of the correct zip codes associated with the U.S. state name or abbreviation. The U.S. state name and zip code cannot be separated by punctuation or letters.
  
Examples:
  
- Washington 98052
    
- Washington 98052-9998
    
- WA 98052
    
- WA 98052-9998
