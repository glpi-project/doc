# GLPI user documentation

__Documentation is being rewrited... Some parts may be really out of date, some links can be broken, ...__

Current documentation is built on top of [Sphinx documentation generator](http://sphinx-doc.org/). 

Documentation is released under the terms of the Creative Commons License Attribution-ShareAlike 3.0 France [CC BY-SA 3.0 FR](https://creativecommons.org/licenses/by-sa/3.0/fr/deed.en).

## View it online!

[GLPI users documentation is currently visible on ReadTheDocs](http://glpi-user-documentation.rtfd.io/).

## Generate it locally

> Note that you don't need to generate the documentation on your host, to push to this repository, only source files are versioned. 
> Live preview is enough to check your modifications and submit them. (see below).

You'll have to install [Python Sphinx](http://sphinx-doc.org/) 1.3 minimum, and Python Markdown module (`recommonmark`) (until rewrite to restructured text will be complete).

If your distribution does not provide this version, you could use a `virtualenv`:
```
virtualenv /path/to/virtualenv/files
/path/to/virtualenv/bin/activate
pip install -r requirements.txt
```

Once all has been successfully installed, just run the following to build the documentation:
```
make html
```

Results will be available in the `build/html` directory :)

Note that it actually uses the default theme, which differs locally and on _readthedocs_ system.

## Autobuild - Livehtml

### Docker

Just run `docker compose up`, live preview running.

### Local run

Autobuild automatically rebuild and refresh the current page on edit.
To use it, you need the `sphinx-autobuild` module:
```
pip install sphinx-autobuild
```

You can then use the `livehtml` command:
```
make livehtml
```

## Translations...

Join the project on [Transifex](https://www.transifex.com/glpi/glpi-user-documentation/).

<a rel="license" href="http://creativecommons.org/licenses/by-sa/3.0/fr/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/3.0/fr/80x15.png" /></a>
