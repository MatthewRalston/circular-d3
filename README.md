# README
## circular-d3
This is a project started on 8/21/14 to combine svg images produced by circos with the d3 javascript library and html to create interactive features for the svg image. The most recent version of circos includes the ability to add accessory fields (e.g. id) to svg elements (e.g. circles) with an extra svgXX=value included in the circos-formatted data files. With the basic functionality of d3, these attributes can be accessed for display or further manipulation.

### TODO list
* Add updated svg with extra attributes
* Update the inset display to display value, genomic coordinate.
* With heatmaps, display the value, the gene, accessory graph?
    * If adding a graph, each point would need all other points as attributes
* Add interactivity to relationships (coexpression clusters)
    * Include key to cluster
    * Access arrays of GO terms, genes in cluser and display
