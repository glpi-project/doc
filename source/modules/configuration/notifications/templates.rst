Notification templates
======================

This is where a notification is constructed, its content and layout.


Parameters
----------

Notification template
~~~~~~~~~~~~~~~~~~~~~

First tab.

- **Name**: template name
- **Type**: type of GLPI object to which the template relates
- **Comments**: (optionnal) additional information
- **CSS**: (optionnal) style sheet used for the template in HTML

.. note::
   Templates are global, they are not defined at the entity level, as notifications.


Template translation
~~~~~~~~~~~~~~~~~~~~

Tab that lists the different notifications defined by language and allows to add a new language.

- **Language**: indicates the language to which this translation refers. If no language is selected in the drop-down list, this translation will be the default for this template.
- **Subject**: subject of the mail
- **Email text body**: plain text without layout, used in cases where HTML is not allowed. If the field is empty then it is generated from the HTML body text.
- **Email HTML body**: text with HTML layout

.. note::
   A default translation is applicable to all GLPI languages that do not have their own translation.


Tags
~~~~

The tags allow to display data of the notification trigger object. **e.g.**: in a ticket you can retrieve its title, description, actors, ...

A tag is identified by **##** at the beginning and at the end.


There are several types of tags:

- **Simple**: ``##<object>.<field>##`` for the field value of a GLPI object
- **Label**: ``##lang.<object>.<field>##`` for the translated label of the object's field
- **Condition**: to test if a field has:

   - a value: ``##IF<object>.<field>##`` ... ``##ENDIF<object>.<field>##``
   - a value = <V>: ``##IF<object>.<field>=<V>##`` ... ``##ENDIF<object>.<field>##``

- **Loop**: to display sub-objects:

   - all <objects>: ``##FOREACH<objects>##`` ... ``##ENDFOREACH<objects>##``
   - first <N> <objects>: ``##FOREACH FIRST <N> <objects>##`` ... ``##ENDFOREACH<objects>##``
   - last <N> <objects>: ``##FOREACH LAST <N> <objects>##`` ... ``##ENDFOREACH<objects>##``

