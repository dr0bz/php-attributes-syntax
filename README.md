# PHP Attributes Syntax

This syntax file adds highlighting instructions for PHP 8 attributes. I wrote this as an addition to
the official vim php syntax which lacks this syntax.

## Installation

Either copy the file keeping the directory structure to your `.vim` home directory or use a plugin
manager.

Plug:
```
Plug 'dr0bz/php-attributes-syntax'
```

## Usage

This syntax will introduce few new groups and link them to standard vim sytnax groups:

|New Group|Linked To|
|:---------------------------|----------------|
|phpAttributeKeyword        |        Keyword  |
|phpAttributeClassKeyword   |        Keyword  |
|phpAttributeBoolean        |        Boolean  |
|phpAttributeNumber         |        Number   |
|phpAttributeConstant       |        Constan  |
|phpAttributeString         |        String   |
|phpAttributeNamedArgument  |        Normal   |
|phpAttributeFQDN           |        Normal   |
|phpAttributeInitClassName  |        Normal   |
|phpAttributeClassName      |        Normal   |
|phpAttributeBlock          |        Comment  |

You probably want colors that are less intrusive. Since attributes a written in the comment place.
You can just take your regular colors and make them darker. For ex. here is how my keywords are
looking: <span style="color: #cc7833">new</span>. To get it:

```
hi Keyword
```

Then use your color picker to make it a bit darker: <span style="color: #995924">new</span>. Do this
to all attribute groups mentioned above.

```
hi phpAttributeKeyword guifg=#995924
```

Good luck! And happy coding:)

