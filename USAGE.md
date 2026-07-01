# Building and authoring the MISP book

The MISP book is built with [Quarto](https://quarto.org). This replaces the old
Honkit/GitBook + npm toolchain — there are no Node dependencies or GitBook
plugins to install any more.

## Prerequisites

- **Quarto** — a single self-contained binary. Install it from
  <https://quarto.org/docs/get-started/>. Nothing else is required for the
  Markdown chapters; PDF uses Quarto's bundled **Typst** engine (no LaTeX).

That is the whole toolchain for ordinary editing.

## Common commands

```bash
quarto render            # build HTML + PDF + EPUB into _book/
quarto render --to html  # build only the HTML site (fastest)
quarto preview           # live preview with hot reload (also: ./serve.sh)
./publish.sh             # render + rsync to the CIRCL servers (maintainers)
```

## Authoring conventions

- Each chapter is `<chapter>/index.qmd` — plain Markdown with a small YAML
  header giving the chapter `title`. Images live in `<chapter>/figures/`.
- The chapter reading order and book metadata live in `_quarto.yml`.
- Cross-link between chapters with relative paths, e.g.
  `[see the API](../automation/index.qmd#sightings-api)`.
- Leave a blank line before every heading and around every code fence (see
  [CONTRIBUTING.md](CONTRIBUTING.md) — this is the one Markdown gotcha that
  differs from the old GitBook renderer).
- Callouts use Quarto syntax:

  ```markdown
  ::: {.callout-warning}
  A site admin role is required to perform these actions.
  :::
  ```

## Executable code cells

Code chapters (e.g. PyMISP) may include live cells that execute against a MISP
instance at build time. Their results are **frozen** into `_freeze/` (committed
to the repo) so the book renders offline, in CI, and for contributors without a
live instance.

````markdown
```{python}
from pymisp import PyMISP
misp = PyMISP(os.environ["MISP_URL"], os.environ["MISP_KEY"], ssl=False)
events = misp.search(controller="events", tags=["tlp:clear"], limit=5, pythonify=True)
```
````

To re-run these against your own instance and refresh the frozen output, set
`QUARTO_PYTHON` (a Python env with `jupyter` + `pymisp`), `MISP_URL` and
`MISP_KEY`, remove the stale `_freeze/<chapter>` directory, re-render that
chapter, and commit the updated `_freeze/`. Never commit real API keys.
