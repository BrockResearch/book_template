# Introduction

GitBook was created mid 2014 with the vision of creating a modern and simple 
solution to documentation, digital writing and publishing. In essence, it 
provides an open source, markdown-based, git-enabled, framework to author and 
publish books, documentation, manuals, research papers, and the like in 
multiple formats.  Writing can be done using the GitBook service, the GitBook 
desktop editor, or your favorite text editor (my preference). The online 
service and desktop editor avail the writer a subset of `git` functionality. 
Writing with your favorite editor and using `git` directly means full git 
functionality, but you'll need `gitbook-cli`.

The `gitbook-cli` is a companion utility to the GitBook Editor. While 
documentation states "of the gitbook command is to load and run the version of 
GitBook you have specified in your book (or the latest one), irrespective of 
its version". However, `gitbook-cli` does more than that. Its `install` 
subcommand installs gitbook plug-ins specified in `book.json`. The `build` 
subcommand builds a static website, a pdf, or a epub book from the source 
markdown. The `init` subcommand creates a bare minimum book scaffolding as a
starting point for a new book.

Standard Book Template builds upon the minimal start book created by 
`gitbook init` by including plug-ins for citation referencing, image captions, 
source code file interpolation, and UML diagrams.  The `gitbook init` command, 
provided by `gitbook-cli` 
creates GitBook's two required files; `README.md` and `SUMMARY.md`. Both files 
are stored a the book's root level. The `README.md` provides a place to write 
the book's preference, forward, introduction, etc. The file's only content is 
the title `# Introduction`. The `SUMMARY.md` file is the book's index and
defines the order of appearance for the books content. In fact, this book was 
started by executing `gitbook init` and the content you're reading was added to 
the resulting `README.md`.