# GLPI user documentation

__Documentation is being rewrited... Some parts may be really out of date, some links can be broken, ...__

Current documentation is built on top of [Sphinx documentation generator](http://sphinx-doc.org/). It is released under the terms of the <a rel="license" href="http://creativecommons.org/licenses/by-nc-nd/4.0/">Creative Commons BY-NC-ND 4.0 International License</a>.

## View it online!

[GLPI users documentation is currently visible on ReadTheDocs](http://glpi-user-documentation.rtfd.io/).

## Run it!

You'll have to install [Python Sphinx](http://sphinx-doc.org/) 1.3 minimum, and Python Markdown module (`recommonmark`) (until rewrite to restructured text will be complete).

If your distribution does not provide this version, you could use a `virtualenv`:
```
$ virtualenv /path/to/virtualenv/files
$ /path/to/virtualenv/bin/activate
$ pip install -r requirements.txt
```

Once all has been successfully installed, just run the following to build the documentation:
```
$ make html
```

Results will be avaiable in the `build/html` directory :)

Note that it actually uses the default theme, which differs locally and on readthedocs system.

## Autobuild

Autobuild automatically rebuild and refresh the current page on edit.
To use it, you need the `sphinx-autobuild` module:
```
$ pip install sphinx-autobuild
```

You can then use the `livehtml` command:
```
$ make livehtml
```


## Translations...

As you can read on top page statement; doc is currently being rewritted. It will be redacted in french; then translated to english. Once this has been done, we'll had the project on transifex to get multiple translations :)

<a rel="license" href="http://creativecommons.org/licenses/by-nc-nd/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-nd/4.0/80x15.png" /></a>
