# Contributing to MISP Book

Most MISP documentation pages are stored as plain-text files in this dedicated misp-book repository.
MISP Book provides general documentation for MISP, including usage, API documentation, best practices, and configuration guidance.
Installation guides are maintained in the [INSTALL](https://github.com/MISP/MISP/tree/2.5/INSTALL) and [download](https://www.misp-project.org/download/) sections of the core and website repositories respectively.
By cloning this repository and pulling regularly, users can maintain an up-to-date offline copy of the documentation instead of relying solely on the web.

MISP Book is generated in HTML, PDF, and EPUB formats using [Quarto](https://quarto.org), a framework for writing documentation in Markdown.
Each chapter is a plain-Markdown `index.qmd` file in its own directory, so you can edit any chapter and open a pull request without installing anything. See [README.md](README.md) for how to build the book locally.
The documentation is regularly published on [misp-project.org](https://www.misp-project.org/) and the [CIRCL website](https://www.circl.lu/doc/misp/).

## Documentation guidelines

The documentation is a community effort.
Volunteers work hard to keep it accurate and comprehensive.
If you notice a problem or see a way to improve it, please edit the documentation.

All pull requests against MISP must pass review before being merged.
This process helps ensure that contributed text is accurate and non-malicious.
Once a pull request passes review, the documentation maintainer verifies that it is mechanically sound, such as having no merge conflicts or broken links.
If everything looks good, the maintainer merges the pull request.

If you have a question about something you read in the documentation, you can ask in the [Gitter Support channel](https://gitter.im/MISP/Support) or open an issue.
If you see documentation that should be fixed or improved, please [contribute the change](#how-to-make-a-contribution) yourself.

## How to make a contribution

Editing the documentation is easy, so if you see something that should be changed, please contribute it.

A few notes before we get started:

- Every documentation change will be reviewed before it is accepted. This helps us maintain quality and protect our users.
- If your contribution would take a lot of time, please [file an issue](https://github.com/MISP/misp-book/issues) first so we can make sure we are aligned before significant work begins. This helps avoid spending time on a contribution that cannot be accepted.

Thanks to GitHub’s interface, you can edit MISP documentation even if you do not know Git.
All you need to do is [fork and clone](https://guides.github.com/activities/forking/) the [misp-book repository](https://github.com/MISP/misp-book/), make your changes, and then [submit a pull request](https://help.github.com/articles/using-pull-requests/).
You can also [open issues](https://github.com/MISP/misp-book/issues) if you find errors or want to propose improvements.

[GitHub workflows](https://docs.github.com/en/actions/using-workflows) are used for continuous integration in misp-book, and book generation is tested on each commit.
When you open a pull request, verify whether your changes affect the test results.
If the checks fail, review the workflow output and fix any issues where possible.

### For native English speakers

Most MISP developers are not native English speakers, so corrections and improvements to our English are especially welcome.
You can submit a pull request or share your improvements in any other way that suits you.

## Organizational guidelines

- Do not duplicate documentation. Duplicating documentation is almost always a bad idea because it is easy for one copy to be updated while another is forgotten. In most cases, it is better to link to existing documentation than to repeat it. There are rare exceptions, such as information that is certain not to change for a very long time.
- We maintain only one set of documentation for MISP. We do not maintain a separate set for each version. Our single documentation set is updated on a continual basis. Our first priority is to document all current stable releases of MISP. Our second priority is to document the next upcoming release, if any, that is currently in beta or release candidate status.
- Instructions on how to install MISP are maintained in the [INSTALL](https://github.com/MISP/MISP/tree/2.4/INSTALL) and [download](https://www.misp-project.org/download/) sections of the core and website repositories respectively.

## Style guidelines

- Familiarize yourself with the terms defined in the [glossary](https://www.circl.lu/doc/misp/glossary.html). Use these terms consistently and accurately throughout your writing.
- The language in this book is American English. All screenshots and examples are in English.

## Markdown conventions

All documentation is written in Markdown for maximum accessibility.
When making contributions, please try to observe the following style conventions:

- Use spaces instead of tabs.
- To enable offline browsing, always use relative links rather than absolute links, such as misp/automation/ instead of https://www.circl.lu/doc/misp/automation/. Exceptions include URLs inside code blocks and files such as README.md and CONTRIBUTING.md.
- Insert a newline at, and only at, the end of each sentence. This results in one sentence per line, which produces more useful diffs and facilitates translation while preserving readability.
- If appropriate, make numerals in numbered lists match between Markdown source and HTML output. If a user needs to read the Markdown source directly, this makes the steps easier to follow.
- Use Atx-style headings: `# h1`, `## h2`, `### h3`, and so on.
- Always leave a blank line **before every heading** and **before and after every code fence**. Quarto/Pandoc will otherwise fold a heading into the preceding paragraph or a code block, so it silently disappears from the rendered book.
- Fence code blocks with triple backticks on their own lines (```` ``` ````) and tag the language; do not write triple backticks inline in a sentence.
- When writing code blocks, use syntax highlighting where possible and use [...] for omitted content.

([This](https://daringfireball.net/projects/markdown/) is a great resource for learning Markdown.)

## Git conventions

Please try to write good commit messages, according to the [instructions in our wiki](https://github.com/MISP/MISP/wiki/CommitMessageBestPractices).

## Translate MISP Book

You can help make MISP Book available in your language.
See [MISP and Internationalization (i18n)](https://www.circl.lu/doc/misp/translation/).
