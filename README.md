# Sphinx with Mudkip 

Create a PDF with Cyrillic letters via Sphinx and pdflatex.

## How to use

1. Оpen project in Github Codespaces or other linux environment
2. Run `./start.sh` to install dependencies
3. `just latex` creates latex files (including `demo.tex`)
4. `just pdf` creates [`demo.pdf`](https://github.com/epogrebnyak/sphinx-pdf-with-mudkip/blob/main/demo.pdf)
5. `just publish` puts documentation to Github Pages

## Development notes

1. Sphinx project managed with [mudkip](https://github.com/vberlier/mudkip):

- `[mudkip.override]` in `mudkip.toml` used instead of `conf.py`
- `just latex` in an alias for `mudkit build --preset latex --output-dir docs/_latex`

2. PDF created in Github Codespaces:

- `start.sh` installs latex and other dependencies
- `just pdf` invokes PDF build, it is an alias for `pdflatex demo.tex`

3. Avoid errors with Cyrillic characters (mostly fixed):

- [ ] avoid unnecessary installations in `setup.sh`

4. Make PDF look sane:

- [ ] generate TOC
- [ ] glossary is not a numbered chapter
- [ ] blank pages

5. PDF customisation:

- [ ] watermark
- [ ] "issued to" footer
- [ ] time generated

6. Build PDF in a CI

7. Side effects

- [x] Configure VS Code for TOML viewing - use [Even better TOML](https://marketplace.visualstudio.com/items?itemName=tamasfe.even-better-toml)

## Non-goals

- Codespaces container with latex installed
- Switch to MyST index.md
- Add .mp4 to latex
- Link PDF to theme
- lightweight PDF creation (rhinotype and weasyprint)

## Failure points

1. `pdflatex` can fail here after encountering Cyrillic letters:

  - это точка отказа;
  - очень проблемная буква: `ё`/`Ё`.
