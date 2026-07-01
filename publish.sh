#!/bin/bash
# Render the MISP book (HTML + PDF + EPUB) with Quarto and publish it to the
# two CIRCL servers via rsync. PDF uses Quarto's bundled Typst engine (no LaTeX).
#
# Executable PyMISP/REST cells are frozen (_freeze/ is committed). To re-execute
# them against a live instance before publishing, export MISP_URL / MISP_KEY /
# QUARTO_PYTHON and delete the relevant _freeze/ entry (see README.md).
set -e

echo "Rendering all formats..."
quarto render

# Keep the historical /doc/misp/book.pdf and book.epub URLs working.
cp "_book/MISP-User-Guide.pdf"  "_book/book.pdf"  || true
cp "_book/MISP-User-Guide.epub" "_book/book.epub" || true

echo "Publishing..."
rsync -azv _book/ circl@cpab.circl.lu:/var/www/nwww.circl.lu/doc/misp/
rsync -azv _book/ circl@www-circl-lu.cfss1.circl.lu:/var/www/www.circl.lu/doc/misp/
echo "Done"
