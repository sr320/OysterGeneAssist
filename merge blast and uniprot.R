view(oysterblast)
V2 <- oysterblast$V2
# create a new column called entry that contains V2 with the sp| prefix replaced with nothing
oysterblast$Entry <- gsub("sp|", "", V2)
#replace the pipe and everything after the pipe with nothing
oysterblast$Entry <- gsub("|*.","", V2)

V2 <- oysterblast$V2
Entry <- substr(V2, 4, 9)
#make csv file with gene ID short codes and corresponding sample ID
output = cbind(Entry, oysterblast$V1)
write.csv(output, "geneAndSampleID.csv", row.names = FALSE)


#merge and match the two files based off gene ID short code ("Entry" column)
oysterblast_uniprot <- merge(x=geneAndSampleID, y=uniprotOyster1, by.x='Entry', by.y='Entry', fill=-9999)
write.csv(oysterblast_uniprot, "oysterblast_uniprot.csv")

#merge locus ID to the new file based off sample ID
locusMerge <- merge(x=oysterblast_uniprot, y=LOC_seqID_key, by.x='X2', by.y='V1', fill=-9999)

#merge cluster # to new file based off locus ID
clusterFunction <- merge(x=locusMerge, y=`top25markers_allcells_072720.(1)`, by.x='V2', by.y='gene_id', fill=-9999)


