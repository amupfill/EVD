# ui.R

shinyUI(fluidPage(
  titlePanel("Sub-country Dynamics of Ebola Outbreak"),
  
  sidebarLayout(
    sidebarPanel(
      radioButtons("country", 
                         label = h3("Select Country"), 
                         choices = list("Sierra Leone" = 1, 
                                        "Guinea" = 2, "Liberia" = 3),
                         selected = 1),
      selectInput("aggregation", label = h3("Aggregation"), 
                  choices = list("none"=1, "weekly" = 2, "monthly"=3), selected = 2),
      radioButtons("yscale", label = h3("Scale"),
                   choices = list("Linear" = 1, "Log" = 2),selected = 2),
    ),
    
    mainPanel(
      textOutput("text"),
      plotOutput("plots", width = "100%", height = "600px")
    )
  )
)
)
