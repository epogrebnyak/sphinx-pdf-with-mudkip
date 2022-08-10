# sphinx-pdf-with-mudkip

Create a PDF with Cyrillic letters via Sphinx and pdflatex

## How to use

1. Оpen project in Github Codespaces or other linux environment
2. Run `./start.sh` to install dependencies
3. `just latex` creates latex files (including `demo.tex`)
4. `just pdf` creates [`demo.pdf`](https://github.com/epogrebnyak/sphinx-pdf-with-mudkip/blob/main/demo.pdf)

## Development notes

1. Sphinx project managed with [mudkip](https://github.com/vberlier/mudkip):
  - `[mudkip.override]` in `mudkip.toml` used instead of `conf.py`
  - `just latex` in an alias for `mudkit build --preset latex --output-dir docs/_latex`

2. PDF created in Github Codespaces:
  - `start.sh` installs latex and other dependencies 
  - `just pdf` invokes PDF build, it is an alias for `pdflatex demo.tex`
  
3. Avoid errors with Cyrillic characters

4. Make PDF look sane
  
## Non-goals

- Build container with latex installed
- Automate PDF creation (e.g. in Github Actions)
- Switch to MyST index.md
- [x] Configure VS Code for TOML viewing
- Add .mp4 to latex

## Failure points

- `pdflatex` will fail here after encountering Cyrillic letters (точки отказа), очень проблемная буква: `ё`, `Ё`.
