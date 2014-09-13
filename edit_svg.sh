# Go through the circos.svg with emacs search
# C-s <g
# Then C-s to keep searching forwards
# For each heatmap (plots 1-10), change
#<g id="plot1">    =>   <g id="plot1" class="heatmaps">

# The same for histograms (plots ____)

# copyright
sed -i '' 's|<g id="ideograms">|<!-- Copyright 2014 Matthew Ralston-->\
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
