library(shiny)

MMI<- function (feel) {
        returnMessage <- "Nothing entered yet."
        if (identical(feel,"Barely sensed only by a very few people.")){
                returnMessage<-"The MMI scale is I: Imperceptible"
        }
        else if (feel=="Felt only by a few people at rest in houses or on upper floors."){
                returnMessage<-"The MMI scale is II: Scarcely felt"
        }
        else if (feel== "Felt indoors as a light vibration. Hanging objects may swing slightly."){
                returnMessage<-"The MMI scale is III:  Weak"
        }
        else if (feel== "Generally noticed indoors, but not outside, as a moderate vibration or jolt. Light sleepers may be awakened. Walls may creak, and glassware, crockery, doors or windows rattle."){
                returnMessage<-"The MMI scale is IV:  Largely observed"
        }
        else if(feel=="Generally felt outside and by almost everyone indoors. Most sleepers are awakened and a few people alarmed. Small objects are shifted or overturned, and pictures knock against the wall. Some glassware and crockery may break, and loosely secured doors may swing open and shut."){
                returnMessage<-"The MMI scale is V: Strong"
        }
        else if(feel=="Felt by all. People and animals are alarmed, and many run outside. Walking steadily is difficult. Furniture and appliances may move on smooth surfaces, and objects fall from walls and shelves. Glassware and crockery break. Slight non-structural damage to buildings may occur."){
                returnMessage<-"The MMI scale is VI: Slightly damaging "
        }
        else if(feel=="People experience difficulty standing. Furniture and appliances are shifted. Substantial damage to fragile or unsecured objects. A few weak buildings are damaged."){
                returnMessage<-"The MMI scale is VII: Damaging [GENERAL ALARM]"
        }
        else if(feel=="A few buildings are damaged and some weak buildings are destroyed."){
                returnMessage<-"The MMI scale is VIII: Heavily damaging [ALARM]"
        }
        else if(feel=="Some buildings are damaged and many weak buildings are destroyed."){
                returnMessage<-"The MMI scale is IX: Destructive"
        }
        else if(feel=="Many buildings are damaged and most weak buildings are destroyed."){
                returnMessage<-"The MMI scale is X: Very destructive"
        }
        else if(feel=="Most buildings are damaged and many buildings are destroyed."){
                returnMessage<-"The MMI scale is XI: Devastating"
        }
        else if (feel=="All buildings are damaged and most buildings are destroyed."){
                returnMessage<-"The MMI scale is XII: Completely devastating"
        }
        returnMessage
}

shinyServer(
  function(input, output) {
    output$inputValue <- renderPrint({input$feel})
    output$prediction <- renderPrint({MMI(input$feel)})
  }
)

