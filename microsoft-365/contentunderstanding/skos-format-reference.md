---
title: 'SKOS format reference for SharePoint taxonomy'
ms.author: mikeplum
author: MikePlumleyMSFT
manager: serdars
audience: admin
ms.topic: article
ms.prod: microsoft-365-enterprise
search.appverid: 
ms.collection: enabler-strategic
localization_priority: Priority
description: 'SKOS format reference for SharePoint taxonomy'
---
# SKOS format reference for SharePoint taxonomy

This article includes RDF vocabulary used to represent [SharePoint taxonomy](/dotnet/api/microsoft.sharepoint.taxonomy) and is based on [SKOS](https://www.w3.org/TR/skos-primer/). For serialization of this RDF syntax, use RDF [TURTLE](https://www.w3.org/TR/turtle/).

The following table shows the [SKOS](https://www.w3.org/TR/skos-primer/) equivalents for the [SharePoint taxonomy](/dotnet/api/microsoft.sharepoint.taxonomy) vocabulary. SharePoint does not support [SKOS](https://www.w3.org/TR/skos-primer/) values that have no SharePoint taxonomy equivalent.

|SharePoint taxonomy|SKOS equivalent|
|:-----------------|:--------------|
|sharepoint-taxonomy:Term|skos:Concept|
|sharepoint-taxonomy:TermSet|skos:ConceptScheme|
|sharepoint-taxonomy:inTermSet|skos:inScheme|
|sharepoint-taxonomy:hasTopLevelTerm|skos:hasTopConcept|
|sharepoint-taxonomy:topLevelTermOf|skos:topConceptOf|
|sharepoint-taxonomy:defaultLabel|skos:prefLabel|
|sharepoint-taxonomy:termSetName|skos:prefLabel|
|sharepoint-taxonomy:propertyName|skos:prefLabel|
|sharepoint-taxonomy:otherLabel|skos:altLabel|
|sharepoint-taxonomy:description|skos:definition|
|sharepoint-taxonomy:parent|skos:broader|
|sharepoint-taxonomy:child|skos:narrower|

The following table displays the entities of the SharePoint taxonomy vocabulary derived from [OWL](https://www.w3.org/TR/owl2-primer/).

|SharePoint taxonomy vocabulary|Derived from OWL|
|:-----------------------------|:----------------------|
|sharepoint-taxonomy:isAvailableForTagging|owl:datatypeproperty|
|sharepoint-taxonomy:SharedCustomPropertyForTerm|owl:ObjectProperty|
|sharepoint-taxonomy:LocalCustomPropertyForTerm|owl:ObjectProperty|
|sharepoint-taxonomy:CustomPropertyForTermSet|owl:ObjectProperty|

## SharePoint taxonomy vocabulary

A taxonomy is a formal classification system. A taxonomy groups the words, labels, and terms that describe something, and then arranges the groups into a hierarchy.

**sharepoint-taxonomy:Term**

Represents a Term or a Keyword in a managed metadata hierarchy.

A [Term](/dotnet/api/microsoft.sharepoint.taxonomy.term) is the atomic unit of a SharePoint [TermStore](/dotnet/api/microsoft.sharepoint.taxonomy.termstore). Each [Term](/dotnet/api/microsoft.sharepoint.taxonomy.term) belongs to a [TermSet](/dotnet/api/microsoft.sharepoint.taxonomy.termset) that belongs to a [TermGroup](/dotnet/api/microsoft.sharepoint.taxonomy.group). 

The syntax to define a [Term](/dotnet/api/microsoft.sharepoint.taxonomy.term) is as follows:

```SKOS
ex:TermA    a    sharepoint-taxonomy:Term;
    sharepoint-taxonomy:inTermSet    ex:TermSetA;
    sharepoint-taxonomy:topLevelTermOf    ex:TermSetA;
    sharepoint-taxonomy:child    ex:TermA1;
    sharepoint-taxonomy:isAvailableForTagging    “true”^^xsd:Boolean;
    sharePoint-taxonomy:defaultLabel    “Term A”@en-us.
```

A [Term](/dotnet/api/microsoft.sharepoint.taxonomy.term) compulsorily exists within a [TermSet](/dotnet/api/microsoft.sharepoint.taxonomy.termset). DefaultLabel is the name of the [Term](/dotnet/api/microsoft.sharepoint.taxonomy.term) as it appears in the visual representation. The required fields for defining a [Term](/dotnet/api/microsoft.sharepoint.taxonomy.term) include:

- sharepoint-taxonomy:defaultLabel
- sharepoint-taxonomy:inTermSet

A [Term](/dotnet/api/microsoft.sharepoint.taxonomy.term) can:

- Be hierarchically related to another [Term](/dotnet/api/microsoft.sharepoint.taxonomy.term) that is provided both the [Terms](/dotnet/api/microsoft.sharepoint.taxonomy.term) belong to the same [TermSet](/dotnet/api/microsoft.sharepoint.taxonomy.termset).
- Have multiple child [Terms](/dotnet/api/microsoft.sharepoint.taxonomy.term), but only a single parent [Term](/dotnet/api/microsoft.sharepoint.taxonomy.term).
- Not have a parent [Term](/dotnet/api/microsoft.sharepoint.taxonomy.term) defined, if it is a topLevelTermOf a [TermSet](/dotnet/api/microsoft.sharepoint.taxonomy.termset).
- Have one defaultLabel, per [TermStore](/dotnet/api/microsoft.sharepoint.taxonomy.termstore) working language.
- Not exist if it neither contains a parent [Term](/dotnet/api/microsoft.sharepoint.taxonomy.term), nor is the topLevelTermOf a [TermSet](/dotnet/api/microsoft.sharepoint.taxonomy.termset). 
- Have only a unique defaultLabel in the same hierarchical level.

**sharepoint-taxonomy:TermSet**

Represents a hierarchical or flat set of Term objects known as a "TermSet".

As the name suggests, TermSet is a set of [Terms](/dotnet/api/microsoft.sharepoint.taxonomy.term). A [Term](/dotnet/api/microsoft.sharepoint.taxonomy.term) in a [TermStore](/dotnet/api/microsoft.sharepoint.taxonomy.termstore) must belong to a [TermSet](/dotnet/api/microsoft.sharepoint.taxonomy.termset). No [Term](/dotnet/api/microsoft.sharepoint.taxonomy.term) can exist independently. 

The syntax to define a [TermSet](/dotnet/api/microsoft.sharepoint.taxonomy.termset) is:

```SKOS
ex:TermSetA    a    sharepoint-taxonomy:TermSet;
    sharepoint-taxonomy:termSetName    “TermSet A";
    sharepoint-taxonomy:isAvailableForTagging    “true”^^xsd:Boolean;
    sharepoint-taxonomy:hasTopLevelTerm    Ex:Term A.
```

[TermSets](/dotnet/api/microsoft.sharepoint.taxonomy.termset) are logically grouped together in [TermGroups](/dotnet/api/microsoft.sharepoint.taxonomy.group). The required field for defining a [TermSet](/dotnet/api/microsoft.sharepoint.taxonomy.termset) is:

- sharepoint-taxonomy:termSetName

In the case of the termSetName provided is not unique within the [TermGroup](/dotnet/api/microsoft.sharepoint.taxonomy.group), SharePoint appends a number at the end of the name to maintain the uniqueness of termSetName(s).

**sharepoint-taxonomy:hasTopLevelTerm**

SharePoint uses this property to map the top most [Term](/dotnet/api/microsoft.sharepoint.taxonomy.term) in the [TermSet](/dotnet/api/microsoft.sharepoint.taxonomy.termset), which is the entry point to the hierarchy of [Terms](/dotnet/api/microsoft.sharepoint.taxonomy.term) in a [TermSet](/dotnet/api/microsoft.sharepoint.taxonomy.termset). This is an inverse relation to sharepoint-taxonomy:topLevelTermOf. 

The syntax to define this is:

```SKOS
ex:TermSetA    sharepoint-taxonomy:hasTopLevelTerm    ex:TermA.
```

>[!NOTE]
> You cannot define the top level [Term](/dotnet/api/microsoft.sharepoint.taxonomy.term) of a parent [Term](/dotnet/api/microsoft.sharepoint.taxonomy.term).

**sharepoint-taxonomy:topLevelTermOf**

Sharepoint-taxonomy:topLevelTermOf is the inverse of sharepoint-taxonomy:hasTopLevelTerm

The syntax to define this is:

```SKOS
ex:TermA    sharepoint-taxonomy:topLevelTermOf    ex:TermSetA.
```

**sharepoint-taxonomy:inTermSet**

Use this to map a [Term](/dotnet/api/microsoft.sharepoint.taxonomy.term) to a [TermSet](/dotnet/api/microsoft.sharepoint.taxonomy.termset). A [Term](/dotnet/api/microsoft.sharepoint.taxonomy.term) can only exist in a single [TermSet](/dotnet/api/microsoft.sharepoint.taxonomy.termset). SharePoint requires this property when [defining a term](https://github.com/MicrosoftDocs/microsoft-365-docs-pr/blob/3a3cd54dd076b18bdff1d43b3e342897f8704c23/microsoft-365/contentunderstanding/skos-format-reference.md#term).

## Required labels

Your organization may want to do careful planning before you start to use managed metadata. The amount of planning that you must do depends on how formal your taxonomy is. It also depends on how much control that you want to impose on metadata. At each level of the hierarchy, you need to configure required labels for a Term or TermSet.

A Term can have one or more labels in the default language, and zero or more labels in the non-default language. If the term has labels in a language, one of the labels must be the default label.

**sharepoint-taxonomy:defaultLabel**

Use this default lexical label for a [Term](/dotnet/api/microsoft.sharepoint.taxonomy.term) that is a required parameter for a [Term](/dotnet/api/microsoft.sharepoint.taxonomy.term). Use to visually representing the [Term](/dotnet/api/microsoft.sharepoint.taxonomy.term).

The syntax to define a defaultLabel is:

```SKOS
ex:TermA    sharepoint-taxonomy:defaultLabel    “Term A”@en-us.
```

The defaultLabel contains two parts to it – the string and the language tag. The language must be one of the [TermStore](/dotnet/api/microsoft.sharepoint.taxonomy.termstore) working languages. The defaultLabel must be unique for all [Terms](/dotnet/api/microsoft.sharepoint.taxonomy.term) in the same [TermSet](/dotnet/api/microsoft.sharepoint.taxonomy.termset), at the same hierarchical level.

**sharepoint-taxonomy:termSetName**

Gets and sets the name for the current TermSet object.

This the lexical label for a [TermSet](/dotnet/api/microsoft.sharepoint.taxonomy.termset), in a [TermStore](/dotnet/api/microsoft.sharepoint.taxonomy.termstore) working language. This is a required parameter for a [TermSet](/dotnet/api/microsoft.sharepoint.taxonomy.termset). Use to visually representing a [TermSet](/dotnet/api/microsoft.sharepoint.taxonomy.termset).

The syntax to define a termSetName is:

```SKOS
ex:TermA    sharepoint-taxonomy:TermSetName    “Term Set A”@en-us.
```

**sharepoint-taxonomy:propertyName**

Gets and sets the property name for the current TermSet object.

This is the lexical label for a sharepoint-taxonomy:SharedCustomPropertyForTerm, sharepoint-taxonomy:LocalCustomPropertyForTerm and sharepoint-taxonomy:CustomPropertyForTermSet in a [TermStore](/dotnet/api/microsoft.sharepoint.taxonomy.termstore) working language.

The sharepoint-taxonomy:propertyName is treated as the key of the CustomProperty.

The syntax to define a propetyName is:

```SKOS
ex:SharedCustomProperty1    sharepoint-taxonomy:propertyName    “Shared Custom Property Key 1”@en-us.
```

## Optional labels

You can also add optional labels to your taxonomy.

**sharepoint-taxonomy:otherLabel**

This is the alternate lexical label for a [Term](/dotnet/api/microsoft.sharepoint.taxonomy.term). 

The syntax to define an otherLabel is:

```SKOS
ex:TermA    sharepoint-taxonomy:otherLabel    “Term A”@en-us.
```

## Semantic relationships

Taxonomies have hierarchical and sometimes a simple “related term” associative relationship, but some have "semantic relationships" or custom-created relationships. 

**sharepoint-taxonomy:parent**

This hierarchically relates a [Term](/dotnet/api/microsoft.sharepoint.taxonomy.term) to another [Term](/dotnet/api/microsoft.sharepoint.taxonomy.term). A [Term](/dotnet/api/microsoft.sharepoint.taxonomy.term) could be a top level [Term](/dotnet/api/microsoft.sharepoint.taxonomy.term) of a [TermSet](/dotnet/api/microsoft.sharepoint.taxonomy.termset), but in case it doesn’t it must have a parent [Term](/dotnet/api/microsoft.sharepoint.taxonomy.term). 

The syntax to define a parent is:

```SKOS
ex:TermA1    sharepoint-taxonomy:parent    ex:TermA.
```

This means that TermA is the parent and  TermA is the child.

**sharepoint-taxonomy:child**

The object contains one or more child TermSet instances, and these can be accessed through the TermSets property. This class also provides methods for creating new child TermSet objects. Permissions for editing child Term and TermSet instances is specified on the group. 

This hierarchically relates a [Term](/dotnet/api/microsoft.sharepoint.taxonomy.term) to another [Term](/dotnet/api/microsoft.sharepoint.taxonomy.term).

The syntax to define a child is:

```SKOS
ex:TermA    sharepoint-taxonomy:child    ex:TermA1.
```

This means that TermA is the parent and  TermA is the child.

## Documentation notes

This section discusses the taxonomy detailed in the Microsoft.SharePoint.Taxonomy Namespace.

**sharepoint-taxonomy:description**

This is a detailed explanation of any [SharePoint taxonomy](/dotnet/api/microsoft.sharepoint.taxonomy) vocabulary entity. 

The syntax to add a description is:

```SKOS
ex:TermA    sharepoint-taxonomy:description    “Term A is the top level term of TermSetA”@en-us.
```

## Custom properties

Gets the collection of custom property objects for the current Term object from the read-only dictionary.

Custom Properties are key-values pairs that can be defined for a [Term](/dotnet/api/microsoft.sharepoint.taxonomy.term) or a [TermSet](/dotnet/api/microsoft.sharepoint.taxonomy.termset), to further the description of the [Term](/dotnet/api/microsoft.sharepoint.taxonomy.term) or a [TermSet](/dotnet/api/microsoft.sharepoint.taxonomy.termset). SharePoint specifies the key of the custom property with the help of propertyName.

**sharepoint-taxonomy:CustomPropertyForTermSet**

The syntax to define this is:

```SKOS
ex:CustomProp1    rdf:type    sharepoint-taxonomy:CustomPropertyForTermSet;
    sharepoint-taxonomy:propertyName “Colour”.

ex:TermSetA    ex:CustomProp1    “Red”@en-us.
```

**sharepoint-taxonomy:SharedCustomPropertyForTerm**

If the custom property for a [Term](/dotnet/api/microsoft.sharepoint.taxonomy.term) needs to be carried along with the [Term](/dotnet/api/microsoft.sharepoint.taxonomy.term), when you reuse the [Term](/dotnet/api/microsoft.sharepoint.taxonomy.term) somewhere else, then you need to be define it under SharedCustomPropertyForTerm.

The syntax to define this is:

``` SKOS
ex:CustomProp2    rdf:type sharepoint-taxonomy:SharedCustomPropertyForTerm;
    sharepoint-taxonomy:propertyName “Length”.

ex:TermA    ex:CustomProp2    “5 cm”@en-us.
```
**sharepoint-taxonomy:LocalCustomPropertyForTerm**

If the custom property for a [Term](/dotnet/api/microsoft.sharepoint.taxonomy.term) does not need to be carried along with the [Term](/dotnet/api/microsoft.sharepoint.taxonomy.term), when you reuse the [Term](/dotnet/api/microsoft.sharepoint.taxonomy.term) somewhere else, then you need to define it under LocalCustomPropertyForTerm.

The syntax to define this is:

```SKOS
ex:CustomProp3    rdf:type sharepoint-taxonomy:LocalCustomPropertyForTerm;
    sharepoint-taxonomy:propertyName “width”.

ex:TermA    ex:CustomProp3    “5 cm”@en-us.
```

## Data properties

At each level of the hierarchy, you can configure specific data properties for a Term or TermSet.

**sharepoint-taxonomy:isAvailableForTagging**

Use this to specify if a [Term](/dotnet/api/microsoft.sharepoint.taxonomy.term) or a [TermSet](/dotnet/api/microsoft.sharepoint.taxonomy.termset) available in SharePoint Lists and Libraries.  

The syntax for this is:

```SKOS
ex:TermA    sharepoint-taxonomy:isAvailableForTagging     "true"^^xsd:Boolean;
```

## Domain and range

The table below describes the domain and range of SharePoint taxonomy vocabulary.

|Predicates/verb|Meaning|Domain|Range|
|:--------------|:------|:-----|:----|
inTermSet|In term set|Term|Term Set|
inTermGroup|In term group|TermSet|TermGroup|
topLevelTermOf|Is Top Level Term Of|Term|TermSet|
hasTopLevelTerm|Has top level term|Term Set|Term|
termSetName|Term set has Name|Term|Plain literal|
defaultLabel|Term has default label|Term|Plain literal|
otherLabel|Term has other label|Term|Plain literal|
propertyName|Has Property Label|SharedCustomPropertyForTerm, LocalCustomPropertyForTerm, CustomPropertyForTermSet |Boolean, String, Integer, Decimal, Double|
|description|Has Description|All|Plain literal|
|parent|Has parent|Term|Term|
|child|Has Child|Term|Term|
|isAvailableForTagging|Is available for tagging|Term, Term Set|Boolean|
|SharedCustomPropertyForTerm|Has shared custom property|Term|Boolean, string, Integer, Decimal, Double|
|LocalCustomPropertyForTerm|Has local custom property|Term|Boolean, String, Integer, Decimal, Double|
|CustomPropertyForTermSet|Has Custom Property|TermSet|Boolean, String, Integer, Decimal, Double|

[SKOS](https://www.w3.org/TR/skos-primer/) valid scenarios that [SharePoint taxonomy](/dotnet/api/microsoft.sharepoint.taxonomy) does not allow:

- Hierarchical redundancy - A [SKOS](https://www.w3.org/TR/skos-primer/) concept can be attached to several broader concepts at the same time, but a sharepoint-taxonomy:Term can have only one sharepoint-taxonomy:parent, hence cyclic dependency, of Terms is also not allowed.
- Orphaned terms are not allowed in SharePoint taxonomy. Every sharepoint-taxonomy:Term should either have a sharepoint-taxonomy:parent or it should be the sharepoint-taxonomy:topLevelTermOf a TermSet.
- SharePoint taxonomy does not support associative relations.
- SharePoint taxonomy only allows 2 types of Hierarchical relations – sharepoint-taxonomy:parent and sharepoint-Taxonomy:child. 
- Unlike [SKOS](https://www.w3.org/TR/skos-primer/) the hierarchical relationship in SharePoint taxonomy vocabulary, can only be established with Terms within the same TermSet.

## See also

[Import a term set using a SKOS-based format](import-term-set-skos.md)