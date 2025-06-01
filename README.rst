journalwatch
============

journalwatch is a tool which can find error messages in the systemd journal.

It is similar to tools like `logwatch <https://sourceforge.net/projects/logwatch/>`_
or `logcheck <https://logcheck.org/>`_ except it's much more KISS and only works
with the systemd `journal <https://0pointer.de/blog/projects/journalctl.html>`_.
It works by defining patterns to match all log lines which are not interesting,
and then prints all log lines not matching those patterns (or sends them by
mail).

When you start it the first time, it'll write the default pattern and
config to ``$XDG_CONFIG_HOME/journalwatch`` (``$XDG_CONFIG_HOME`` is
``$HOME/.config`` if unset). Details on how to configure journalwatch
are available in these files.

Dependencies
------------

-  Python 3 (mainly tested with 3.5, should work with >= 3.3)
-  ``systemd`` python module
-  ``setuptools``
-  A working ``sendmail``/MTA (`msmtp <https://msmtp.sourceforge.net/>`_
   is easy to set up)

Development
-----------

Development happens on `GitHub <https://github.com/The-Compiler/journalwatch>`_
and contributions are very welcome!

The tests are written using `pytest <https://docs.pytest.org/>`_ - to run them,
install it and run ``pytest`` in the repository root. The command may be called
`pytest-3` if you use distribution packages.

License
-------

journalwatch is free software: you can redistribute it and/or modify it
under the terms of the GNU General Public License as published by the
Free Software Foundation, either version 3 of the License, or (at your
option) any later version.

journalwatch is distributed in the hope that it will be useful, but
WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General
Public License for more details.

You should have received a copy of the GNU General Public License along
with journalwatch. If not, see https://www.gnu.org/licenses/.
