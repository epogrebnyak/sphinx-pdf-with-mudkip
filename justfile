filename := "demo"
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
  - cd docs/_latex/dist/ && pdflatex {{filename}}.tex
  - cp docs/_latex/dist/{{filename}}.pdf .

# Delete temporary files  
clean:
  - mudkip clean
  - rm -rf docs/_latex

# Publish documentation to Github Pages 
publish:
  - mudkip build
  - ghp-import -pfn docs/_build/dist