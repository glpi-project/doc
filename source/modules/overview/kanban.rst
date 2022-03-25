Kanban
======

The Kanban is a view to display Projects, Tickets, Changes or Problems on a task board.

For Projects, you can view a global Kanban involving all current Projects and Project Tasks or view a Kanban for a specific Project and its child Projects and tasks.

For Tickets, Changes, and Problems, only a global Kanban is available and is specific to each type (you cannot view tickets and changes on the same Kanban).
For the sake of berevity, the Kanban for Tickets, Changes and Problems is refered to as the *ITIL Kanban* in the rest of this document.

Currently, the columns of the Kanban represent the status of the items.
Each item is represented by a card inside the columns.

For Projects, you can add new statuses directly from the Kanban since those are configurable.
The Project Kanban has a special column for "No status" that is always shown and cannot be changed.

For the ITIL Kanban, you can only choose to show or hide the different statuses since they are not configurable.
The ITIL Kanban also has a limitation placed on the "Closed" status column due to the number of items that would show there.
You can drag cards into this column to update their status, but they will not be displayed here.

Cards
-----

Each card on the Kanban shows some basic information including:
- The name of the item which is shown as the card's titles
- The progress of sub-tasks (Project tasks and child projects for Project Kanban and child tickets for Ticket Kanban)
- If the item is a milestone (Project Kanban)
- The team for the item shown

Hovering over the title of a Kanban card will show a preview of the item's content/description.

Each card also has a "..." menu which includes:
- Goto: Navigates to the item's full form
- Delete: Delete the item (this actually deletes the item and doesn't just remove it from the Kanban)

Clicking on the card's title will display a flyout panel which displays some of the same information as the card itself but also includes:
- A read-only view of the item's content
- A full list of the item's team along with the ability to add and remove team members directly without having to go to the item's full form

Team management
---------------

In GLPI, there are multiple notions of a "Team".

For Tickets, Changes, and Problems you have requesters, observers, and assignees.
For Projects and Project tasks you have a simple "team" (assigned in the team tab) along with managers (assigned on the main form).

.. note::
    The Kanban team management feature does not currently allow changing managers from the Project Kanban

The Kanban presents these different notions as a simple "Team" where each member has a specific role and shows them all in a centralized list.

Team members can be added or removed from a card's panel view which can be accessed by clicking on the card's title.

When adding a team member, you will be asked to select a role and then the type of member (user, group, etc), and then a specific member.

Searching and Filtering
-----------------------

The Kanban has a search and filter system that lets you filter which items are shown on the Kanban.

Regular searches can be done by simply typing one or more search terms into the search box.

When you click in the search box, a suggestion tooltop will be displayed that shows a list of the available filter *tags*.
There are different tags depending on which Kanban you are using and new tags can be added by plugins.

Some of these tags incluse:
- title: The name or title of the item
- type: The type of the item (On the Project Kanban you can use this to filter Projects or Project tasks)
- content: The content of the item
- team: The team of the item (searches regardless of the member type)

Each suggested tag may have zero or more buttons with an icon or character in them which represent different modifiers for the filter.

The common modifiers:
- !: Represents a negation or exclusion
- #: Represents a regular expression

As you type, the list of suggested tags will be adjusted to match what you have typed.
You can manually add a filter by typing it out such as:
`title:this` or `!title:notthis`
You can also select the tag or modifier from the list of suggestions using your mouse (or touch) or using the keyboard arrow keys to navigate and the enter key to select.
If you select a tag or modifier from the suggestion list, it will add it to the search box in *edit* mode which lets you add the term.

Each filter is represented in the search box with a colored background based on its type or modifier.
For example, exclusions are red, regular expressions are green, regular tags are blue and untagged searches (regular search) are black.

To initiate the search, you will need to press the enter key on your keyboard or click/touch outside of the search box.

You can edit a search term by clicking on it or by navigating using the arrow keys and then pressing backspace when the cursor is placed to the right of the term.

You can remove a term by removing the entire content including the tag portion or by clicking the "x" button in the term.