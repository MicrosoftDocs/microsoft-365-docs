---
title: "Supported file types in Advanced eDiscovery"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
ms.date: 
audience: Admin
ms.topic: reference
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: M365-security-compliance
search.appverid: 
- MOE150
- MET150
description: "A list of supported file types in Microsoft 365 Advanced eDiscovery, including image file types supported by the OCR functionality in Advanced eDiscovery."
ms.custom: seo-marvel-apr2020
---

# Supported file types in Advanced eDiscovery

Advanced eDiscovery supports many file types at many different levels. The support files types are described in the following tables in this article. This list isn't finalized, and we will add new file types as we continue our validation testing. These tables indicate if a file type is supported for text extraction (and Optical Character Recognition or OCR text extraction for image files), viewable in the native viewer and also support in the Annotate viewer in Advanced eDiscovery.

## Archive / Container

| Mime type | File identification | Metadata extraction | Container extraction | Possible Extensions |
|:---- |:---- |:---- |:---- |:---- |
|application/x-7z-compressed | Yes | Yes | Yes | .7z |
|application/x-rar-compressed | Yes | Yes | Yes | .rar |
|application/x-tar | Yes | Yes | Yes | .tar |
|application/zip | Yes | Yes | Yes | .zip |
||||||||

## Audio / Video

| Mime type | File identification | Metadata extraction | Text extraction | Native viewer | Annotate viewer | Possible Extensions |
|:------| :------| :------| :------| :------| :------| :------|
| application/mp4 | Yes | Yes | No | Yes | No | .f4v; .m4a; .m4v; .mp4; .mp4v; .mpeg; .mpeg4 |
|audio/mpeg | Yes | Yes | No | Yes | No | .mpeg |
|video/3gpp | Yes | Yes | No | Yes | No | .3gp |
|video/3gpp2 | Yes | Yes | No | Yes | No | .3g2; .3gp2 |
|video/quicktime | Yes | Yes | No | Yes | No | .moov; .mov; .qt |
|video/x-m4v | Yes | Yes | No | Yes | No | .m4v |
||||||||

## Database

| Mime type | File identification | Metadata extraction | Text extraction | Native viewer | Annotate viewer | Possible Extensions |
|:------| :------| :------| :------| :------| :------| :------|
|application/x-msaccess | Yes | Yes | Yes | No | No | .mdb |
||||||||

## Email

|Mime type |File identification |Metadata extraction |Text extraction |Native viewer |Annotate viewer | Possible Extensions |
|:------| :------| :------| :------| :------| :------| :------|
|application/vnd.ms-outlook | Yes | Yes | Yes | Yes | Yes | .msg |
|message/rfc822 | Yes | Yes | Yes | Yes | Yes | .eml |
|text/vcard-contact | Yes | Yes | Yes | Yes | Yes | .vcf |
||||||||

## Email Container

| Mime type | File identification | Metadata extraction | Container extraction | Possible Extensions |
|:------| :------| :------| :------| :------|
|application/mbox | Yes | Yes | Yes | .mbox |
|application/vnd.ms-outlook-pst | Yes | Yes | Yes | .pst |
||||||||

## HTML

| Mime type | File identification | Metadata extraction | Text extraction | Native viewer | Annotate viewer | Possible Extensions |
|:------| :------| :------| :------| :------| :------| :------|
|application/xhtml+xml | Yes | Yes | Yes | Yes | Yes | .xhtml |
|application/xml | Yes | Yes | Yes | Yes | Yes | .xml |
|text/html | Yes | Yes | Yes | Yes | Yes | .htm; .html; .shtml |
||||||||

## Image

|Mime type |File identification |Metadata extraction |OCR text extraction |Native viewer |Annotate viewer |Possible Extensions |
|:------| :------| :------| :------| :------| :------| :------|
|image/bmp | Yes | Yes | Yes | Yes | Yes | .bmp |
|image/emf | Yes | Yes | Yes | Yes | Yes | .emf |
|image/gif | Yes | Yes | Yes | Yes | Yes | .gif |
|image/jpeg | Yes | Yes | Yes | Yes | Yes | .jpeg; .jpg |
|image/png | Yes | Yes | Yes | Yes | Yes | .png |
|image/svg+xml | Yes | Yes | Yes | Yes | No | .svg |
|image/tiff | Yes | Yes | Yes | Yes | Yes | .tif |
|image/vnd.dwg | Yes | Yes | Yes | Yes | Yes | .dwg; .dxf |
|image/wmf | Yes | Yes | Yes | Yes | Yes | .wmf |
||||||||

## Microsoft Excel

| Mime type | File identification | Metadata extraction | Text extraction | Native viewer | Annotate viewer | Possible Extensions |
|:------| :------| :------| :------| :------| :------| :------|
|application/vnd.ms-excel | Yes | Yes | Yes | Yes | Yes | .dat; .xls |
|application/vnd.ms-excel.sheet.binary.macroenabled.12 | Yes | Yes | Yes | Yes | No | .xlsb |
|application/vnd.ms-excel.sheet.macroenabled.12 | Yes | Yes | Yes | Yes | Yes | .xlsm |
|application/vnd.ms-excel.template.macroenabled.12 | Yes | Yes | Yes | No | No | .xltm |
|application/vnd.openxmlformats-officedocument.spreadsheetml.sheet | Yes | Yes | Yes | Yes | Yes | .xlsx |
|application/vnd.openxmlformats-officedocument.spreadsheetml.template | Yes | Yes | Yes | Yes | Yes | .xltx |
||||||||

## Microsoft OneNote

| Mime type | File identification | Metadata extraction | Text extraction | Native viewer | Annotate viewer | Possible Extensions |
|:------| :------| :------| :------| :------| :------| :------|
|application/onenote | Yes | Yes | Yes | No | No | .one |
||||||||

## Microsoft PowerPoint

| Mime type | File identification | Metadata extraction | Text extraction | Native viewer | Annotate viewer | Possible Extensions |
|:------| :------| :------| :------| :------| :------| :------|
|application/vnd.ms-powerpoint | Yes | Yes | Yes | Yes | Yes | .pot; .pps; .ppt |
|application/vnd.openxmlformats-officedocument.presentationml.presentation | Yes | Yes | Yes | Yes | Yes | .pptx |
|application/vnd.openxmlformats-officedocument.presentationml.slideshow | Yes | Yes | Yes | Yes | Yes | .ppsx |
|application/vnd.openxmlformats-officedocument.presentationml.template | Yes | Yes | Yes | Yes | Yes | .potx |
||||||||

## Microsoft Project

| Mime type | File identification | Metadata extraction | Text extraction | Native viewer | Annotate viewer | Possible Extensions |
|:------| :------| :------| :------| :------| :------| :------|
|application/vnd.ms-project | Yes | Yes | Yes | No | Yes | .mpp |
||||||||

## Microsoft Publisher

|Mime type | File identification | Metadata extraction | Text extraction | Native viewer | Annotate viewer | Possible Extensions |
|:------| :------| :------| :------| :------| :------| :------|
|application/x-mspublisher | Yes | Yes | Yes | Yes | Yes | .pub |
||||||||

## Microsoft Visio

| Mime type | File identification | Metadata extraction | Text extraction | Native viewer | Annotate viewer | Possible Extensions |
|:------| :------| :------| :------| :------| :------| :------|
|application/vnd.ms-visio.drawing | Yes | Yes | Yes | Yes | No |  |
|application/vnd.visio | Yes | Yes | Yes | Yes | Yes | .vsd |
||||||||

## Microsoft Word

| Mime type | File identification | Metadata extraction | Text extraction | Native viewer | Annotate viewer | Possible Extensions |
|:------| :------| :------| :------| :------| :------| :------|
|application/msword | Yes | Yes | Yes | Yes | Yes | .dat; .doc |
| application/rtf | Yes | Yes | Yes | Yes | Yes | .doc; .rtf |
|application/vnd.ms-word.document.macroenabled.12 | Yes | Yes | Yes | Yes | Yes | .docm |
|application/vnd.ms-word.template.macroenabled.12 | Yes | Yes | Yes | Yes | Yes | .dotm |
|application/vnd.openxmlformats-officedocument.wordprocessingml.document | Yes | Yes | Yes | Yes | Yes | .docx |
|application/vnd.openxmlformats-officedocument.wordprocessingml.template | Yes | Yes | Yes | Yes | Yes | .dotx |
||||||||

## Microsoft Works

| Mime type | File identification | Metadata extraction | Text extraction | Native viewer | Annotate viewer | Possible Extensions |
|:------| :------| :------| :------| :------| :------| :------|
|application/vnd.ms-works-ss | Yes | Yes | No | No | No | .wps |
|application/vnd.ms-works-wp | Yes | Yes | No | No | No | .wps |
||||||||

## Open Document Format

| Mime type | File identification | Metadata extraction | Text extraction | Native viewer | Annotate viewer | Possible Extensions |
|:------| :------| :------| :------| :------| :------| :------|
|application/vnd.oasis.opendocument.text | Yes | Yes | Yes | Yes | Yes | .odt |
||||||||

## Other

| Mime type | File identification | Metadata extraction | Text extraction | Native viewer | Annotate viewer | Possible Extensions |
|:------| :------| :------| :------| :------| :------| :------|
|application/json | Yes | Yes | Yes | Yes | Yes | n/a |
|application/vnd.ms-graph | Yes | Yes | No | No | No |  |
|application/winhlp | Yes | Yes | No | No | No | .hlp |
|application/x-tnef | Yes | Yes | No | No | No |  |
||||||||

## Plain Text

| Mime type | File identification | Metadata extraction | Text extraction | Native viewer | Annotate viewer | Possible Extensions |
|:------| :------| :------| :------| :------| :------| :------|
|text/csv | Yes | Yes | Yes | Yes | Yes | .csv |
|text/plain | Yes | Yes | Yes | Yes | Yes | .con; .css; .csv; .dat; .pl; .txt |
||||||||

## Portable Document Format

| Mime type | File identification | Metadata extraction | Text extraction | Native viewer | Annotate viewer | Possible Extensions |
|:------| :------| :------| :------| :------| :------| :------|
|application/pdf | Yes | Yes | Yes | Yes | Yes | .pdf |
||||||||

## Word Perfect

| Mime type | File identification | Metadata extraction | Text extraction | Native viewer | Annotate viewer | Possible Extensions |
|:------| :------| :------| :------| :------| :------| :------|
|application/vnd.wordperfect; version=5.0 | Yes | Yes | Yes | No | No | .wpd |
|application/vnd.wordperfect; version=5.1 | Yes | Yes | Yes | No | No | .wpd |
|application/vnd.wordperfect; version=6.x | Yes | Yes | Yes | No | No | .wpd |
||||||||

## Word Pro

| Mime type | File identification | Metadata extraction | Text extraction | Native viewer | Annotate viewer | Possible Extensions |
|:------| :------| :------| :------| :------| :------| :------|
|application/vnd.lotus-wordpro | Yes | Yes | No | No | No | .lwp |
||||||||
