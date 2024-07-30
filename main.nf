#!/usr/bin/env nextflow

process sayHello {
  container "biocontainers/fastqc:v0.11.9_cv8"
  input: 
    val x
  output:
    stdout
  script:
    """
    echo '$x world!'
    """
}

workflow {
  Channel.of('Bonjour', 'Ciao', 'Hello', 'Hola') | sayHello | view
}
