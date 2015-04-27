library(shiny)

# Define UI for dataset viewer application
shinyUI(fluidPage(
#shinyUI(pageWithSidebar(
    # Application title
    titlePanel("Modified Mercally Intensity Scale Identifier"),
    fluidRow(column(4,
#textInput("How did you feel it?", label="How did you feel it?"),
            helpText("Adjust slider bars to pick your shaking experience."),
            selectInput("feel", 
                    label= h3("How did you feel it?"), 
                    choices = list("Barely sensed only by a very few people.", 
                                       "Felt only by a few people at rest in houses or on upper floors.",
                                       "Felt indoors as a light vibration. Hanging objects may swing slightly.",
                                       "Generally noticed indoors, but not outside, as a moderate vibration or jolt. Light sleepers may be awakened. Walls may creak, and glassware, crockery, doors or windows rattle.",
                                       "Generally felt outside and by almost everyone indoors. Most sleepers are awakened and a few people alarmed. Small objects are shifted or overturned, and pictures knock against the wall. Some glassware and crockery may break, and loosely secured doors may swing open and shut.",
                                       "Felt by all. People and animals are alarmed, and many run outside. Walking steadily is difficult. Furniture and appliances may move on smooth surfaces, and objects fall from walls and shelves. Glassware and crockery break. Slight non-structural damage to buildings may occur.",
                                       "People experience difficulty standing. Furniture and appliances are shifted. Substantial damage to fragile or unsecured objects. A few weak buildings are damaged.",
                                       "A few buildings are damaged and some weak buildings are destroyed.",
                                       "Some buildings are damaged and many weak buildings are destroyed.",
                                       "Many buildings are damaged and most weak buildings are destroyed.",
                                       "Most buildings are damaged and many buildings are destroyed.",
                                       "All buildings are damaged and most buildings are destroyed."))),
    fluidRow(column(6,
        h3("The MMI scale of the shaking you felt is:"),
        h4("You entered"),
        verbatimTextOutput("inputValue"),
        h4("Which resulted in a prediction of "),
        verbatimTextOutput("prediction")
    ))
)
)
)
