Managing plannings
==================

Planning view allows to display planned tasks attached to a ticket, a problem or a change as well as planned notes or plugins' planned elements.

This menu is only visible if profile includes `View planning` authorization.

Date and time slot can be selected. A filtering on objects to include in planning is also available.

Four views are available, depending upon user authorizations:

* Personal view : includes only the elements of the connected user;
* Group view: includes only the elements of the connected user's group, needs *See planning of group's persons* authorization;
* Users view: includes the planning of a particular user, needs *See all plannings* authorization;
* Groups: includes the planning of a particular group, needs *See all plannings* authorization;

This information can be exported in two formats:

* Ical, in order to integrate planning in third-party tool calendar;
* Webcal, which allows to subscribe a third-party calendar to GLPI planning.

.. note::

   * Access to Ical and Webcall feed is protected by a security key integrated into the URL. It is possible to regenerate this key in menu `Preferences`. See :doc:`Manage preferences </first-steps/preferences>`.

   * User's planning can be displayed on home page if profile has authorization *See my personal planning*. However, it is not possible to add an element to a planning from this interface; it is mandatory to plan a task or a note so that planning fills up.
