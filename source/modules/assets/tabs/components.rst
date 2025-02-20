Components
~~~~~~~~~~

This tab, named `Components` and visible in a `Computer` entry, allows to manage the hardware components of a computer.

.. image:: /modules/assets/images/component.png
   :alt: Components screen
   :align: center

.. note::

   Adding or managing components is located in menu :doc:`Setup > Components </modules/configuration/components>`.

.. note::
   If several components of the same type are used, they will be grouped in the view.

   .. image:: /modules/assets/images/component_group.png
      :alt: Grouped components
      :align: center

It is possible to add a component by first selecting its family in the drop-down list at the top of the table and then its name and the number of components to add.

.. image:: /modules/assets/images/component_add.png
   :alt: Adding a component
   :align: center


Starting from a computer view, it is possible to modify a component by clicking on the link under its name.

.. image:: /modules/assets/images/component_update.png
   :alt: Modify a component
   :align: center

To act on several components (for example modify an element of the
component, activate accounting information or modify them, delete a
component...), first select the components and then use the `Actions`
button present at the top or the bottom of the list.

If several types of different components, not having the same
characteristics, are selected for modification, in the actions it will
be asked on which component modification must be applied.

.. image:: /modules/assets/images/component_computer_massives_actions.png
   :alt: Mass actions on a component
   :align: center


Selection button in left column allows to select all the components at once.

.. image:: /modules/assets/images/component_select_group_left.png
   :alt: Component selection (left)
   :align: center

Selection at right of type column (grayed line) allows to select all components of the same type (processor, memory, network interface...).

.. image:: /modules/assets/images/component_select_group_right.png
   :alt: Component selection (right)
   :align: center


.. note::

   It is possible to modify the characteristics of a component only for one computer

      From tab *Elements* of the component, click on the link **Update**.

      .. image:: /modules/assets/images/component_update_link.png
         :alt: Modify a component
         :align: center

      Several tabs are then displayed:

      *  Tab "Element - Link name of component" : list the characteristics of this component
      *  :doc:`Tab "Management" </modules/tabs/management>` : manage administrative and accounting information
      *  :doc:`Tab "Documents" </modules/tabs/documents>` : attached documents
      *  :doc:`Tab "History" </modules/tabs/historical>` : history of modifications
      *  :doc:`Tab "Contract" </modules/tabs/contracts>` : contracts management
      *  :doc:`Tab "Debug" </modules/tabs/debug>` : only if you are connected in Debug mode
      *  :doc:`Tab "All" </modules/tabs/all>` : all the information are displayed on a single page

.. note::

   Every deletion or addition of a component is recorded in the history of the computer.

.. note::

   If using native inventory or third-party inventory tool, the components information can be automatically imported and updated.
