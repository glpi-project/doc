Create custom palettes
----------------------

Custom palettes (or themes) are supported starting with GLPI 11.0.
They are SCSS files which contain CSS rules and they may be used in the same manner as the built-in palettes.

Custom palettes must be placed in the `files/_themes` folder inside your GLPI installation or the location determined by the `GLPI_VAR_DIR` or `GLPI_THEMES_DIR` configuration options if you overrode them.

All palette files are loaded at all times. This allows the instant preview when switching the palette selection in the user preferences and also makes debugging easier.
Because of this, the CSS rules inside palettes must be restricted using the `:root[data-glpi-theme='mycustompalette']` selector (where *mycustompalette* is the name of the file and therefore the palette).

Custom palettes should also attempt to restrict themselves to changing only the CSS variables that are prefixed with `--tblr` or `--glpi`.
This helps keep the styling of GLPI uniform. However, you are free to make fine-tuned adjustments by changing CSS properties on specific elements as well.

Custom palettes may define a "swatch" preview which are typically four colors which represent the palette and display in the dropdown list next to the palette name.
This can be achieved in two ways.

1. The recommended option is to add `--glpi-palette-color-n` CSS variables to the root of the palette CSS for all four colors. These variables must be statically set to colors and cannot be calculated or based on other CSS properties.
2. The other option is to create a "mycustompalette.png" image inside a "previews" folder in the location you placed your custom palette CSS. These preview images should be 60 by 20 pixels to ensure they are displayed properly.

Example:

.. code-block:: scss

    :root[data-glpi-theme="mycustompalette"] {
        --tblr-primary-rgb: 142, 197, 71;
        --tblr-secondary: #768363;
        --tblr-secondary-fg: #fcfcfc;
        --tblr-link-color-rgb: 69, 148, 54;
        --glpi-mainmenu-bg: #459436;
        --glpi-mainmenu-fg: #f4f6fa;
        --glpi-palette-color-1: #768363;
        --glpi-palette-color-2: #459436;
        --glpi-palette-color-3: #fcfcfc;
        --glpi-palette-color-4: #f4f6fa;
    }

All palettes are considered an extension of the base palette which is `Auror`.

If you want your custom palette to be considered a dark palette, you will also need to include `$is-dark: true;` somewhere inside the palette file.
Unlike the CSS rules, this SCSS variable does not need to be set within a `:root[data-glpi-theme]` selector as GLPI will only check if it exists somewhere in the file during loading and tag the palette as a dark one if it is found.
When a palette is considered dark, an additional `data-glpi-theme-dark` attribute on the root HTML element is set to '1'.
This will automatically include some CSS rules to help make GLPI look correct.

Example:

.. code-block:: scss

    $is-dark: true;
    :root[data-glpi-theme="mydarkpalette"] {
        --tblr-primary-rgb: 142, 197, 71;
        --tblr-secondary: #768363;
        --tblr-secondary-fg: #fcfcfc;
        --tblr-link-color-rgb: 69, 148, 54;
        --glpi-mainmenu-bg: #459436;
        --glpi-mainmenu-fg: #f4f6fa;
        --glpi-palette-color-1: #768363;
        --glpi-palette-color-2: #459436;
        --glpi-palette-color-3: #fcfcfc;
        --glpi-palette-color-4: #f4f6fa;
    }
