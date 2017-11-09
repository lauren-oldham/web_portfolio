function(input, output, session){
  
  # about appalachian trail map
  observeEvent(input$aboutAT, {
    showModal(modalDialog(title = "Appalachian Trail Map", 
                          easyClose = T, 
                          fluidRow(column(12, align = "center", strong("Map Details"))),  
                          HTML(paste0("This map was created as part of the University of Kentucky's <a href = 'http://newmapsplus.uky.edu/'>New Maps Plus</a> program. ", 
                                      "In it, digital map features of the Appalachian Trail were overlaid on top of Erwin Raisz's hand-drawn classic Landforms of the United States map.", 
                                      "The map aesthetic was designed to reflect the earthy, rugged nature of the AT while maintaining the artistic integrity of Raisz's original cartography.")), 
                          br(), br(), 
                          fluidRow(column(12, align = "center", strong("GIS Software and Process"))),
                          HTML(paste0("Map was generated with QGIS 2.10. ", 
                                      "The state shapefile was filtered to display only states of interest. ",
                                      "The states were then georeferenced to properly fit Raisz's base map utilizing a graticule. ", 
                                      "The AT polyline was clipped to the states of interest. ", 
                                      "The map was projected and rotated to North America Albers Equal Area Conic (EPSG:102008).")), 
                          br(), 
                          fluidRow(column(12, align = "center", strong("Sources"), br(), 
                                          tags$a(href = "http://www.raiszmaps.com/index.html", "Erwin Raisz Landforms of the United States"), br(),
                                          tags$a(href = "https://www.census.gov/geo/maps-data/data/tiger.html", "U.S. Census Bureau TIGER Shapefiles"), br(), 
                                          tags$a(href = "http://www.appalachiantrail.org/home/explore-the-trail/gis-data", "Appalachian Trail Conservancy")
                                          )) 
                          ))  # END MODAL 
  })  # END OBSERVE EVENT 
  
  
  
  # about appalachian trail map
  observeEvent(input$aboutPB, {
    showModal(modalDialog(title = "Region-Level Reference Map of Peru", 
                          easyClose = T, 
                          fluidRow(column(12, align = "center", strong("Map Details"))),  
                          HTML(paste0("This map was created in fulfillment of grant work with <a href = 'http://globalagrisk.com/'>GlobalAgRisk, Inc.</a>. ", 
                                      "It is intended to be utilized as an interal reference map for GlobalAgRisk. ",
                                      "Maps of the same style were created for 38 additional countries with QGIS Model Builder.")), 
                          br(), br(), 
                          fluidRow(column(12, align = "center", strong("GIS Software and Process"))),
                          HTML(paste0("Map was generated with QGIS 2.12. ", 
                                      "Shapefiles were filtered from NaturalEarthData Administrative-1 Level polygons. ", 
                                      "The four color theorem was applied to the map with the QGIS TopoColours plug-in. ", 
                                      "Styles were applied consistently with QGIS Model Builder. ", 
                                      "Labels and map insets were moved manually when necessary to prevent overcrowding.")), 
                          br(), br(),
                          fluidRow(column(12, align = "center", strong("Sources"), br(), 
                                          tags$a(href = "http://www.naturalearthdata.com", "NaturalEarthData")
                          )) 
    ))  # END MODAL 
  })  # END OBSERVE EVENT 
  
  
  # about appalachian trail map
  observeEvent(input$aboutMagic, {
    showModal(modalDialog(title = "Crop Calendar for Ethiopia", 
                          easyClose = T, 
                          strong("Check back soon for more info!") 
    ))  # END MODAL 
  })  # END OBSERVE EVENT 
  
  
  # about appalachian trail map
  observeEvent(input$aboutPP, {
    showModal(modalDialog(title = "Power Plants in the United States", 
                          easyClose = T, 
                          strong("Check back soon for more info!") 
    ))  # END MODAL 
  })  # END OBSERVE EVENT 
  
  
  
  # about appalachian trail map
  observeEvent(input$aboutDrought, {
    showModal(modalDialog(title = "Drought Monitoring Tool", 
                          easyClose = T, 
                          strong("Check back soon for more info!"), 
                          hr(), 
                          strong("* This Shiny application is an in-progress commercial product. Unfortunately, it is not publicly available. I apologize for any inconvenience and hope this screencast will suffice!")
    ))  # END MODAL 
  })  # END OBSERVE EVENT 
  
  
  
  # about appalachian trail map
  observeEvent(input$aboutTC, {
    showModal(modalDialog(title = "Tropical Cyclone Tool", 
                          easyClose = T, 
                          strong("Check back soon for more info!"), 
                          hr(), 
                          strong("* This Shiny application is an in-progress commercial product. Unfortunately, it is not publicly available. I apologize for any inconvenience and hope this screencast will suffice!")
    ))  # END MODAL 
  })  # END OBSERVE EVENT 
  
  
  
  # about appalachian trail map
  observeEvent(input$aboutGeo, {
    showModal(modalDialog(title = "Custom Polygon Creator", 
                          easyClose = T, 
                          strong("Check back soon for more info!"), 
                          hr(), 
                          strong("* This Shiny application is an in-progress commercial product. Unfortunately, it is not publicly available. I apologize for any inconvenience and hope this screencast will suffice!")
    ))  # END MODAL 
  })  # END OBSERVE EVENT 
  
  
  
  # about appalachian trail map
  observeEvent(input$aboutDC, {
    showModal(modalDialog(title = "Desert City Research Paper", 
                          easyClose = T, 
                          strong("Check back soon for more info!") 
    ))  # END MODAL 
  })  # END OBSERVE EVENT 
  
  
  
  # about appalachian trail map
  observeEvent(input$aboutStem, {
    showModal(modalDialog(title = "Women in STEM GIS Presentation", 
                          easyClose = T, 
                          strong("Check back soon for more info!") 
    ))  # END MODAL 
  })  # END OBSERVE EVENT 
  
  
  
  # button group event for portfolio
  observeEvent(input$portBtn, {
    updateNavbarPage(session, "navbar", selected = "port")
  })  # END OBSERVE EVENT 
  
  # button group event for portfolio
  observeEvent(input$resumeBtn, {
    updateNavbarPage(session, "navbar", selected = "resume")
  })  # END OBSERVE EVENT 
  
  # button group event for portfolio
  observeEvent(input$connectBtn, {
    updateNavbarPage(session, "navbar", selected = "connect")
  })  # END OBSERVE EVENT 
  
  
  
  output$dlWord <- downloadHandler(    
    # generate file name
    filename = function() {     
      'oldham_lauren_resume.doc'   
    } , 
    # set file content
    content  = function(file) {  
      file.copy('www/oldham_lauren_resume.docx' , file)  
    }
  ) 
  
  output$dlPdf <- downloadHandler(    
    # generate file name
    filename = function() {     
      'oldham_lauren_resume.pdf'   
    } , 
    # set file content
    content  = function(file) {  
      file.copy('www/oldham_lauren_resume.pdf' , file)  
    }
  ) 
  
  
  observeEvent(input$github, {
    
  })
 
}  # END SERVER