# MHC-ClassII-workflow

nextflow environment:

`conda activate nf-env`

data download:

`sh ./data/data_download.sh`

intall `nf-core` modules:

```
nf-core modules install bwa/index
nf-core modules install bwa/mem
```

## pre-processing
hg38 indexing (bwa)

fastq --> bam (regular hg38) --> PCR duplicates



## xHLA
bam --> alt bam --> typing

## HLA-HD

### To-do

* create HLA-HD image

* Workflow from bam --> typing



