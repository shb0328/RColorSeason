colornamelist<-c("Spring","Summer","Fall","Winter")
names(colornamelist) <-colornamelist
colorNum<-rep(3,length(colornamelist))

#'season color palettes infomation
#'
#'@description
#'my season color palettes's info. 2018 R HW
#'@usage
#'colorSeason.palet.info
#'@format
#'A data frame
#'@examples
#'devtools::install_github("shb0328/RColorSeason")
#'library(colorseason)
#'colorSeason.palet.info
#'
#'@export
colorSeason.palet.info<-data.frame(colorNum=colorNum,row.names=colornamelist)

colorSeason.palet<-function(name){
  if(!(name %in% colornamelist)){
    stop(paste(name,"is not a valid palette name for colorSeason.palet\n"))
  }

  switch(name,
         Spring = rgb(c(252,247,242),
                      c(228,188,144),
                      c(236,208,177),maxColorValue=255),
         Summer = rgb(c(215,170,109),
                      c(233,208,187),
                      c(195,97,78),maxColorValue=255),
         Fall = rgb(c(236,204,182),
                      c(223,152,149),
                      c(204,100,116),maxColorValue=255),
         Winter = rgb(c(239,202,101),
                      c(243,216,108),
                      c(255,255,192),maxColorValue=255)
         )
}

#'display season color palettes
#'
#'@description
#'function for my season color palettes. 2018 R HW
#'@usage
#'display.colorSeason.palet(name)
#'@param name Spring Summer Fall Winter
#'@examples
#'devtools::install_github("shb0328/RColorSeason")
#'library(colorseason)
#'display.colorSeason.palet("Winter")
#'devAskNewPage(ask=TRUE)
#'
#'@export
display.colorSeason.palet<-function(name){
  if(!(name %in% colornamelist)){
    stop(paste(name,"is not a valid palette name for colorSeason.palet\n"))
  }

  image(1:colorNum,1,as.matrix(1:colorNum),col=colorSeason.palet(name),
        xlab=paste(name),ylab="",xaxt="n",yaxt="n",bty="n")

}

devAskNewPage(ask=TRUE)
