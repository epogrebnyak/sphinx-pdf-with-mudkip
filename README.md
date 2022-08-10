# sphinx-pdf-with-mudkip

Sandbox repo to create a PDF with Sphinx (not that easy!)

## Repo goals

Manage Sphinx project with [mudkip](https://github.com/vberlier/mudkip):

- [x] use `[mudkip.override]` in `mudkip.toml` instead of `conf.py`
- [x] make latex with `mudkit build --preset latex --output-dir docs/_latex`

Create a PDF in Github Codespaces:

- [x] bash script to install latex and other dependencies `start.sh`
- [x] script to invoke PDF build: `just pdf` (`pdflatex demo.tex`)
- [ ] **TODO: build pdf with Cyrillic characters**

Non-goals:

- [ ] Build container with latex installed
- [ ] Automate PDF creation (e.g. in Github Actions)
- [ ] Switch to MyST index.md
- [ ] Configure VS Code for TOML viewing
- [ ] Add .mp4 to latex

## Failure points

1. `pdflatex` will fail here after encountering Cyrillic letter:
   - `Точки отказа`
   - Очень проблемная буква: `ё`, `Ё`
