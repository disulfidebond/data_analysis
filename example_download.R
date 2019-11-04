        # R
        # Note 1: Depending on your installation or if you're using a Docker container for R, other options may work
        # Note 2: The default text formatting for this particular download seems to be XML, but JSON or other formats may also be used
        library(XML)
        library(RCurl)
        fileURL <- "https://open-ic.epic.com/FHIR/api/FHIR/DSTU2/Condition?patient=Tbt3KuCY0B5PSrJvCu2j-PlK.aiHsu2xUjUM8bWpetXoB"
        xData <- getURL(fileURL)
        doc <- xmlParse(xData)
