# Data files
'oysterblast.csv' is the blast results from the gigas literature assist

'shortGene.csv' is the short gene identifiers from the oyster blast results

'geneAndSampleID.csv' is short gene and sample ID merged together as an intermediate for creating 'oysterblast_uniprot.csv'

'uniprotOyster1.tab' is the uniprot results from running the short gene identifiers 

'oysterblast_uniprot.csv' is the blast results merged with the uniprot results which allowed me to link sample ID back to the corresponding uniprot row

'locusUniprotMerge.csv' is locus# merged with oysterblast_uniprot.csv in order to get locus# associated with the appropriate sample row which is necessary to later merge the file that has the cell group/cluster/module number

'top25markers_allcells_072720.(1).txt' is the cell groups and top 25 marker genes for each cell as text file
'top25marker.csv' is the same file as above but as a csv

'clusterFunction.csv' is what I got when I tried to merge top marker file with locusUniprotMerge, but it deleted any redundancies and any tissue specificity, induction, and developmental stage info in doing so :(

### added 0125: 
'top25marker_sorted.csv' is 'top25marker.csv' sorted by column 2 which contains gene_id in the format LOC#########

'locusMerge.csv' is the uniprot results associated with each sample and gene ID (gene ID in the format of LOC#########)
'locusMerge_sorted.csv' is the same file as above sorted by column 14 which contains gene ID in the same format as above **This Sort is not Working

'locusMarkerInfo.csv' should be the final output of 'join'ing 'locusMerge_sorted.csv' and 'top25marker_sorted.csv', but since the sort isn't working the files are combining in a funky way where one file is added to the bottom row of the other file, rather than being added to the columns. 
