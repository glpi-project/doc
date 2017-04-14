Gérer son mot de passe
======================

Le formulaire de changement de mot de passe se trouve dans les :doc:`préférences de l'utilisateur <preferences>`.

Il est nécessaire de saisir et de confirmer son mot de passe avant validation. L'administrateur peut :ref:`désactiver cette fonctionnalité <administration-profils>`, la zone de modification du mot de passe n'apparaît donc pas dans ce cas.

Dans le cas où l'utilisateur a perdu son mot de passe, la possibilité de le réinitialiser lui est proposé depuis la page de connexion. Le lien n'est présent que si les :ref:`notifications sont activées <administration-notifications>`.

Seuls les utilisateurs disposant d'une adresse de messagerie définie dans GLPI et ne s'authentifiant pas via une source externe (LDAP, serveur de messagerie...) peuvent utiliser cette fonctionnalité. Une fois la demande de renouvellement effectuée en saisissant son adresse de messagerie, l'utilisateur reçoit un courriel lui fournissant un lien permettant de réinitialiser son mot de passe.

Les mots de passe doivent suivre :ref:`la politique de sécurité définie <administration-mot-de-passe>`. Un contrôle en temps réel du mot de passe saisi est alors effectué.
