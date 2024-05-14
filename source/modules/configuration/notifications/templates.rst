Notification templates
======================

A template is a global object of GLPI that defines the information included in a notification and the formatting of the information.

The creation of a template is a complex operation, which impacts the users.
Therefore, templates can only be modified by Administrators with the *Update* permission for the *Config* right.
Moreover, a template is not linked to an entity, which means that it is not possible to delegate its management to an administrator of a sub-entity.

A template reflects a communication to a user and can be available in several languages thanks to a translation mechanism.
The use of tags (i.e. markers that are independent of the language used) makes it possible to create a generic translation, available for all the languages of GLPI.

GLPI comes with a set of pre-defined templates for all notifications (tickets, reservations, financial information, cartridges, consumables, licenses, MySQL synchronization...).


Parameters
----------

Notification template
~~~~~~~~~~~~~~~~~~~~~

First tab.

- **Name**: Template name
- **Type**: Type of GLPI object to which the template relates
- **Comments**: (optional) Additional information
- **CSS**: (optional) Style sheet used for the template in HTML

.. note::
   Templates are global, they are not defined at the entity level, as notifications.


Template translation
~~~~~~~~~~~~~~~~~~~~

Tab that lists the different notifications defined by language and allows adding a new language.

- **Language**: Indicates the language to which this translation refers. If no language is selected in the drop-down list, this translation will be the default for this template.
- **Subject**: Subject of the mail.
- **Email text body**: Plain text without layout, used in cases where HTML is not allowed. If the field is empty, then it is generated from the HTML body text.
- **Email HTML body**: Text with HTML layout.

.. note::
   A default translation is applicable to all GLPI languages that do not have their own translation.


Tags
~~~~

The tags allow to display data of the notification trigger object. **e.g.**: in a ticket you can retrieve its title, description, actors...

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
