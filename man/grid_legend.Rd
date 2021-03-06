\name{grid_legend}
\alias{grid_legend}
\title{Legend Function for grid Graphics}
\description{
  This function can be used to add legends to \emph{grid-based} plots.
}
\usage{
grid_legend(x, y, pch = NA, col = par('col'), labels, frame = TRUE,
            hgap = unit(0.8, "lines"), vgap = unit(0.8, "lines"),
            default_units = "lines", gp = gpar(), draw = TRUE,
            title = NULL, just = 'center', lwd = NA, lty = NA,
            size = 1,
            gp_title = NULL, gp_labels = NULL,
            gp_frame = gpar(fill = "transparent"),
            inset = c(0, 0))
}
\arguments{
  \item{x}{character string \code{"topright"}, \code{"topleft"}, \code{"bottomright"},
    \code{"bottomleft"}, \code{"top"}, \code{"bottom"}, \code{"left"}, \code{"right"}, \code{"center"} or x coordinate of the legend.}
  \item{y}{y coordinates of the legend.}
  \item{pch}{integer vector of plotting symbols, if any.}
  \item{col}{character vector of colors for the symbols.}
  \item{labels}{character vector of labels corresponding to the symbols.}
  \item{frame}{logical indicating whether the legend should have a
    border or not.}
  \item{hgap}{object of class \code{"unit"} specifying the space between
  symbols and labels.}
  \item{vgap}{object of class \code{"unit"} specifying the space between
  the lines.}
  \item{default_units}{character string indicating the default unit.}
  \item{gp}{object of class \code{"gpar"} used for the legend.}
  \item{draw}{logical indicating whether the legend be drawn or not.}
  \item{title}{character string indicating the plot's title.}
  \item{just}{justification of the legend relative to its (x, y)
    location. see ?viewport for more details.}
  \item{lwd}{positive number to set the line width. if specified lines are drawn.}
  \item{lty}{line type. if specified lines are drawn.}
  \item{size}{size of the group symbols (in char units).}
  \item{gp_title}{object of class \code{"gpar"} used for the title.}
  \item{gp_labels}{object of class \code{"gpar"} used for the labels.}
  \item{gp_frame}{object of class \code{"gpar"} used for the frame.}
  \item{inset}{numeric vector of length 2 specifying the inset of the
    legend in npc units, relative to the specified x and y coordinates.}
}
\value{
  Invisibly, the legend as a \code{"grob"} object.
}
\author{
  David Meyer \email{David.Meyer@R-project.org}
  Florian Gerber \email{florian.gerber@math.uzh.ch}
}
\seealso{
  \code{\link[graphics]{legend}}
}
\examples{
data("Lifeboats")
attach(Lifeboats)
ternaryplot(Lifeboats[,4:6],
  pch = ifelse(side == "Port", 1, 19),
  col = ifelse(side == "Port", "red", "blue"),
  id  = ifelse(men / total > 0.1, as.character(boat), NA),
  prop_size = 2,
  dimnames_position = "edge",
  main = "Lifeboats on Titanic")
grid_legend(0.8, 0.9, c(1, 19), c("red", "blue"),
  c("Port", "Starboard"), title = "SIDE")


grid.newpage()
pushViewport(viewport(height = .9, width = .9 ))
grid.rect(gp = gpar(lwd = 2, lty = 2))

grid_legend(x = unit(.05,'npc'),
            y = unit(.05,'npc'),
            just = c(0,0),
            pch = c(1,2,3),
            col = c(1,2,3),
            lwd=NA, 
            lty=NA,
            labels = c("b",'r','g'),
            title = NULL,
            gp=gpar(lwd=2, cex=1),
            hgap = unit(.8, "lines"),
            vgap = unit(.9, "lines"))

grid_legend(x = unit(1,'npc'),
            y = unit(1,'npc'),
            just = c(1,1),
            pch = NA,
            col = c(1,2,3,4),
            lwd=c(1,1,1,3), 
            lty=c(1,2,1,3),
            labels = c("black",'red','green','blue'),
            gp_labels = list(gpar(col = 1), gpar(col = 2), gpar(col = 3), gpar(col = 4)),
            title = NULL,
            gp=gpar(lwd=2, cex=1),
            hgap = unit(.8, "lines"),
            vgap = unit(.9, "lines"))

grid_legend(x = 'topleft',
            pch = c(1,NA,2,NA),
            col = c(1,2,3,4),
            lwd=NA, 
            lty=c(NA,2,NA,3),
            labels = c("black",'red','green','blue'),
            title = 'Some LONG Title',
            gp_title = gpar(col = 3),
            gp_frame = gpar(col = 4, lty = 2, fill = "transparent"),
            gp_labels = gpar(col = 6),
            gp=gpar(lwd=2, cex=2, col = 1),
            hgap = unit(.8, "lines"),
            vgap = unit(.9, "lines"))

grid_legend(x = .7,
            y = .7,
            pch = c(1,NA,2,NA),
            col = c(1,2,3,4),
            lwd=1, 
            lty=c(NA,2,NA,3),
            labels = c("black",'red','green','blue'),
            title = 'short T',
            gp=gpar(lwd=1, cex=.7,col = 1),
            hgap = unit(.8, "lines"),
            vgap = unit(.9, "lines"))

grid_legend(x = 'bottomright',
            pch = c(1,NA,2,NA),
            col = c(2),
            lwd=NA, 
            lty=c(NA,2,NA,3),
            labels = c("black",'red','green','blue'),
            title = NULL,
            gp=gpar(lwd=2, cex=1,col = 1),
            hgap = unit(.8, "lines"),
            vgap = unit(.9, "lines"))
}


\keyword{hplot}
