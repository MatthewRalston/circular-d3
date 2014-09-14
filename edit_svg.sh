# Go through the circos.svg with emacs search
# C-s <g
# Then C-s to keep searching forwards
# For each heatmap (plots 1-10), change
#<g id="plot1">    =>   <g id="plot1" class="heatmaps">

# The same for histograms (plots ____)

# S V G   Related
# copyright
sed -i '' 's|<g id="ideograms">|<!-- Copyright 2014 Matthew Ralston, all rights reserved.-->\
&|' circos.svg
#sed '/./,$!d' circos.svg

#plots 0-10 heatmaps

sed -i '' 's/<g id="plot[0-9]"/& class="heatmaps"/' circos.svg
sed -i '' 's/<g id="plot10"/& class="heatmaps"/' circos.svg
# plot 11 text
sed -i '' 's/<g id="plot11"/& class="genelabels"/' circos.svg
# track_0 links
sed -i '' 's/<g id="track_0"/& class="links"/' circos.svg

# plots 12 -- histograms
sed -i '' 's/<g id="plot1[2-9]"/& class="histograms"/' circos.svg

# P N G  Related
img=img/circos.png
convert $img -set Author "Matthew T. Ralston" $img
convert $img -set City "Hockessin" $img
convert $img -set Country "USA" $img
convert $img -set Email "mrals@udel.edu,mrals89@gmail.com" $img
convert $img -set State "DE" $img
convert $img -set Website "http://matthewralston.github.io" $img
convert $img -set Copyright "copr 2014 Matthew T. Ralston, all rights reserved" $img
convert $img -set Title "Circular plot of RNA-sequencing data from C. acetobutylicum" $img
convert $img -set Keywords "Sequencing,genomics,circos,bioinformatics,Univ. of Delaware,RNA,data" $img



# Make changes permanent
git add circos.svg $img
