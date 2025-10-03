Certificates
============

Certificates management in GLPI allows to:

* Create an inventory of all organization certificates;
* Follow installation of certificates on assets;
* Include certificates in GLPI financial management;
* Anticipate and follow certificates renewal.

.. image:: images/certificates.png
   :alt: Main fields of a certificate
   :align: center
   :scale: 42 %

.. include:: ../tabs/templates.rst

List of basic fields
--------------------

* Name
* :doc:`Status </tabs/common_fields/status>`
* :doc:`Location </tabs/common_fields/location>`
* :doc:`Technician in charge </tabs/common_fields/technician_in_charge>`
* :doc:`Group in charge </tabs/common_fields/group_in_charge>`
* :doc:`Alternate usernmame number </tabs/common_fields/alternate_username>`
* :doc:`Serial number </tabs/common_fields/serial_number>`
* :doc:`Alternate usernmame </tabs/common_fields/alternate_user>`
* :doc:`Inventory number </tabs/common_fields/inventory_number>`
* :doc:`User </tabs/common_fields/user>`
* :doc:`Group </tabs/common_fields/group>`
* :doc:`Manufacturer </tabs/common_fields/manufacturer>`
* :doc:`Inventory number </tabs/common_fields/inventory_number>`
* :doc:`Comments </tabs/common_fields/comments>`


Description of specific fields
------------------------------

* **Manufacturer (Root CA)**: This drop-down list allows you to select the certificate manufacturer;
* **Certificate type** :
* **Self-signed**: Tells whether certificate is self-signed;
* **DNS name**: The prefix of the domain name associated with the certificate (for example, if domain name is `server.mycompany.com`, DNS name is `server`);
* **DNS suffix**: The suffix of the domain name associated with the certificate (for example, if domain name is `server.mycompany.com`, DNS suffix is `mycompany.com`);
* **Expiration date**: Expiration date of the certificate, useful to configure alerts and anticipate renewal;
* **Command used**: Can store the system command that generated the certificate;
* **Certificate Request (CSR)**: Can store the system command that generated the CSR file;
* **Certificate**: Can store the data contained in the CRT file (PEM).

The different tabs
------------------

Items
~~~~~

List of all other linked GLPI :doc:`Items </tabs/item>`. You can manually add an item by selecting it from the drop-down list.


Domains
~~~~~~~

:doc:`Domains </modules/management/domains>` represents an Internet domain, with its name, expiration date...
This object can itself be linked to other objects in GLPI support (tickets, problems, changes).

Management
~~~~~~~~~~

:doc:`Management </modules/tabs/management>` of financial and administrative information, this information is visible in the ‘Management’ tab on the object form.

Contracts
~~~~~~~~~

GLPI supports :doc:`contracts management </modules/management/contract>`, in order to manage contract types such as loan, maintenance, support…

Contracts management allows to:

* make an inventory of all contracts related to the organization assets
* integrate contracts in GLPI financial management
* anticipate and follow contract renewal.

Documents
~~~~~~~~~

The :doc:`document </modules/management/documents>` tab lets you link different types of file to a material (PDF, txt, png, etc.)
You can attach a document already uploaded to GLPI or add a new one directly from this tab.


Note
~~~~

The :doc:`Notes </modules/tabs/notes>` tab provides a free text field for storing additional information.
Notes are displayed in the order of their creation. You can also add a document

.. include:: ../tabs/historical.rst

.. include:: ../tabs/all.rst