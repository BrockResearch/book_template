# Introduction

GitBook was created mid 2014 with the vision of creating a modern and simple 
solution to documentation, digital writing and publishing.{{ "GB" | cite }} In 
essence, it provides an open source, markdown-based, git-enabled, framework to 
author and publish books, documentation, manuals, research papers, and the like 
in multiple formats.  Writing can be done using the GitBook service, the 
GitBook desktop editor, or your favorite text editor (my preference). The 
online service and desktop editor avail the writer a subset of `git` 
functionality. Writing with your favorite editor and using `git` directly means 
full `git` functionality, but you'll need `gitbook-cli`.

The `gitbook-cli` is a companion utility to the GitBook Editor. While 
documentation states "of the gitbook command is to load and run the version of 
GitBook you have specified in your book (or the latest one), irrespective of 
its version".{{ "GBAO" | cite }} However, `gitbook-cli` does more than that. 
Its `install` subcommand installs gitbook plug-ins specified in `book.json`. 
The `build` subcommand builds a static website, a pdf, or a epub book from the 
source markdown. The `init` subcommand creates a bare minimum book scaffolding 
as a starting point for a new book.

Standard Book Template builds upon the minimal start created by `gitbook init` 
by including plug-ins for citation referencing, image captions, source code 
file interpolation, and UML diagrams.  The `gitbook init` command, provided by 
`gitbook-cli` creates GitBook's two required files; `README.md` and 
`SUMMARY.md`. Both files are stored a the book's root level. The `README.md` 
provides a place to write the book's preference, forward, introduction, etc. 
The file's only content is the title `# Introduction`. The `SUMMARY.md` file is 
the book's index and defines the order of appearance for the books content. In 
fact, this book was started by executing `gitbook init` and the content you're 
reading was added to the resulting `README.md`.

## Plug-ins 
Standard GitBook Template builds upon the minimal start book created by 
`gitbook init` to include plug-ins for citation referencing, image captions, 
source code file interpolation, and UML diagrams. A description of each plug-in 
and demonstration of it usage is provided below.

### Plug-in: `bibtex-indexed-cite`
Adding the `bibtex-indexed-cite` plug-in enables you to make IEEE style 
citation references.{{ "BCG" | cite }} Citation references seen on this page 
are generated using 'bibtex-indexed-cite'.

### Plug-in: `image-captions`
Adding the `image-captions` converts `alt` or `title` attributes of your images 
into the captions.{{ "ICG" | cite }} For example image and caption below was 
generated using the following syntax `![Background Logo](./background_cover.jpg)`  

![Background Logo](./background_cover.jpg)

### Plug-in: `include-codeblock`
Adding the `include-codeblock` plug-in enables direct source code file 
importation file instead of copying the code directly in to the target markdown 
file.{{ "AZU" | cite }} You can import the entire file or selection of lines 
from the file.

[import, lang:"bash "](init.sh) 

### Plug-in: `plantuml-svg`
Adding the `plantuml-svg` plug-in enables render UML graphics at runtime 
directly from PlantUML files, thereby saving you from manually converting the 
files into SVGs.{{ "WEI" | cite }} This introduction converts the following 
PlantUML syntax:
```
@startuml
start
if (**README.md**) then (exists)
  :Erase Introduction **README.md** content;
  :Set Introduction **README.md** Header;
  if (**literature.bib**) then (exists)
    :Erase **literature.bib** content;
    if (**book.json**) then (exists)
      :Run **gitbook install**;
    else (not exists)
      :missing required file;
    endif
  else (not exists)
    :missing required file;
  endif
else (not exists)
  :missing required file;
endif
stop
@enduml
```

into this UML activity diagram.

{% uml src="book_init.puml" %}
{% enduml %}