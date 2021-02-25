.. not included in any toctree, but "included" with link

:orphan:

Rules for assigning a ticket opened via a mail collector
--------------------------------------------------------

GLPI implements a mechanism for routing tickets opened by email, in order to create them in the right entity. This is based on the rules engine.

.. note:: if notifications are not enabled in the configuration, the menu does not appear in **Rules**.

Available criteria are:

* name of mail collector
* requester
* email domain, whether it is known or not
* email headers: ``auto_submitted``, ``from``, ``in_reply_to``, ``received``, ``subject``, ``to``, ``X-Auto-Response-Suppress``, ``X-priority``, ``X-UCE-Status``
* email body.

Finally, there is a third type of criteria which operates on data specific to the user or to the configuration of the entities:

* **known email domain**: checks that the email domain of the email sent corresponds to a domain entered in an entity. This criterion makes it possible to eliminate, for example, all spam, i.e. messages not coming from authorized domains
* **user: group**: checks that the GLPI user associated with the sender's e-mail address belongs to a given group;
* **user with profile**: the user has a given profile;
* **user with single profile**: the user has one and only one profile in GLPI. If the profile is associated with several different entities, then the one that is defined as the default entity in the user's personalization options will be the entity of the ticket. If none is defined in the preferences, the rule does not match
* **user with the profile only once**: the user has a given profile only once: it does not have the profile assigned on several separate entities.

The actions are either the refusal of the ticket (with or without notification of the refusal to the issuer), or the import into an entity (manual, from TAG, from mail domain, from user profile).

.. warning:: The engine stops at the first matching rule.

.. todo:: find a correct way to format the example

::

    Un exemple d'utilisation du moteur est le suivant :

    1.  règle refusant les courriels dont le domaine de messagerie est inconnu (non prise en compte des spams) ;
    2.  règle refusant les messages des listes de diffusions ;
    3.  règles affectant les courriels si l'utilisateur n'a qu'un profil (cas des utilisateurs de l'interface simplifiée) ;
    4.  Règle affectant les courriels à une entité si l'utilisateur possède un profil particulier 
       (par exemple pour des super administrateurs, qui ont accès à toutes les entités, mais sont physiquement dans une entité en particulier).

