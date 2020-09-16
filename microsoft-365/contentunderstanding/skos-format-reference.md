---
title: 'SKOS format reference for SharePoint taxonomy'
ms.author: mikeplum
author: MikePlumleyMSFT
manager: serdars
audience: admin
ms.topic: article
ms.service: 
search.appverid: 
localization_priority: None
description: 'How to set up Project Cortex.'
---
# SKOS format reference for SharePoint taxonomy

This is an RDF vocabulary used to represent SharePoint taxonomy. This is based on SKOS. For serialization of this RDF syntax use RDF [TURTLE](https://www.w3.org/TR/skos-primer/#TURTLE).

The following tables show the SKOS equivalents for the SharePoint taxonomy vocabulary. Note that SKOS values with no SharePoint taxonomy equivalent are not supported.

|SharePoint taxonomy|SKOS equivalent|
|:-----------------|:--------------|
|sharepoint-taxonomy:Term|skos:Concept|
|sharepoint-taxonomy:TermSet|skos:ConceptScheme|
||skos:Collection|
||skos:OrderedCollection|
|sharepoint-taxonomy:inTermSet|skos:inScheme|
|sharepoint-taxonomy:hasTopLevelTerm|skos:hasTopConcept|
|sharepoint-taxonomy:topLevelTermOf|skos:topConceptOf|
|sharepoint-taxonomy:defaultLabel|skos:prefLabel|
|sharepoint-taxonomy:termSetName|skos:prefLabel|
|sharepoint-taxonomy:propertyName|skos:prefLabel|
|sharepoint-taxonomy:otherLabel|skos:altLabel|
||skos:hiddenLabel|
||skos:notation|
||skos:note|
||skos:changeNote|
|sharepoint-taxonomy:description|skos:definition|
||skos:editorialNote|
||skos:example|
||skos:historyNote|
||skos:scopeNote|
||skos:semanticRelation|
|sharepoint-taxonomy:parent|skos:broader|
|sharepoint-taxonomy:child|skos:narrower|
||skos:related|
||skos:broaderTransitive|
||skos:narrowerTransitive|
||skos:member|
||skos:memberList|
||skos:mappingRelation|
||skos:broadMatch|
||skos:narrowMatch|
||skos:relatedMatch|
||skos:exactMatch|
||skos:closeMatch|

SharePoint taxonomy vocabulary derived from OWL

|SharePoint taxonomy vocabulary|Derived from RDFS class|
|:-----------------------------|:----------------------|
|sharepoint-taxonomy:inTermGroup|owl:ObjectProperty|
|sharepoint-taxonomy:isAvailableForTagging|owl:datatypeproperty|
|sharepoint-taxonomy:SharedCustomPropertyForTerm|owl:ObjectProperty|
|sharepoint-taxonomy:LocalCustomPropertyForTerm|owl:ObjectProperty|
|sharepoint-taxonomy:CustomPropertyForTermSet|owl:ObjectProperty|

## The SharePoint taxonomy vocabulary

### Term

#### sharepoint-taxonomy:Term
A Term is the atomic unit of a SharePoint term store. Each term belongs to a TermSet which in turn belongs to a TermGroup. 
The syntax to define a term is  –

```SKOS
ex:TermA    a    sharepoint-taxonomy:Term|;
sharepoint-taxonomy:inTermSet    ex:TermSetA|;
sharepoint-taxonomy:topLevelTermOf    ex:TermSetA|;
sharepoint-taxonomy:child    ex:TermA1|;
sharepoint-taxonomy:isAvailableForTagging    “true”^^xsd:Boolean ;
sharePoint-taxonomy:defaultLabel    “Term A”@en-us   .
```

A Term compulsorily exists within a TermSet. DefaultLabel is the name of the term as it will appear in the visual representation. The required fields for defining a Term are:

- sharepoint-taxonomy:isAvailableForTagging
- sharepoint-taxonomy:defaultLabel
- sharepoint-taxonomy:inTermSet

A Term can:

- be hierarchically related to one another, provided they both belong to the same TermSet. 
- have multiple child Terms, but only a single parent Term.
- not have a parent Term defined if it is a topLevelTermOf a TermSet.
- have one defaultLabel, per term store working language.
- not exist if it neither contains a parent Term nor is the topLevelTermOf a TermSet. 
- have only a unique defaultLabel in the same hierarchical level

### TermSet

#### sharepoint-taxonomy:TermSet

As the name suggests this is a set of terms. A term in a term store must belong to a TermSet. No term can exist independently. 

The syntax to define a TermSet is:

```SKOS
ex:TermSetA    a    sharepoint-taxonomy:TermSet |;
sharepoint-taxonomy:termSetName    “TermSet A”;
sharepoint-taxonomy:isAvailableForTagging    “true”^^xsd:Boolean ;
sharepoint-taxonomy:hasTopLevelTerm    Ex:Term A   .
```

TermSets are logically grouped together in TermGroups. The required fields for defining a TermSet are:

- sharepoint-taxonomy:isAvailableForTagging
- sharepoint-taxonomy:termSetName

In case the termSetName provided is not unique within the TermGroup, a number is appended at the end of the name to maintain the uniqueness of termSetName (s).

#### sharepoint-taxonomy:hasTopLevelTerm

This property is used to map the top most term in the TermSet, that is the entry point to the hierarchy of terms in a TermSet. This is an inverse relation to sharepoint-taxonomy:topLevelTermOf . 

The syntax to define this is:

- The top level Term, cannot have a parent Term defined.

#### sharepoint-taxonomy:topLevelTermOf

Sharepoint-taxonomy:topLevelTermOf is the inverse of sharepoint-taxonomy:hasTopLevelTerm

The syntax to define this is:

```SKOS
ex:TermA    sharepoint-taxonomy:topLevelTermOf    ex:TermSetA   .
```

#### sharepoint-taxonomy:inTermSet

This is used to map a term to a TermSet. A term can only exist in a single TermSet. This property is required when defining a term.

### TermGroup

#### sharepoint-taxonomy:inTermGroup

A TermSet must exist within a TermGroup.

### Required labels

#### sharepoint-taxonomy:defaultLabel

This is the default lexical label for a term. This is a required parameter for a Term. It is used while visually representing the term.

The syntax to define a defaultLabel is:

```SKOS
ex:TermA    sharepoint-taxonomy:defaultLabel    “Term A”@en-us   .
```

The defaultLabel contains two parts to it – the String and the Language Tag. The language must be one of the term store Working Languages. The defaultLabel must be unique for all Terms in the same TermSet, at the same hierarchical level.

#### sharepoint-taxonomy:termSetName

This the default lexical label for a TermSet, in the default language of the term store. This is a required parameter for a TermSet. It is used while visually representing a TermSet.

The syntax to define a termSetName is:

```SKOS
ex:TermA    sharepoint-taxonomy:TermSetName    “Term Set A”@en-us   .
```

#### sharepoint-taxonomy:propertyName

This is the lexical label for a sharepoint-taxonomy:SharedCustomPropertyForTerm, sharepoint-taxonomy:LocalCustomPropertyForTerm and sharepoint-taxonomy:CustomPropertyForTermSet. in a term store working language.

The sharepoint-taxonomy:propertyName is treated as the key of the CustomProperty.

The syntax to define a propetyName is:

```SKOS
ex:SharedCustomProperty1    sharepoint-taxonomy:propertyName    “Shared Custom Property Key 1”@en-us   .
```

### Optional Labels

#### sharepoint-taxonomy:otherLabel

This is the alternate lexical label for a term. 

The syntax to define a otherLabel is:

```SKOS
ex:TermA    sharepoint-taxonomy:otherLabel    “Term A”@en-us   .
```

### Semantic Relationships

#### sharepoint-taxonomy:parent

This hierarchically relates a term to a another term. A term could be a top level term of a TermSet, but in case it doesn’t it must have a parent term. 
The syntax to define a parent is  –

```SKOS
ex:TermA1    sharepoint-taxonomy:parent    ex:TermA.
```

This means that TermA1 has parent TermA. Inversely it also means that TermA1 is the child of TermA. Parent-child relationship is an inversible relationship.

#### sharepoint-taxonomy:child

This hierarchically relates a term to a another term.

The syntax to define a child is  –

```SKOS
ex:TermA    sharepoint-taxonomy:child    ex:TermA1.
```

This means that TermA has child TermA1. Inversely it also means that TermA is the parent of TermA1. Parent-child relationship is an inversible relationship.

### Documentary Notes

#### sharepoint-taxonomy:description

This is a detailed explanation of any SharePoint Taxonomy vocabulary entity. 

The syntax to add a description is:

```SKOS
ex:TermA    sharepoint-taxonomy:description    “Term A is the top level term of TermSetA”@en-us.
```

### CustomProperties

Custom Properties are key-values pairs that can be defined for a Term or a TermSet, to further the description of the Term or a TermSet. The key of the custom property is specified with the help of propertyName.

#### sharepoint-taxonomy:CustomPropertyForTermSet

The syntax to define this is –

```SKOS
ex:CustomProp1    rdf:type    sharepoint-taxonomy:CustomPropertyForTermSet|;
|sharepoint-taxonomy:propertyName “Colour”   .

ex:TermSetA    ex:CustomProp1    “Red”@en-us   .
```

#### sharepoint-taxonomy:SharedCustomPropertyForTerm

If the custom property for a Term is such that it needs to be carried along with the Term when the Term is reused somewhere else, then it need to be defined under SharedCustomPropertyForTerm.

The syntax to define this is:


``` SKOS
ex:CustomProp2    rdf:type sharepoint-taxonomy:SharedCustomPropertyForTerm    ;
sharepoint-taxonomy:propertyName “Length”   .

ex:TermA    ex:CustomProp2    “5 cm”@en-us   .
```

#### sharepoint-taxonomy:LocalCustomPropertyForTerm

If the custom property for a Term is such that it does not need to be carried along with the Term when the Term is reused somewhere else, then it need to be defined under LocalCustomPropertyForTerm.

The syntax to define this is:

```SKOS
ex:CustomProp3    rdf:type sharepoint-taxonomy:LocalCustomPropertyForTerm|;
|sharepoint-taxonomy:propertyName “width”   .

ex:TermA    ex:CustomProp3    “5 cm”@en-us   .
```

### Data Properties

#### sharepoint-taxonomy:isAvailableForTagging

This is to specify if a Term or a TermSet will be available in the SharePoint Lists and ||Libraries.  

The syntax for this is:

```SKOS
ex:TermA    sharepoint-taxonomy:isAvailableForTagging     "true"^^xsd:Boolean |;
```

## Domain and range of SharePoint taxonomy vocabulary

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

SKOS valid scenarios that SharePoint taxonomy does not allow:

1. Hierarchical Redundancy - A SKOS concept can be attached to several broader concepts at the same time, but a sharepoint-taxonomy:Term can have only one sharepoint-taxonomy:parent, hence cyclic dependency, of Terms is also not allowed.
2. Orphaned Terms are not allowed in SharePoint Taxonomy. Every sharepoint-taxonomy:Term should either have a sharepoint-taxonomy:parent or it should be the sharepoint-taxonomy:topLevelTermOf a TermSet.
3. SharePoint Taxonomy does not support associative relations.
4. SharePoint Taxonomy only allows 2 types of Hierarchical relations – sharepoint-taxonomy:parent and sharepoint-Taxonomy:child. Unlike SKOS the hierarchical relationship in SharePoint Taxonomy Vocabulary, can only be established with Terms within the same TermSet.

## See also

[Import a term set using a SKOS-based format](import-term-set-skos.md)

