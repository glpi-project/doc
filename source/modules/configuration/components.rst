Components
==========

The hardware components that can be added to computers are configurable.

A hardware component is defined by a type, a name, a manufacturer, a comment, and several fields specific to the type of component.
For example, for a system board, you can enter the chipset.

.. image:: images/component_dropdown.png
   :alt: List of component types
   :scale: 38%

.. note::
   It is possible to fill in other component types inside the *Other Components* type.
   However, it is not possible to add other types than those listed here.

Once a component type has been selected (*Motherboard*, *Processor*...), you are redirected to the list of components already created.

.. image:: images/component_list.png
   :alt: List of components
   :scale: 38%



Main
----

Information that defines a hardware component (different information depending on the type of component).

Example for a Processor:

.. image:: images/component_details.png
   :alt: Processor component details
   :scale: 38%

Items
-----

The elements tab allows to visualize the computers linked to the component.

.. image:: images/component_elements.png
   :alt: Component associated items
   :scale: 38%

.. note::

   -  **It is possible to modify the characteristics of a component only for the linked item**

      From the *Elements* tab of the component, click on the **Update** link.

      Several tabs are then proposed:

      *  `Element - Component name link tab`: lists the characteristics of this component
      *  :doc:`Management tab <../tabs/management>`: manage financial and administrative information
      *  :doc:`Documents tab <../tabs/documents>`
      *  :doc:`Locks tab </modules/assets/tabs/locks>`
      *  :doc:`Historical tab <../tabs/historical>`
      *  :doc:`Contracts tab <../tabs/contacts>`
      *  :doc:`All tab <../tabs/all>`: for an item, all information is displayed on a page

   .. image:: images/component_update.png
      :alt: Processor component updating
      :align: center
      :scale: 40%

Projects
--------

This tab allows you to view the projects associated with the component.
From this tab, you can add existing projects, but you cannot create new ones.

.. image:: images/component_projects.png
   :alt: Component associated projects
   :scale: 38%


* To link or unlink a project, go to :doc:`link or unlink a project </tabs/projects>`
* To create a new project, go to :doc:`manage projects </modules/tools/projects>`


.. include:: ../tabs/documents.rst

.. include:: ../tabs/historical.rst

.. include:: ../tabs/all.rst
