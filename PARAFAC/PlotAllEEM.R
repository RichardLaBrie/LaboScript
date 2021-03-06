PlotAllEEM <- function(cube, zlim = c(0,1), ExportPDF = T)
{
	setwd(getwd())
  par(mar = c(5, 4, 4, 3))
	if(ExportPDF)
	{
	  pdf("EEM.pdf")
	}
	  for(i in 1:cube[[5]])
	{
		filled.contour(cube[[3]], cube[[4]], unlist(cube[[1]])[,,i], color.palette = myPalette,
		xlab = "Excitation (nm)", ylab = "Emission (nm)",
		main = cube[[2]][i], zlim = zlim, nlevels = 50)
	}
	if(ExportPDF)
	{
    dev.off()
	}
 }