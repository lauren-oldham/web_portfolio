## INCLUDE GITHUB AND STACKEXCHANGE 
## INCLUDE CODE EXAMPLES AND MODELS?
## LINKEDIN, AWARDS, EDUCATION, ETC


fixedPage(theme = shinytheme("paper"), 
          
      tags$link(href = "https://fonts.googleapis.com/css?family=Amatic+SC|Sofia|Sacramento", rel = "stylesheet"), 
      
      
      # img:hover {box-shadow: 10px 10px; background-color: rgba(255,255,255,0.2);}
      
      
      # padding for fixed-top header     
      tags$style(
        type = "text/css", 
        "
        body {padding-top: 70px;}
        .navbar .navbar-nav {float: right;}
        .navbar .navbar-header {float: left;}
.downloadBtns {background-color: #9c27b0; color: white;}
.downloadBtns:focus {background-color: #9c27b0; color: white;}
.downloadBtns:hover {background-color: #862197; color: white;}
.downloadBtns:active {background-color: #862197; color: white; background-image: radial-gradient(circle, #701c7e 10%, #9c27b0 11%);}

.email {color: #2196f3;}

.test {color: #9c27b0;}
.test:hover {color: #862197; text-decoration: underline;}
.test:focus {color: #862197; text-decoration: underline;}
.test:visited {color: #862197; font-weight: bold;}


.image {
  -webkit-filter: contrast(70%); 
  filter: contrast(70%);
}

.image:hover {
  -webkit-filter: contrast(100%); 
  filter: contrast(100%);
}

        "), 
      
      # navigation bar     
      navbarPage(title = "", 
                 id = "navbar", 
                 collapsible = T, 
                 position = "fixed-top", 
                 windowTitle = "Lauren Oldham Map Portfolio", 
                 tabPanel("Home", value = "home", class = "homePage"),
                 tabPanel("Portfolio", value = "port"), 
                 tabPanel("Resume", value = "resume"), 
                 tabPanel("Connect", value = "connect")), 
      
      conditionalPanel(condition = "input.navbar == 'home'",
              fixedRow(
                column(
                  7, 
                  align = "center", 
               
                  tags$span(
                    style = "font-family: Sacramento; font-size: 6em;",  
                            "Lauren Oldham"
                  ), br(),
                  h3(style = "margin-top: 0;", tags$span(style = "font-family: Amatic SC;",
                                    "Geographer. Shiny Developer.")), br(), 

                  tags$span(style = "color: #9c27b0;", icon("heart")), br(),
                  
                  "Hello! I'm Lauren and I'm a geographer based out of Lexington, Kentucky.", 
                  "I currently work as a GIS Developer for Global Parametrics.", 
                  "I received both a Graduate Certificate in Digital Mapping and a Bachelor of Arts in Geography from the University of Kentucky.", 
                  br(), br(), 
                  "My specialty lies in creating thematic web-based Shiny applications.", 
                  "I also have experience in spatial analysis, static mapping, and R programming.",
                  br(), br(), 
                  "When not working, I enjoy hiking, baking, and college basketball (go cats!)"
                  ),
                column(
                  5, align = "center", 
                  img(src = "profile.jpg", width = "100%")
                )
              ), br(),
              
              fixedRow(
                column( 
                12, 
                           
                  tags$div(
                    style = "width: 100%;", 
                    class = "btn-info btn-group btn-group-justified action-button shiny-bound-input", 
                    tags$a(href = "#", 
                           id = "portBtn", 
                           class = "btn btn-info action-button shiny-bound-input", "Check out my work"), 
                    tags$a(href = "#", 
                           id = "resumeBtn", 
                           class = "btn btn-info action-button shiny-bound-input", "View my resume"), 
                    tags$a(href = "#", 
                           id = "connectBtn", 
                           class = "btn btn-info action-button shiny-bound-input", "Reach out")
                    )
                  )
                )
             
                       ),  # END CONDITIONAL PANEL 
      
      
      
      conditionalPanel(
        condition = "input.navbar == 'resume'", 
        
        fixedRow(
          column(
            12,
            align = "right",
            downloadButton("dlWord", "Word Document", class = "downloadBtns"),
            downloadButton("dlPdf", "PDF", class = "downloadBtns")
          )
        ), 
        
        fixedRow(
          column(
            6, 
            align = "left", 
            
            h3(strong(tags$span(style = "font-family: Amatic SC; color: #9c27b0;", "Professional Experience"))),
            # h4(tags$span(style = "color: #9c27b0; font-weight: bold;", "PROFESSIONAL EXPERIENCE")), 
            
            HTML("<strong>GIS Developer</strong>  |  April 2017 - present", 
            "<br>Global Parametrics  |  <em>Lexington, Kentucky</em>", 
            "<br><br>•	Create, edit, manipulate, and analyze geographic data (raster and vector) to give spatial and temporal views of underlying risk by geography. 
            <br>•	Write R scripts, functions, and build QGIS models to automate repetitive GIS tasks. 
            <br>•	Develop, test, debug, and maintain custom web-based applications for clients to explore climate and seismic data for custom geographies. 
            <br>•	Work with clients, users, and decision-makers to help then understand how GIS can be used strategically for their needs. 
            "
            ), hr(), 
            
            HTML(
              "<strong>GIS Specialist</strong>  |  June 2015 - April 2017", 
              "<br>GlobalAgRisk, Inc.  |  <em>Lexington, Kentucky</em>", 
              "<br><br>•	Created thematic maps to help assist in assessing financial disaster risk management solutions for low and middle-income countries.
              <br>•	Managed, manipulated, and created GIS data to make it suitable for mapping in various mapping environments (RStudio, QGIS, Leaflet). 
              <br>•	Wrote R scripts to automate mapping processes and pre-processing, including file type conversions, geoprocessing, and attribute editing. 
              "
            ), hr(), 
            
            HTML(
              "<strong>GIS Technical Intern</strong> | May 2013 - August 2013", 
              "<br>Sandia National Laboratories | <em>Albuquerque, New Mexico</em>", 
              "<br><br>•	Performed primary mapping functions as the first steps in larger map projects for the National Infrastructure Simulation and Analysis Center (NISAC) utilizing ArcMap 10.1 and GoogleEarth softwares.
              <br>•	Geocoded and verified chemical plant locations in Alabama to update database software. 
              <br>•	Created earthquake and wildfire natural disaster preparedness maps utilizing in-house FASTMap software.
              "
            )
            
          ), 
          column(
            6, 
            h3(strong(tags$span(style = "font-family: Amatic SC; color: #9c27b0;", "Education"))),
            # h4(tags$span(style = "color: #9c27b0; font-weight: bold;", "EDUCATION")),  
            HTML("<strong>Graduate Certificate in Digital Mapping</strong>", 
                 "<br>University of Kentucky, 2015-2016", 
                 "<br>Summa cum laude"), hr(), 
            HTML("<strong>Bachelor of Arts in Geography</strong>", 
                 "<br>University of Kentucky, 2010-2014", 
                 "<br>Summa cum laude"), br(), br(), 
            
            h3(strong(tags$span(style = "font-family: Amatic SC; color: #9c27b0;", "Key Competence"))),
            # h4(tags$span(style = "color: #9c27b0; font-weight: bold;", "KEY COMPETENCE")),
            "Geographic Information Systems", br(), 
            "Web Mapping Applications", br(), 
            "Shiny Development", br(), 
            "R Programming", br(),
            "Leaflet", br(), 
            "Natural Disaster Risk Management", br(),
            "QGIS", br(), 
            "PostGIS/PostgreSQL", br(), 
            "GitHub", br(), br(), 
            
            h3(strong(tags$span(style = "font-family: Amatic SC; color: #9c27b0;", "Awards"))),
            # h4(tags$span(style = "color: #9c27b0; font-weight: bold;", "AWARDS")),
            HTML("<strong>Ellen Churchill Semple Award</strong> | May 2014", 
                 "<br><em>Excellence in undergraduate student research</em>", 
            "<br><br><strong>Joseph R. Schwendeman, Sr. Outstanding Student Award</strong> | May 2014",
            "<br><em>Academic excellence within Geography department</em>", 
            "<br><br><strong>Dean's List</strong> | Fall-Spring 2010-2014"
            
            ), br(), br(), 
            
            h3(strong(tags$span(style = "font-family: Amatic SC; color: #9c27b0;", "Organizations and Volunteering"))),
            # h4(tags$span(style = "color: #9c27b0; font-weight: bold;", "VOLUNTEER EXPERIENCE AND ORGANIZATIONS")), 
            HTML("University of Kentucky Women in Engineering Summer Workshop Series", 
                 "<br>Volunteer presenter and panelist | June 2017", 
                 "<br><br>North American Cartographic Information Society"
            )
            
            
          )
        ), br(), br()
        
      

        
      ),  # END CONDITIONAL PANEL 
      
      
      
    
      # portfolio page 
      conditionalPanel(condition = "input.navbar == 'port'", 
                       
                       fixedRow(
                         column(
                           4,
                           align = "center", 

                             tags$a(href = "app_trail_full.pdf",
                                    class = "image",
                                    img(src = "./thumbnails/app_trail.png", width = "100%"),
                                    target = "_blank"), 
                           br(), actionLink("aboutAT", "Appalachian Trail Map", class = "test")
                           
                             
                           
                         ),
                         column(
                           4,
                           align = "center", 
                           tags$a(href = "per_basemap_full.pdf",
                                  class = "image", 
                                  img(src = "./thumbnails/peru.png", width = "100%"),
                                  target = "_blank"), 
                           br(), actionLink("aboutPB", "Peru Reference Map", class = "test")
                         ), 
                         column(
                           4, 
                           align = "center", 
                           
                             tags$a(href = "http://laurenoldham1202.github.io/magic-ethiopia/",
                                    class = "image", 
                                    img(src = "./thumbnails/magic_eth.png", width = "100%"),
                                    target = "_blank"), 
                           br(), actionLink("aboutMagic", "Ethiopia Crop Calendar Map", class = "test")
                         )
                       ), 
                       
                       br(), 
                       
                       fixedRow(
                         column(
                           4, 
                           align = "center", 
                           tags$a(href = "http://laurenoldham1202.github.io/prop-symbol-power-plants/",
                                  class = "image", 
                                  img(src = "./thumbnails/power_plant.png", width = "100%"),
                                  target = "_blank"), 
                           br(), actionLink("aboutPP", "United States Power Plant Map", class = "test")
                         ),
                         column(
                           4, 
                           align = "center", 
                           tags$a(href = "https://www.screencast.com/t/9CVOJtqtzZhG",
                                  class = "image", 
                                  img(src = "./thumbnails/drought.png", width = "100%"),
                                  target = "_blank"), 
                           br(), actionLink("aboutDrought", "Drought Monitoring Tool (Screencast)", class = "test")
                         ), 
                         column(
                           4, 
                           align = "center", 
                           tags$a(href = "https://www.screencast.com/t/VXl8lNW5",
                                  class = "image", 
                                  img(src = "./thumbnails/tc.png", width = "100%"),
                                  target = "_blank"), 
                           br(), actionLink("aboutTC", "Tropical Cyclone Tool (Screencast)", class = "test")
                         )
                       ), 
                       
                       br(), 
                       
                       fixedRow(
                         column(
                           4, 
                           align = "center", 
                           tags$a(href = "https://www.screencast.com/t/RqkHv24qhln6",
                                  class = "image", 
                                  img(src = "./thumbnails/geo_tool.png", width = "100%"),
                                  target = "_blank"), 
                           br(), actionLink("aboutGeo", "Custom Polygon Creator (Screencast)", class = "test")
                         ),
                         column(
                           4, 
                           align = "center", 
                           tags$a(href = "stem_presentation.pptx",
                                  class = "image", 
                                  img(src = "./thumbnails/ppt.png", width = "100%"),
                                  target = "_blank"), 
                           br(), actionLink("aboutStem", "Women in STEM GIS Presentation", class = "test")
                         ),
                         column(
                           4, 
                           align = "center", 
                           tags$a(href = "desert_city.docx",
                                  class = "image", 
                                  img(src = "./thumbnails/desert_city.png", width = "100%"),
                                  target = "_blank"), 
                           br(), actionLink("aboutDC", "Desert City Research Paper", class = "test")
                         )
                       ), 
                       
                       fixedRow(
                         column(
                           12,
                           align = "center", 
                           hr(), 
                           tags$span(
                             style = "font-family: Amatic SC; font-size: 3em;  margin: 0; padding: 0;",  
                             "More work coming soon! Check back soon."
                           )
                         )
                       )
                       
                       ),  # END CONDITIONAL PANEL
      
      conditionalPanel(condition = "input.navbar == 'connect'", 
                       
                       fixedRow(column(12, align = "center", 
                                       tags$span(
                                         style = "font-family: Sacramento; font-size: 6em;  margin: 0; padding: 0;",  
                                         "Let's get connected!"
                                       ), br(), 
                                       tags$span(
                                         style = "font-family: Amatic SC; font-size: 3em;  margin: 0; padding: 0;",  
                                         "Feel free to email me or check out my work below."
                                       )
                                       )), 
                       
                       fixedRow(column(12, align = "center", 
                                       tags$span(icon("envelope"), style = "color: #862197;"), 
                                       tags$a(href = "mailto: laurenoldham1202@gmail.com", "laurenoldham1202@gmail.com", class = "email")
                                       )), br(), 
                       
                       fixedRow(
                         column(12,
                                align = "center", 
                                  tags$div(
                                    onclick ="window.open('https://www.linkedin.com/in/lauren-oldham/', '_blank')", 
                                    class = "btn btn-info action-button shiny-bound-input", 
                                    id = "linkedin", 
                                    title = "LinkedIn",
                                    icon("linkedin-square", "fa-2x")
                                  ),
                                tags$div(
                                  onclick ="window.open('https://gis.stackexchange.com/users/54986/lauren', '_blank')", 
                                  class = "btn btn-info action-button shiny-bound-input", 
                                  id = "stackR", 
                                  title = "GIS Stack Exchange",
                                  icon("stack-exchange", "fa-2x")
                                ),
                                tags$div(
                                  onclick ="window.open('https://stackoverflow.com/users/5775267/lauren', '_blank')", 
                                  class = "btn btn-info action-button shiny-bound-input", 
                                  id = "stackO", 
                                  title = "Stack Overflow",
                                  icon("stack-overflow", "fa-2x")
                                ),
                                tags$div(
                                  onclick ="window.open('https://github.com/lauren-oldham', '_blank')",  
                                  class = "btn btn-info action-button shiny-bound-input", 
                                  id = "github", 
                                  title = "Github",
                                  icon("github", "fa-2x")
                                )
                              
                                )
                       )
                       
                       )  # END CONDITIONAL PANEL
      

      
      
)  # END FLUIDPAGE 
