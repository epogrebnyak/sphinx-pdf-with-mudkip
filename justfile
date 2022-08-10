# List available commands
list: 
 - just --list

# Prettify markdown files
lint:
  - npx prettier . --write

# Create LaTeX source files
latex:
  - mudkip build --preset latex --output-dir docs/_latex

# Build PDF from LaTeX source files
pdf:
  - cd docs/_latex/dist/ && pdflatex demo.tex
  - cp docs/_latex/dist/demo.pdf .
