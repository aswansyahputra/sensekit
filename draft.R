if (interactive()) {
  library(shiny)
  
  shinyApp(
    ui = fluidPage(
      useShinyjs(),  # Set up shinyjs,
      textAreaInput("instruksi", "Beri instruksi"),
      numericInput("jumlah_atribut", "Jumlah atribut", value = 1),
      uiOutput("parameter_atribut"),
      actionButton("buat", "Buat kuesioner"),
      verbatimTextOutput("kontainer"),
      uiOutput("test")
    ),
    server = function(input, output) {
      paramater_atribut <- reactive({
        tagList(
          map(seq_along(rnorm(input$jumlah_atribut)), ~ )
          numericInput("skala_bawah", "Skala Bawah", value = 0),
          numericInput("skala_atas", "Skala Atas", value = 10),
        )
      })
      
      kontainer <- eventReactive(input$buat, {
        tagList(
          h4(input$instruksi),
          sliderInput("skala", "Skala", min = input$skala_bawah, max = input$skala_atas, value = input$skala_bawah)
        )
      })
      
      output$kontainer <- renderPrint({
        kontainer()
      })
      
      output$test <- renderUI({
        kontainer()
      })
      
    }
  )
}
