Assets Tab
==========

The assets tab allows you to set general parameters for the inventory
part of the application.

Interfacing with an inventory tool enables automated inventory of
equipment. This interface is possible via a plugin.

When creating a template, you can add fields automatically generated
from a model (i.e. the name of the equipment, inventory number). The
increment values of these fields is done either by individual entity or
as a whole.

It is possible to automatically change the software category deleted by
the dictionary. By default they are moved automatically in the category
**FUSION**.

GLPI can also transfer a computer in another entity if one of the
criteria used for the assignment to a entity is changed. If the option
**Rules for assigning a computer to an entity** indicates an existing
model, at each update a computer the OCSNG rules of assignment of
entities engine will be replayed. If the resulting entity is different
from the entity of the computer, it will be transferred.

The start date of the fiscal year used in the management is configured
here.

When manually creating a computer, it is asked to the user to choose the
type of management (unit or global) of the latter. Subsequently, a
hardware managed unit can pass under the mode of global management. It
is possible to restrict the type of management according to the
computer.

When connecting directly to a computer an item managed as a unit, it is
possible to assign information retrieved from the computer. When
disconnecting, you can delete this information. These features are not
enabled by default.

**Parent topic:** [Configurer les paramètres
centraux](../glpi/config_common.html "Les paramètres centraux se configurent depuis le menu Configuration > Générale")
