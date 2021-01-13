Gérer la file d'attente d'envoi de courriels
============================================

L'ensemble des courriels de notification passent par une file d'attente
avant expédition réelle. Celle-ci permet une historisation et une vision
des différents courriels envoyés.

Une action automatique (queuedmail) permet l'expédition des couriels en
attentes (voir `Configurer les actions
automatiques <config_crontask.html>`__). Une autre (queuemailclean)
permet de nettoyer la file d'attente en ne conservant que les courriels
récents.

Pour chaque entité vous pouvez définir le délai appliqué pour l'envoi
des notifications (voir `l'administration par
entité <07_Module_Administration/04_Entités.rst>`__). Celui-ci permet par
exemple dans le cas de modifications multiples rapides d'un objet de
n'envoyer qu'une notification.

    Attention : l'utilisation de la file d'attente ne fonctionne pas
    pour un changement, un problème ou un ticket en lui-même mais
    uniquement pour un sous-objet. Exemple : Lors de la modification de
    l'impact d'un ticket, le courriel sera envoyé immédiatement. Par
    contre, en cas d'ajout ou de modification d'un suivi, d'une tâche,
    d'une demande de validation... le courriel sera placé dans la file
    d'attente.

Figure 1. Exemple de file d'attente |image| Dans l'exemple ci-dessus, le
délai pour envoyer des notifications par courriel a été fixé à 20mn dans
la configuration de mon entité. Donc on voit bien que la date d'envoi
est fixée à 20mn après la date de création.

Une fois la notification expédiée, la file d'attente est positionnée
dans la corbeille avec remplissage de la date d'envoi.

***Remarque :** vous aurez dans la corbeille autant de files d'attente
que de destinataires, chacune ayant sa propre date d'envoi*.

--------------

**Sujet parent :** `Module
Administration <07_Module_Administration/01_Module_Administration.rst>`__.

.. |image| image:: /image/mailqueue.png

