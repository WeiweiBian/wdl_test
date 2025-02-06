task pileup_test {

  #  File bam_file
  #  File region_txt
  #  String ref_fasta
     String sample_id

    Int memory
    Int disk_space
    Int num_threads
    Int num_preempt

    command {
   
    print("Hello World")
   
    ### Add python code
    }

    output {
        File gene_tpm = "${sample_id}.refine.txt"
    }

    runtime {
        docker: "python:3.8"
        memory: "${memory}GB"
        disks: "local-disk ${disk_space} HDD"
        cpu: "${num_threads}"
        preemptible: "${num_preempt}"
    }

    meta {
        author: "Weiwei Bian"
    }
}


workflow pileup_workflow {
    call pileup_test
}

