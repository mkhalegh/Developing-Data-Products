library(shiny)

# Define UI for dataset viewer application
shinyUI(fluidPage(
#shinyUI(pageWithSidebar(
    # Application title
    titlePanel("Modified Mercally Intensity Scale Identifier"),
    fluidRow(
            textInput("How did you feel it?"),
            helpText("Adjust slider bars to pick your shaking experience."),
            selectInput("select", 
                    label= h3("select"), 
                    choices = list("Barely sensed only by a very few people." = 1, 
                                       "Felt only by a few people at rest in houses or on upper floors." = 2,
                                       "Felt indoors as a light vibration. Hanging objects may swing slightly." = 3,
                                       "Generally noticed indoors, but not outside, as a moderate vibration or jolt. Light sleepers may be awakened. Walls may creak, and glassware, crockery, doors or windows rattle."=4,
                                       "Generally felt outside and by almost everyone indoors. Most sleepers are awakened and a few people alarmed. Small objects are shifted or overturned, and pictures knock against the wall. Some glassware and crockery may break, and loosely secured doors may swing open and shut."=5,
                                       "Felt by all. People and animals are alarmed, and many run outside. Walking steadily is difficult. Furniture and appliances may move on smooth surfaces, and objects fall from walls and shelves. Glassware and crockery break. Slight non-structural damage to buildings may occur."=6,
                                       "People experience difficulty standing. Furniture and appliances are shifted. Substantial damage to fragile or unsecured objects. A few weak buildings are damaged."=7,
                                       "A few buildings are damaged and some weak buildings are destroyed."=8,
                                       "Some buildings are damaged and many weak buildings are destroyed."=9,
                                       "Many buildings are damaged and most weak buildings are destroyed."=10,
                                       "Most buildings are damaged and many buildings are destroyed."=11,
                                       "All buildings are damaged and most buildings are destroyed."=12), 
                    selected=1),
    fluidRow(
        h3("The MMI scale of the shaking you felt is:"),
        h4("You entered"),
        verbatimTextOutput("inputValue"),
        h4("Which resulted in a prediction of "),
        verbatimTextOutput("prediction")
    )
)
)
)
