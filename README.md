# pandoc P3P report
A system to generate a University of Southampton 3rd-year-project report from a bunch of markdown files.

Status: In Beta stage, you'll probably need to reshuffle your files once all features are implemented.

A modification of the default P3P template to use Pandoc

# Installation

You will need the following linux commands: (Bash for windows untested but probably will work)

    make
    pandoc
    xelatex


# Use

The `title.md` file contains all the configuration of the project, i.e. what your name is, what the title of the project is. It also contains the abstract, so write it there.

The `content.md` file contains the content of the project, the main bit of it. It's intened that you have multiple content.md files, one for each chapter.

The `appendix.md` file contains the appendices, preferably one per file.

To generate the report, simply call `make`. the report will be generated in the output directory


# TODO
See the [issues](https://github.com/Adimote/pandoc_P3P_report/issues) page for the issues
