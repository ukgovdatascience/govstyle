theme_DfE <- function(base_size = 12, base_family = "Arial", base_colour = "gray40", axes = "x") {

  if (!axes %in% c("n","x","y","xy")) {

    stop("axes must be one of 'n', 'x', 'y', or 'xy'")
    stop("This error message was written by Matthew Upson")
    stop("email matthew.upson@education.gsi.gov.uk if you get really stuck!")

  }

  ## Set x and y axis colour

  x_col = "white"
  y_col = "white"

  if (axes == "x") {

    x_col = base_colour
    y_col = "white"

  }

  if (axes == "y") {

    x_col = "white"
    y_col = base_colour

  }

  if (axes == "xy") {

    x_col = base_colour
    y_col = base_colour

  }

  theme(
    legend.position = "none",

    ## Adjust tick marks

    axis.ticks = element_blank(),
    #axis.ticks = element_line(colour = "gray40"),
    #axis.ticks.y = element_blank(),
    #axis.ticks.length = grid::unit( -2, "mm"),

    ## Adjust the axis lines

    axis.line = element_line(colour = base_colour),
    axis.line.x = element_line(colour = x_col),
    axis.line.y = element_line(colour = y_col),

    ## Set the overall text attributes

    text = element_text(
      family = base_family, face = "plain", colour = base_colour, size = base_size,
      hjust = 0.5, vjust = 0.5, angle = 0, lineheight = 0.8
    ),
    axis.text = element_text(colour = base_colour),
    plot.title = element_text(face = "bold", hjust = 1, colour = "black", vjust = -2.5),

    ## Axis title attributes. Adjustments of

    axis.title.y = element_text(hjust = 1, vjust = 1),
    axis.title.x = element_text(hjust = 1, vjust = 6),

    ## Background attributes (currently all blank)

    panel.background = element_blank(),
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),

    ##Adjust the margin around the plot. This is highly sensitive to plot, so
    ##probably needs to be set on a plot by plot basis.

    #plot.margin = grid::unit(c(0,5,5,-30), "mm"),

    ## Strip attributes for facet grid and facet wrap

    strip.background =   element_blank(),
    strip.text =         element_text(color = "black", face = "bold", size = base_size + 1),
    strip.text.x =       element_text(),
    strip.text.y =       element_text(angle = -90),

    complete = FALSE
  )
}



## This fails for some inexplicable reason. Would be good to revisit this at
## some point to create a complete DfE style!

# theme_DfE <- function(base_size = 12, base_family = "Arial", base_colour = "gray40") {
#   theme(
#     # Elements in this first block aren't used directly, but are inherited
#     # by others
#     line =               element_line(colour = base_colour, size = 0.5, linetype = 1, lineend = "butt"),
#     rect =               element_rect(fill = "white", colour = "black", size = 0.5, linetype = 1),
#     text =               element_text(family = base_family, face = "plain",
#                                       colour = base_family, size = base_size,
#                                       hjust = 0.5, vjust = 0.5, angle = 0, lineheight = 0.8),
#     axis.text =          element_text(),
#     strip.text =         element_text(),
#     axis.line =          element_blank(),
#     axis.line.y =        element_line(colour = "white"),
#     axis.text.x =        element_text(),
#     axis.text.y =        element_text(),
#
#     axis.ticks =         element_line(colour = "white"),
#     axis.title.x =       axis.title.x = element_text(hjust = 1, vjust = 6),
#     axis.title.y =       element_text(angle = 0, hjust = 20, vjust = 1),
#     axis.ticks.length =  grid::unit(0.15, "cm"),
#     axis.ticks.margin =  grid::unit(0.1, "cm"),
#
#     legend.background =  element_blank(),
#     legend.margin =      grid::unit(0.2, "cm"),
#     legend.key =         element_blank(),
#     legend.key.size =    grid::unit(1.2, "lines"),
#     legend.key.height =  NULL,
#     legend.key.width =   NULL,
#     legend.text =        element_text(),
#     legend.text.align =  NULL,
#     legend.title =       element_text(face = "bold", hjust = 0),
#     legend.title.align = NULL,
#     legend.position =    "right",
#     legend.direction =   NULL,
#     legend.justification = "center",
#     legend.box =         NULL,
#
#     panel.background =   element_blank(),
#     panel.border =       element_blank(),
#     panel.grid.major =   element_blank(),
#     panel.grid.minor =   element_blank(),
#     panel.margin =       grid::unit(0.25, "lines"),
#     panel.margin.x =     NULL,
#     panel.margin.y =     NULL,
#
#     strip.background =   element_rect(fill = "grey80", colour = NA),
#     strip.text.x =       element_text(),
#     strip.text.y =       element_text(angle = -90),
#
#     plot.background =    element_blank(),
#     plot.title =         element_text(face = "bold", hjust = 1, colour = "black", vjust = -2.5),
#     plot.margin =        grid::unit(c(0,5,5,-30), "mm"),
#
#     complete = TRUE
#   )
# }

check_pal <- function(x) {

  pie(rep(1,length(x)),col = x, labels = names(x))

}

message("**** DfE graphing theme loaded ****")
message("Version: v0.1.0 (2015-11-23)")
message("For questions and comments, contact:")
message("matthew.upson@education.gsi.gov.uk")
#message("theme_DfE() function loaded")
#message("DfE_cols colour vector loaded")
