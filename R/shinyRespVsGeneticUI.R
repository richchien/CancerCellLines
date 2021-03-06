shinyRespVsGeneticUI <- function () {

  fluidPage(
    sidebarLayout(
      sidebarPanel(
        helpText("Correlate genomic and response data"),
        textInput("geneid", label = h3("Enter Gene Name"),
                  value = "TP53"),
        uiOutput('respUI'),
        selectInput("data_type", label = h3("Select a genomic data type"),
                    choices = list("Affy" = 'affy', "CCLE hybcap" = 'hybcap', "Cosmic CLP" = 'cosmicclp'),
                    selected = 'affy'),
        selectInput("output_option", label = h3("Generate"),
                    choices = list('Genomic feature on x-axis' = 1, 'Cell line on x-axis'=2, 'Data'=3),
                    selected = 1),
        h3("Plot Options:"),
        selectInput("tissue_option", label = "Select tissue categorisation",
                    choices = list('Crude' = 'crude', 'CCLE' = 'ccle', 'Eurofins'='eurofins', 'Cosmic CLP' = 'cosmic_clp'),
                    selected = 'crude'),
        checkboxInput("facet_option", label = "Facet by tissue"),
        checkboxInput("label_option", label = "Label cell lines", value = FALSE),
        sliderInput('plot_width', label = 'Control plot width', min=200, max=2000, value=600),
        sliderInput('plot_height', label = 'Control plot height', min=200, max=2000, value=400),
        uiOutput('tissuesUI')
        # submitButton('Submit')
      ),
      uiOutput('resultsUI')


    )
  )
}
