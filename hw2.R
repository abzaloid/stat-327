# Name: Abzal Serekov
# Email: serekov@wisc.edu

rm(list = ls()) # Remove all objects defined in workspace.

# Download WI_donations and NY_donations from the class website. (Do
# this outside of R. They are donations from Wisconsin and New York to
# the 2012 presidential candidates. I got them from files at
# www.fec.gov/disclosurep/PDownload.do, a Federal Election Commission
# website.)
#
# Read these two files into two vectors, one for each state.

wi = scan("WI_donations.txt")
ny = scan("NY_donations.txt")

# Find the sum of donations from WI and the sum of donations from NY.

WI.sum = sum(wi)
NY.sum = sum(ny)
cat(sep="", "WI sum=", WI.sum, "\n")
cat(sep="", "NY sum=", NY.sum, "\n")

# Find the sum of small donations from each state. I've set small=100
# (below). Let's say "small donation" are those such that
#   -100 <= donation <= 100.
# (Note that there are negative donations, which are refunds.)

small = 100
WI.sum.small = sum(wi >= -small & wi <= small)
NY.sum.small = sum(ny >= -small & ny <= small)
cat(sep="", "WI.sum.small=", WI.sum.small, "\n")
cat(sep="", "NY.sum.small=", NY.sum.small, "\n")

# Find the sum of big donations from each state. Let's say "big
# donations" are those such that
#   donation < -100 or donation > 100.

WI.sum.big = WI.sum - WI.sum.small
NY.sum.big = NY.sum - NY.sum.small
cat(sep="", "WI.sum.big=", WI.sum.big, "\n")
cat(sep="", "NY.sum.big=", NY.sum.big, "\n")

# Find the ratio of the sum of small donations to total donations from
# each state.
WI.small.ratio = WI.sum.small / WI.sum
NY.small.ratio = NY.sum.small / NY.sum
cat(sep="", "WI.small.ratio=", WI.small.ratio, "\n")
cat(sep="", "NY.small.ratio=", NY.small.ratio, "\n")

# Find the mean positive donation from each state. (Do not include
# zero or negative donations.)
WI.mean.pos = mean(wi[wi > 0])
NY.mean.pos = mean(ny[ny > 0])
cat(sep="", "WI.mean.pos=", WI.mean.pos, "\n")
cat(sep="", "NY.mean.pos=", NY.mean.pos, "\n")

# Find the median positive donation from each state. (Do not include
# negative donations.)
WI.median.pos = median(wi[wi > 0])
NY.median.pos = median(ny[ny > 0])
cat(sep="", "WI.median.pos=", WI.median.pos, "\n")
cat(sep="", "NY.median.pos=", NY.median.pos, "\n")


wi.sorted = sort(wi, decreasing = TRUE)
ny.sorted = sort(ny, decreasing = TRUE)

WI.largest=wi.sorted[1]; WI.second.largest=wi.sorted[2]
NY.largest=ny.sorted[1]; NY.second.largest=ny.sorted[2]

cat(sep="", "WI.largest=", WI.largest, ", WI.second.largest=", WI.second.largest, "\n")
cat(sep="", "NY.largest=", NY.largest, ", NY.second.largest=", NY.second.largest, "\n")

