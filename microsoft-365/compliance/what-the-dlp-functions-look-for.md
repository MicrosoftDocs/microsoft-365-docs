---
title: "What the Data Loss Prevention (DLP) functions look for"
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
ms.custom:
- seo-marvel-apr2020
description: Learn what the data loss prevention (DLP) functions look for.
---

# What the DLP functions look for

Data loss prevention (DLP) includes sensitive information types, such as credit card Number and EU Debit card number, which are ready for you to use in your DLP policies. These sensitive information types look for a specific pattern and corroborate it by ensuring proper formatting, enforcing checksums, and looking for relevant keywords or other information. Some of this functionality is performed by internal functions. For example, the Credit Card Number sensitive information type uses a function to look for dates formatted like an expiration date, to help corroborate that a number is a credit card number.
  
This article explains what these functions look for, to help you understand how the predefined sensitive information types work. For more information, see [Sensitive information type entity definitions](sensitive-information-type-entity-definitions.md)
  
## Table of functions

|function name  |function action  |is a validator|
|---------|---------|---------|
|Func_Argentina_Unique_Tax_Key|detects and validates Argentina Unique tax key| yes|
|Func_aba_routing|detects ABA routing number| yes|
|Func_alabama_drivers_license_number|detects Alabama driver’s license number| yes|
|Func_alaska_delaware_oregon_drivers_license_number|detects Alaska, Delaware, Oregon driver’s license number|
|Func_alaska_drivers_license_number|detects Alaska driver’s license number|
|Func_alberta_drivers_license_number|detects Alberta driver’s license number|
|Func_Argentina_Unique_Tax_Key|detects Argentina Unique tax key|
|Func_arizona_drivers_license_number|detects Arizona driver’s license number|
|Func_arkansas_drivers_license_number|detects Arkansas driver’s license number|
|Func_australian_business_number|detects Australia business number|
|Func_Australian_Company_Number|detects Australia company number|
|Func_australian_medical_account_number|detects Australia medical account number|
|Func_australian_tax_file_number|detects Australia tax file number|
|Func_austria_eu_ssn_or_equivalent|detects Austria social security number|
|Func_austria_eu_tax_file_number|detects Austria tax file number|
|Func_Austria_Value_Added_Tax|detects Austria Value Added Tax|
|Func_belgium_national_number|detects Belgium national number|
|Func_belgium_value_added_tax_number|detects Belgium value added tax number|
|Func_brazil_cnpj|detects Brazil legal entity number (CNPJ)|
|Func_brazil_cpf|detects Brazil CPF|
|Func_brazil_rg|detects Brazil RG|
|Func_british_columbia_drivers_license_number|detects British Columbia driver’s license number|
|Func_bulgaria_eu_national_id_card|detects Bulgaria uniform civil number|
|Func_california_drivers_license_number|detects California driver’s license number|
|Func_canadian_sin|detects Canada sin|
|Func_chile_id_card|detects Chile id card
|Func_china_resident_id|detects China resident id|
|Func_colorado_drivers_license_number|detects Colorado driver’s license number|
|Func_connecticut_drivers_license_number|detects Connecticut driver’s license number|
|Func_credit_card|detects credit card|
|Func_croatia_id_card|detects Croatia id card|
|Func_croatia_oib_number|detects Croatia OIB number|
|Func_cyprus_eu_tax_file_number|detects Cyprus tax file number|
|Func_czech_id_card|detects Czech id card|
|Func_czech_id_card_new_format|detects Czech id card in new format|
|Func_dea_number|detects DEA number|
|Func_denmark_eu_tax_file_number|detects Denmark personal identification number|
|Func_district_of_columbia_drivers_license_number|detects District of Columbia driver’s license number|
|Func_estonia_eu_national_id_card|detects Estonia Personal Identification Code|
|Func_eu_debit_card|detects EU debit card|
|Func_finnish_national_id|detects Finnish national id|
|Func_florida_drivers_license_number|detects Florida driver’s license number|
|Func_florida_maryland_michigan_minnesota_drivers_license_number|detects Florida, Maryland, Michigan, Minnesota driver’s license number|
|Func_formatted_itin|detects formatted US ITIN|
|Func_fr_insee|detects France INSEE|
|Func_fr_passport|detects France passport|
|Func_france_eu_tax_file_number|detects France tax file number|
|Func_france_value_added_tax_number|detects France value added tax number|
|Func_french_drivers_license|detects French driver’s license|
|Func_french_insee|detects French INSEE|
|Func_georgia_drivers_license_number|detects Georgia driver’s license number|
|Func_german_drivers_license|detects Germany driver’s license|
|Func_german_passport|detects Germany passport|
|Func_german_passport_data|detects Germany passport|
|Func_germany_eu_tax_file_number|detects Germany tax file number|
|Func_germany_value_added_tax_number|detects Germany value added tax number|
|Func_greece_eu_ssn|detects Greece ssn (AMKA)|
|Func_hawaii_drivers_license_number|detects Hawaii driver’s license number|
|Func_hong_kong_id_card	|detects Hong Kong id card|
|Func_hungarian_value_added_tax_number|detects Hungary value added tax number|
|Func_hungary_eu_national_id_card|detects Hungary personal identification number|
|Func_hungary_eu_ssn_or_equivalent|detects Hungary social security number|
|Func_hungary_eu_tax_file_number|detects Hungary tax file number|
|Func_iban|detects IBAN|
|Func_idaho_drivers_license_number|detects Idaho driver’s license number|
|Func_illinois_drivers_license_number|detects Illinois driver’s license number|
|Func_india_aadhaar|detects India aadhaar|
|Func_indiana_drivers_license_number|detects Indiana driver’s license number|
|Func_iowa_drivers_license_number|detects Iowa driver’s license number|
|Func_ireland_pps|detects Ireland PPS|
|Func_israeli_national_id_number|detects Israel national id number|
|Func_italy_eu_national_id_card	|detects Italy fiscal code|
|Func_italy_value_added_tax_number|detects Italy value added tax number|
|Func_japanese_my_number_corporate|detects Japan my number corporate|
|Func_japanese_my_number_personal|detects Japan my number personal|
|Func_jp_bank_account|detects Japan bank account|
|Func_jp_bank_account_branch_code|detects Japan bank account branch code|
|Func_jp_drivers_license_number|detects Japan driver’s license number|
|Func_jp_passport|detects Japan passport|
|Func_jp_resident_registration_number|detects Japan resident registration number|
|Func_jp_sin|detects Japan SIN|
|Func_jp_sin_pre_1997|detects Japan sin pre 1997|
|Func_kansas_drivers_license_number|detects Kansas driver’s license number|
|Func_kentucky_drivers_license_number|detects Kentucky driver’s license number|
|Func_kentucky_massachusetts_virginia_drivers_license_number|detects Kentucky, Massachusetts, Virginia driver’s license number|
|Func_latvia_eu_national_id_card|detects Latvia personal code|
|Func_lithuania_eu_tax_file_number|detects Lithuania personal code|
|Func_louisiana_drivers_license_number|detects Louisiana driver’s license number|
|Func_luxemburg_eu_tax_file_number|detects Luxemburg national identification number (natural persons)|
|Func_luxemburg_eu_tax_file_number_non_natural|detects Luxemburg national identification number (non natural persons)|
|Func_maine_drivers_license_number|detects Maine driver’s license number|
|Func_manitoba_drivers_license_number|detects Manitoba driver’s license number|
|Func_maryland_drivers_license_number|detects Maryland driver’s license number|
|Func_massachusetts_drivers_license_number|detects Massachusetts driver’s license number|
|Func_mexico_population_registry_code|detects Mexico population registry code|
|Func_michigan_minnesota_drivers_license_number|detects Michigan, Minnesota driver’s license number|
|Func_minnesota_drivers_license_number|detects Minnesota driver’s license number|
|Func_mississippi_oklahoma_drivers_license_number|detects Mississippi, Oklahoma driver’s license number|
|Func_missouri_drivers_license_number|detects Missouri driver’s license number|
|Func_montana_drivers_license_number|detects Montana driver’s license number|
|Func_nebraska_drivers_license_number|detects Nebraska driver’s license number|
|Func_netherlands_bsn|detects Netherlands BSN|
|Func_netherlands_eu_tax_file_number|detects Netherlands tax file number|
|Func_netherlands_value_added_tax_number|detects Netherlands value added tax number|
|Func_nevada_drivers_license_number|detects Nevada driver’s license number|
|Func_new_brunswick_drivers_license_number|detects New Brunswick driver’s license number|
|Func_new_hampshire_drivers_license_number|detects New Hampshire driver’s license number|
|Func_new_jersey_drivers_license_number	|detects New Jersey driver’s license number|
|Func_new_mexico_drivers_license_number	|detects New Mexico driver’s license number|
|Func_new_york_drivers_license_number	|detects New York driver’s license number|
|Func_new_zealand_bank_account_number	|detects New Zealand bank account number|
|Func_new_zealand_inland_revenue_number	|detects New Zealand inland revenue number|
|Func_new_zealand_ministry_of_health_number|detects New Zealand ministry of health number|
|Func_newfoundland_labrador_drivers_license_number|detects Newfoundland Labrador driver’s license number|
|Func_newzealand_driver_license_number	|detects New Zealand driver license number|
|Func_newzealand_social_welfare_number	|detects New Zealand social welfare number|
|Func_north_carolina_drivers_license_number|detects North Carolina driver’s license number|
|Func_north_dakota_drivers_license_number|detects North Dakota driver’s license number|
|Func_norway_id_number	|detects Norway id number|
|Func_nova_scotia_drivers_license_number|detects Nova Scotia driver’s license number|
|Func_ohio_drivers_license_number	|detects Ohio driver’s license number|
|Func_ontario_drivers_license_number	|detects Ontario driver’s license number|
|Func_pennsylvania_drivers_license_number|detects Pennsylvania driver’s license number|
|Func_pesel_identification_number	|detects Poland National ID (PESEL)|
|Func_poland_eu_tax_file_number	|detects Poland tax file number|
|Func_polish_national_id	|detects Poland identity card|
|Func_polish_passport_number	|detects Polish passport number|
|Func_polish_regon_number	|detects Polish REGON number|
|Func_portugal_eu_tax_file_number|detects Portugal Tax Identification Number|
|Func_prince_edward_island_drivers_license_number|detects Prince Edward Island driver’s license number|
|Func_quebec_drivers_license_number	|detects Quebec driver’s license number|
|Func_randomized_formatted_ssn	|detects randomized formatted US SSN|
|Func_randomized_unformatted_ssn|detects randomized unformatted US SSN|
|Func_rhode_island_drivers_license_number|detects Rhode Island driver’s license number|
|Func_romania_eu_national_id_card	|detects Romania personal numeric code (CNP)|
|Func_saskatchewan_drivers_license_number|detects Saskatchewan driver’s license number|
|Func_slovakia_eu_national_id_card	|detects Slovakia personal number|
|Func_slovenia_eu_national_id_card	|detects Slovenia Unique Master Citizen Number|
|Func_slovenia_eu_tax_file_number	|detects Slovenia tax file number|
|Func_south_africa_identification_number|detects South Africa identification number|
|Func_south_carolina_drivers_license_number|detects South Carolina driver’s license number|
|Func_south_dakota_drivers_license_number|detects South Dakota driver’s license number|
|Func_south_korea_resident_number	|detects South Korea resident number|
|Func_spain_eu_DL_and_NI_number_citizen	|detects Spain DL and NI number citizen|
|Func_spain_eu_DL_and_NI_number_foreigner|detects Spain DL and NI number foreigner|
|Func_spain_eu_driver's_license_number	|detects Spain driver's license number|
|Func_spain_eu_tax_file_number	|detects Spain tax file number|
|Func_spanish_social_security_number|detects Spanish social security number|
|Func_ssn	|Function to detct non-randomized formatted US SSN|
|Func_sweden_eu_tax_file_number|detects Sweden tax file number|
|Func_swedish_national_identifier|detects Swedish national identifier|
|Func_swiss_social_security_number_ahv|detects Swiss social security number AHV|
|Func_taiwanese_national_id	|detects Taiwanese national id|
|Func_tennessee_drivers_license_number|detects Tennessee driver’s license number|
|Func_texas_drivers_license_number	|detects Texas driver’s license number|
|Func_Thai_Citizen_Id	|detects Thai Citizen Id|
|Func_Turkish_National_Id|detects Turkish National ID|
|Func_uk_drivers_license|detects UK driver’s license|
|Func_uk_eu_tax_file_number|detects UK unique taxpayer number|
|Func_uk_nhs_number	|detects UK NHS number|
|Func_uk_nino	|detects UK NINO|
|Func_unformatted_canadian_sin|detects unformatted Canadian SIN|
|Func_unformatted_itin	|detects unformatted US ITIN|
|Func_unformatted_ssn	|detects non-randomized unformatted US SSN|
|Func_usa_uk_passport	|detects USA and UK passport|
|Func_utah_drivers_license_number|detects Utah driver’s license number|
|Func_vermont_drivers_license_number|detects Vermont driver’s license number|
|Func_virginia_drivers_license_number|detects Virginia driver’s license number|
|Func_washington_drivers_license_number|detects Washington driver’s license number|
|Func_west_virginia_drivers_license_number|detects West Virginia driver’s license number|
|Func_wisconsin_drivers_license_number	|detects Wisconsin driver’s license number|
|Func_wyoming_drivers_license_number	|detects Wyoming driver’s license number|


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

This function looks for a date in the format commonly used in the E.U. (and most places outside the U.S.), such as "day/month/year", "day-month-year", and "day month year". The names or abbreviations of months are not case sensitive.
  
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

This function looks for a date in the formats commonly used by credit and debit cards, which exclude days in favor of months. This function will match dates in format of "month/year", "month-year", "[month name] year", and "[month abbreviation] year". The names or abbreviations of months are not case sensitive.
  
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

This function looks for a U.S. state name or postal abbreviation followed by a valid zip code, just as they're used in postal addresses. The zip code must be one of the correct zip codes associated with the U.S. state name or abbreviation. The U.S. state name and zip code cannot be separated by punctuation or letters.
  
Examples:
  
- Washington 98052
    
- Washington 98052-9998
    
- WA 98052
    
- WA 98052-9998
    

