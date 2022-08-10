Глоссарий
=========

.. glossary::

   2to3
      A tool that tries to convert Python 2.x code to Python 3.x code by
      handling most of the incompatibilities which can be detected by parsing the
      source and traversing the parse tree.

      2to3 is available in the standard library as :mod:`lib2to3`; a standalone
      entry point is provided as :file:`Tools/scripts/2to3`.  See
      :ref:`2to3-reference`.

   abstract base class
      Abstract base classes complement :term:`duck-typing` by
      providing a way to define interfaces when other techniques like
      :func:`hasattr` would be clumsy or subtly wrong (for example with
      :ref:`magic methods <special-lookup>`).  ABCs introduce virtual
      subclasses, which are classes that don't inherit from a class but are
      still recognized by :func:`isinstance` and :func:`issubclass`; see the
      :mod:`abc` module documentation.  Python comes with many built-in ABCs for
      data structures (in the :mod:`collections.abc` module), numbers (in the
      :mod:`numbers` module), streams (in the :mod:`io` module), import finders
      and loaders (in the :mod:`importlib.abc` module).  You can create your own
      ABCs with the :mod:`abc` module.