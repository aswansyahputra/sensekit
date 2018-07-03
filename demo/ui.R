ui <- fluidPage(
  useShinyjs(),
  div(
    id = "instruksi",
    h1("Uji Sensoris Kopi"),
    splitLayout(
      tagList(
        textInput("nama", "Nama"),
        textInput("kode_panelis1", "Kode Panelis"),
        numericInput("usia", "Usia", value = NULL),
        radioButtons("jenis_kelamin", "Jenis kelamin", choices = c("Laki-laki", "Perempuan"))
      ),
      tagList(
        numericInput("tinggi", "Tinggi badan", value = NULL),
        numericInput("berat_badan", "Berat badan", value = NULL),
        textInput("asal_daerah", "Asal daerah"),
        textInput("suku", "Suku"),
        selectInput("frekuensi_konsumsi", "Frekuensi Minum Kopi", choices = c("Tidak pernah", "Jarang", "Kadang-kadang", "Sering", "Sangat sering"))
      )
    ),
    hr(),
    includeMarkdown("./helpfiles/instruksi.md"),
    actionButton("mulai", "Mulai")
  ),
  hidden(
    div(
      id = "kuesioner",
      helper(
        h1("Kuesioner"),
        type = "markdown",
        content = "instruksi"
      ),
      splitLayout(
        textInput("kode_sampel", "Kode sampel"),
        textInput("kode_panelis", "Kode panelis")
      ),
      splitLayout(
        panel(
          h3("Aroma"),
          tags$em("Bau yang dideteksi melalui hidung"),
          hr(),
          map2(
            aroma,
            aroma_deskripsi,
            ~ tagList(
              checkboxGroupInput(.x, .x, choices = c("Rendah" = 1, "Sedang" = 2, "Tinggi" = 3), inline = TRUE),
              tags$small(.y),
              hr()
            )
          )
        ),
        panel(
          h3("Rasa"),
          tags$em(""),
          hr(),
          map(
            rasa,
            ~ tagList(
              checkboxGroupInput(.x, .x, choices = c("Rendah" = 1, "Sedang" = 2, "Tinggi" = 3), inline = TRUE),
              hr()
            )
          )
        ),
        panel(
          h3("Mouthfeel"),
          tags$em("Sensasi saat sampel di mulut"),
          hr(),
          map2(
            mouthfeel,
            mouthfeel_deskripsi,
            ~ tagList(
              checkboxGroupInput(.x, .x, choices = c("Rendah" = 1, "Sedang" = 2, "Tinggi" = 3), inline = TRUE),
              tags$small(.y),
              hr()
            )
          )
        )
      ),
      splitLayout(
        panel(
          h3("Flavor")
        ),
        panel(
          h3("Aftertaste")
        )
      ),
      panel(
        h3("Uji Penerimaan"),
        checkboxGroupInput(
          "penerimaan",
          "Apakah anda menerima Kopi yang disajikan secara keseluruhan (aroma, rasa, mouthfeel, flavor, dan aftertaste)?",
          choices = c("Ya" = 1, "Tidak" = 0),
          inline = TRUE
        )
      ),
      
      hr(),
      splitLayout(
        actionButton("simpan", "Simpan"),
        actionButton("selanjutnya", "Selanjutnya"),
        actionButton("berhenti", "Berhenti")
      )
    )
  ),
  hidden(
    div(
      id = "terimakasih",
      h1("Terimakasih"),
      actionButton("baru", "Mulai baru")
    )
  )
)
