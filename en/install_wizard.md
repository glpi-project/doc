Use the installation wizard
===========================

Use the GLPI online installation wizard

To begin the installation, point the browser on the root folder of GLPI
: [http://<GLPI \_ADDRESS\>](http://<ADRESSE_GLPI>).

When you first connect to this address, a procedure step-by-step starts.

Choice of language (Select your language)
-----------------------------------------

The first step is to choose the language in which the installation takes
place. To install in "English", select **English** then validate.

License
-------

The use of GLPI is subject to acceptance of the license GNU General
Public License. This license is proposed for reading. Once the license
is read and accepted, submit the form. If this is not the case, is
impossible to access the following steps.

Start the installation: Installation or update GLPI
---------------------------------------------------

Clien on **Installation**.

Step 0 : Verify compatibility with your environment running GLPI
----------------------------------------------------------------

This step will verify that the system meets the prerequisites for
installation. If this is not the case, it is impossible access
additional steps and an explicit error message indicates the action to
be taken before attempting to again. If all the checks have been
successfully completed, submit the form.

Step 1 : Configure the connection to the database
-------------------------------------------------

Connection settings to the database are required.

-   **MySQL Server** : Enter the network path to access the server, for
    example : *localhost*, or *mysql.domain.com*
-   **MySQL User** : Enter the user name with the right to connect to
    MySQL server
-   **MySQL Password** : Enter the password associated with the user
    defined above

Once these three fields are correctly filled out, submit the form. If
the parameters are invalid, a error message is displayed and you must
change the connection settings and try again.

Step 2: Create or choose the database and initialize it
-------------------------------------------------------

Once the server connection is established, it must create or select the
database designed to accommodate the application data and then
initialize GLPI.

Two possibilities :

-   Base to accommodate the data using existing GLPI instance :

    Select the database in the list of databases displayed. OK to
    initialize the database.

    CAUTION:

    The contents of the selected database will be destroyed upon
    initialization.

-   To create a new database to hold the GLPI data :

    Select **Create a new database**. Enter the name of the new database
    in the text field provided for this purpose. Select OK to create the
    database.

    Important: This step requires the user to have the necessary rights
    to create a new database.

Step 3 : Initialization of the database
---------------------------------------

This step initializes the database with default values. If an error
occurs, read the information.

Step 4 : The installation of GLPI is now finished
-------------------------------------------------

This step provides a summary of the installation procedure and lists the
user accounts created. Read this information carefully and click submit
to make the first connection to the application.

Tip: Default users accounts are :

*glpi/glpi* for the administrator account

*tech/tech* for the technician account

*normal/normal* for the normal user

*post-only/postonly* for the post-only user

Attention: Of course one must then delete or change these default
accounts for obvious reasons of security. Be sure before deleting the
accounts to create a new glpi user using the super-admin profile.

**Parent topic:** [Install the GLPI
application](../glpi/install.html "Installation of GLPI")
