library(shiny)
ui <- navbarPage("Presentation of Environmental Data", id = "nav_bar",
  ## Tab 1 starts
  tabPanel(title = "Annual analysis",
           # Sidebar with a slider input for number of bins 
           sidebarLayout(
             sidebarPanel(
               sliderInput(inputId = "bins",
                           label = "Number of bins:",
                           min = 1,
                           max = 50,
                           value = 30),
               
               radioButtons(inputId = "var", label = "Variable", 
                            choices = c("Temperature" = "temp",
                                        "Precipitation" = "prcp")),
               
               selectInput(inputId = "sta", label = "station", 
                           choices = c("Prague" = "prague",
                                       "Athens" = "athens",
                                       "Oslo" = "oslo"))
             ),
             
             # Show a plot of the generated distribution
             mainPanel(
               plotOutput("distPlot"),
               plotOutput("densityPlot")
             )               
      )
  ),
      
      #Tab 2 starts
  tabPanel(title = "Monthly analysis",
           
           # Sidebar with a slider input for number of bins 
           sidebarLayout(
             sidebarPanel(
               
               selectInput(inputId = "var_mon", label = "Variable", 
                           choices = c("Temperature" = "temp",
                                       "Precipitation" = "prcp")),
               selectInput(inputId = "sta_mon", label = "Station", 
                           choices = c("Prague" = "prague",
                                       "Athens" = "athens",
                                       "Oslo" = "oslo")),
               selectInput(inputId = "mon", label = "Month", 
                           choices = c("January" = "jan",
                                       "February" = "feb",
                                       "March" = "mar",
                                       "April" = "apr",
                                       "May" = "may",
                                       "June" = "jun",
                                       "July" = "jul",
                                       "August" = "aug",
                                       "September" = "sep",
                                       "October" = "oct",
                                       "November" = "nov",
                                       "December" = "dec"))
             ),
             
             # Show a plot of the generated distribution
             mainPanel(
               plotOutput("densityPlot_mon")
             )               
           )
           
           ),
  #Tab 3
  tabPanel(title = "Station map",
           leafletOutput("mymap"))
  
)

