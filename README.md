# BoolKid Screenplays

The current repository includes the source code of the screenplays used to produce [BoolKid](https://youtube.com/pandres95), the YouTube show.

## Requirements

- A TeX-like suite that supports `latexmk` (like TeXLive).
- The `screenplay` package installed.

## Usage

Run `latexmk` over any file to get the resulting pdf for the episode.

```bash
latexmk -pdf path_of_series/name_of_file.tex
```

Or, run `make` to generate the pdf output of every single file in the repository.

```bash
make
```
