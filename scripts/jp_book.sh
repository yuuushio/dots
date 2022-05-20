#! /bin/sh

echo "Copying index.css..."
cp css/index.ff1ffe594081f20da1ef19478df9384b.css ${1}/_build/html/_static/css/index.ff1ffe594081f20da1ef19478df9384b.css

echo "Copying mystnb.css..."
cp mystnb.css ${1}/_build/html/_static/mystnb.css

echo "Copying pygments.css..."
cp pygments.css ${1}/_build/html/_static/pygments.css

echo "Copying sphinx-book-theme.css"
cp sphinx-book-theme.css ${1}/_build/html/_static/sphinx-book-theme.css

echo $1 
