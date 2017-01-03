## minimal example - ui.R

library(shiny)

shinyUI(pageWithSidebar( #standard shiny layout, controls on the left, output on the right

    headerPanel("Contoh mudah"), #give the interface a title
    sidebarPanel( #all the UI controls go in here

        textInput(inputId = "comment", #this is the name of the variable - this will be passed to server.R

                  label = "Apa kata awak?", #display label for the variable

                  value = "Tulis di sini" #initial value
                  )
    ),

    mainPanel( #all of the output elements go in here
        h3("Ini apa yang awak katakan"), #title with HTML helper
        textOutput("textDisplay") #this is the name of the output element as defined in server.R
    )
))
