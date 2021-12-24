Management
==========

The only configuration parameter available on this page is the size limit for uploaded documents.

.. note::

    If the `upload_max_filesize` PHP directive is lower than what is set here, then `upload_max_filesize` will be the limiting factor.
    You may also need to ensure the `post_max_size` directive is set at least a little above `upload_max_filesize`.