# pandoc P3P report
A modification of the default P3P template to use Pandoc

# Installation

You will need the following linux commands: (Bash for windows untested but probably will work)

    make
    pandoc
    xelatex


# Use

The `title.md` file contains all the configuration of the project, i.e. what your name is, what the title of the project is. It also contains the abstract, so write it there.

The `content.md` file contains the content of the project, the main bit of it. It's intened that you have multiple content.md files, one for each chapter.

The `appendix.md` file contains the appendices, preferably one per file


# TODO
- Import multiple chapters and appendices in one go
