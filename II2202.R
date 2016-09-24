Live <- read.delim2("~/Live.txt", header=FALSE, row.names=NULL, quote="", stringsAsFactors=FALSE)
View(Live)

subset = Live[1:5,1]
#Create a function with grepl("[-]?[0-9]+[.]?[0-9]*|[-]?[0-9]+[L]?|[-]?[0-9]+[.]?[0-9]*[eE][0-9]+",subset[3])



for (i in 1:length(subset)) {
  if (substring(subset[i],14,16) == "-->") {
    if (grepl("[-]?[0-9]+[.]?[0-9]*|[-]?[0-9]+[L]?|[-]?[0-9]+[.]?[0-9]*[eE][0-9]+",subset[i+2]) == TRUE) {
      output <- paste(subset[i+1])
    } else {
      output <- paste(subset[i+1],subset[i+2])
    }
  }
}

