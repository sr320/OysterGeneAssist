# OysterGeneAssist

oysterblast.csv is the blast results from the gigas literature assist

shortGene.csv is the short gene identifiers from the oyster blast results

geneAndSampleID.csv is short gene and sample ID merged together as an intermediate for creating oysterblast_uniprot.csv

uniprotOyster1.tab is the uniprot results from running the short gene identifiers 

oysterblast_uniprot.csv is the blast results merged with the uniprot results which allowed me to link sample ID back to the corresponding uniprot row

locusUniprotMerge.csv is locus# merged with oysterblast_uniprot.csv in order to get locus# associated with the appropriate sample row which is necessary to later merge the file that has the cell group/cluster/module number

top25markers_allcells_072720.(1) is the cell groups and top 25 marker genes for each cell

clusterFunction.csv is what I got when I tried to merge top marker file with locusUniprotMerge, but it deleted any redundancies and any tissue specificity, induction, and developmental stage info in doing so :(

Merge blast and uniprot.R is the code I have for all this so far.






Updated 2020 1115
