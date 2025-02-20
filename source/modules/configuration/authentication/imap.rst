Authenticate from IMAP
======================

The interfacing of GLPI with mail servers as a source of authentication.

This authentication source is configured from the menu `Setup > Authentication > Mail servers`.

This ability can compensate for the absence of directory or of CAS server.
However, contrary to what is possible with other sources of other authentication sources, no mass import is available.
A user is authenticated by GLPI if the server of mail server has authenticated him beforehand.

The connection to the mail server uses the IMAP or POP protocols.
The options of SSL and TLS encryption are available.
The distinction is made between the mail domain which is the part of the of the mail address that follows the asterisk character, and the fully qualified name of the mail server, which can serve several mail domains.