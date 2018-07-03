server <- function(input, output, session) {
  observe_helpers()
  
  observeEvent(input$mulai, {
    hide("instruksi")
    show("kuesioner")
  })
  
  observeEvent(input$selanjutnya, {
    shinyjs::reset("kuesioner")
  })
  
  observeEvent(input$berhenti, {
    show("terimakasih")
    hide("kuesioner")
  })
  
  observeEvent(input$baru, {
    hide("terimakasih")
    show("instruksi")
  })
}