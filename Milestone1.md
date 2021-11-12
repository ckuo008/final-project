## Update

### Data Collection

Conduct by script `scripts/clone-data.sh` , which utilize `gdc-client` to download htseq counts files from GDC. This script will run different version of `gdc-client` depends on OS version (support Linux and Macos). It also extract all `.gz` files once download finished.

### R installation

I installed R intepreter and RStudio on my macOS laptop via following commands

```bash
brew install r
brew  install --cask rstudio
```

### R package installation

I had determined some required packages and wrote a R script to install them.

``` R
#!/usr/bin/env Rscript
pkgLoad <- function( packages = "favourites" ) {

    if( length( packages ) == 1L && packages == "favourites" ) {
        packages <- c( "data.table", "BiocManager", "DESeq2", "dplyr", "shiny"
        )
    }

    packagecheck <- match( packages, utils::installed.packages()[,1] )

    packagestoinstall <- packages[ is.na( packagecheck ) ]

    if( length( packagestoinstall ) > 0L ) {
        utils::install.packages( packagestoinstall,
                                repos = "https://cran.csie.ntu.edu.tw"
        )
    } else {
        print( "All requested packages already installed" )
    }

    for( package in packages ) {
        suppressPackageStartupMessages(
            library( package, character.only = TRUE, quietly = TRUE )
        )
    }

}

pkgLoad()

```

## Next Steps 

I had try to load htseq counts file into R by following the [Vignette](http://bioconductor.org/packages/release/bioc/vignettes/DESeq2/inst/doc/DESeq2.html), but encounter some issues. I will first make sure all the data can be loaded successfully.

I will try to accomplish following goals:

1. [Differential expression analysis](https://bioconductor.org/packages/release/bioc/vignettes/DESeq2/inst/doc/DESeq2.html#differential-expression-analysis) 
2. Data visualization



## Data

All required data can be downloaded and extracted by `scripts/clone-data.sh`, It's ready to be upload to google drive.

## Known issues

Currently, I cannot reproduce the [*htseq-count* input](https://bioconductor.org/packages/release/bioc/vignettes/DESeq2/inst/doc/DESeq2.html#htseq-count-input) section from the Vignette, I may need a  time extension to address this issue.
