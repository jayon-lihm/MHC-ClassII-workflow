nextflow.enable.dsl=2

include { BWA_INDEX } from './modules/nf-core/bwa/index/main'
include { BWA_MEM } from './modules/nf-core/bwa/mem/main' 

workflow {

    main:
    // Input reference FASTA
    ref_fasta = Channel.fromPath(params.fasta)
                    .map{ fasta -> tuple( [id: 'genome'], fasta) }


    // Run indexing
    BWA_INDEX(ref_fasta)

    // Capture outputs
    indexed = BWA_INDEX.out.index

    // Print output paths
    indexed.view { "Indexed files: $it" }

}
