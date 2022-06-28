Actions
-------

The different actions that are available on an object depend on the permissions assigned in user profile. 

Likewise, some actions in the tab depend on profile permission, such as mass actions.

This page describes only main actions that can apply to different types of objects. If an action is specific to an object, it will be described in the documentation of this object.

.. _action-add:

Creation
^^^^^^^^

The permission to create an object depend on defined permission in user profile.

For all inventory objects, creation is realized in the same way:

#.  Connect to GLPI ;
#.  Go to the object page, for example `Assets > Computers` to add a computer ;
#.  Click on the "+" button located in horizontal menu ;
#.  If the inventory object has a template management, choose the template to be applied ; 
#.  Fill in the different fields of the empty form ;
#.  Validate.

An option located in user preferences, *After creation, go to created element*, allows to choose, after creating an object, if the newly created object is displayed or if a new empty form is displayed in order to create another object.

Modification
^^^^^^^^^^^^

The permission to modify an object depend on defined permission in user profile.

For all inventory objects, creation is realized in the same way:

#.  Connect to GLPI ;
#.  Go to the object page, for example, to modify a computer, go to `Assets > Computers` ;
#.  Or alternatively: search the object in the search engine available on top of objects list ;
#.  Two choices of modification are then possible:

   * Unitary modification:

      #.  Click on object name ;
      #.  Modify fields ;
      #.  Click on button **Update**.

   * Mass modification:

      #.  Select the checkbox located on the left of the object name ;
      #.  Click on button **Actions** ;
      #.  Choose field to be modified ;
      #.  Enter new field value ;
      #.  Click on button **Post**.

Display
^^^^^^^

The permission to display an object depend on `read` permission in user profile.

If the permission to display an object is not granted, the name of this object will not appear in GLPI different menus. For example, if the permission to read a `Computer` type object is not granted in the user's profile, the sub-menu `Computer` will not appear in menu `Assets`, even if the permission to modify a `Computer` is granted.

For all inventory objects, displaying an object is realized in the same way:

#. Connect to GLPI ;
#. Go to the object page, for example, to display a computer, go to `Assets > Computers` ;
#. Or alternatively: search the object in the search engine available on top of objects list ;
#. Click on object name..


Attaching a document
^^^^^^^^^^^^^^^^^^^^

When available for the item type, attaching a document is realized in the same way:

#. Connect to GLPI ;
#. Go to the object menu, for example, to attach to a computer, go to `Assets > Computers` ;
#. Or alternatively: search the object in the search engine available on top of objects list ;

Two possibilities are available:

- Unitary attachment :

   #. Click on the object name ;
   #. Select tab **Documents** ;
   #. Select a document or click button **Choose** to add a new document ;
   #. Click on button **Add**.

- Mass attachment :

   #. Select the checkbox located on the left of the object name ;
   #. Click on button **Actions** and choose **Add a Document**

GLPI will then display the object form with newly attached document.


Attaching a contract
^^^^^^^^^^^^^^^^^^^^

When available for the item type, attaching a contract is realized in the same way:

#. Connect to GLPI ;
#. Go to the object menu, for example, to attach to a computer, go to `Assets > Computers` ;
#. Or alternatively: search the object in the search engine available on top of objects list ;

Two possibilities are available:

- Unitary attachment :

   #. Click on the object name ;
   #. Select tab **Contracts** ;
   #. Select a contract ;
   #. Click on button **Add**.

- Mass attachment :

   #. Select the checkbox located on the left of the object name ;
   #. Click on button **Actions** and choose **Add a Contract**

GLPI will then display the object form with newly attached contract.


Transfer between entities
^^^^^^^^^^^^^^^^^^^^^^^^^

Entities open the possibility to define transfer profiles in order to move elements between entities. This allows in particular to switch from a single entity GLPI to a GLPI with multiple entities.

To make a transfer, it is first necessary to check that the used profile has permission to make transfers (`Administration > Profiles > Administration --> Transfer read permission`).

.. ??? must check: correct name of the permission

In order to make a transfer:

#. Configure the actions performed by the transfer :doc:`Administration Rules Transfer </modules/administration/rules/rulesmanagement>` ;
#. Check that profile performing transfer has permission on the origin entity and on the destination entity (simplest solution is to use a recursive profile from root entity) ;
#. Go to root entity (`See all`) ;
#. From objects list, select the element to be transferred ;
#. Choose **Add to transfer list** then **Validate** ;
#. In **Transfer mode**, select a transfer configuration profile that has been created at step 2 ;
#. Select destination entity, where object will be transferred to ;
#. Click on **Transfer** ;
#. Check in destination entity that object is effectively there.

.. note::

   If a linked element does not exist in destination entity, it will be automatically created if transfer profile asks to keep it.


   Example : transfer of a `Computer` with a provider defined in accounting informations: if this provider exists only in origin entity, it will be created in destination entity; however, a provider defined in root entity with recursivity enable will not be recreated.

.. warning::

   Location and group must be updated for destination entity.


Deletion
^^^^^^^^

The permission to delete an object depend on `delete` permission in user profile.

For all inventory objects, deleting an object is realized in the same way:

#. Connect to GLPI ;
#. Go to the object page, for example, to delete a computer, go to `Assets > Computers` ;
#. Or alternatively: search the object in the search engine available on top of objects list ;
#. Two choices of deletion are then possible:

   * Unitary deletion:

      #. Click on object name ;
      #. Click on button **Delete** ;

   * Mass deletion:

     #. Select the checkbox located on the left of the object name ;
     #. Click on button **Actions** ;

In both cases, a choice will have to be made between:

* *Move to trash bin* if object has an associated trash bin. In this case, object may be restored later on ;
* *Delete permanently* if object does not have an associated trash bin. In this case, GLPI will ask for confirmation before real deletion of the object in the database.
