library(shiny)

shinyUI(fluidPage(
    h3('Basal Metabolic Rate Calculator')
    
    ,sidebarLayout(
        sidebarPanel(
            # Input
            h3('Personal Information')
            # Gender
            ,radioButtons('gender', 'Gender', c('Male' = 'm', 'Female' = 'f'))
            # Age
            ,numericInput('age', 'Age', 30, min = 0, max = 150, step = 1)
            # Height
            ,numericInput('height', 'Height (cm)', 170, min = 0, max = 250, step = 1)   
            # Weight
            ,numericInput('weight', 'Weight (kg)', 70, min = 0, max = 300, step = 1)
            # Physical Activity
            ,radioButtons('activity', 'Level of physical activity',
                          c('Little / no exercise' = 1
                            ,'Light exercise (1-3 days per week)' = 2
                            ,'Moderate exercise (3-5 days per week)' = 3
                            ,'Very active (6-7 days per week)' = 4
                            ,'Extra active (very active & physical job)' = 5
                          )
            )
        )
        
        ,mainPanel(
            # Input confirmation display
            h3('Your input')
            # Gender
            ,p('Gender')
            ,verbatimTextOutput('gender')
            # Age
            ,p('Age')
            ,verbatimTextOutput('age')
            # Height
            ,p('Height (cm)')
            ,verbatimTextOutput('height')
            # Weight
            ,p('Weight (kg)')
            ,verbatimTextOutput('weight')
            # Level of physical activity
            ,p('Level of physical activity')
            ,verbatimTextOutput('activity')
            
            # Data output
            ,h3('Results')
            ,p('Daily calorie intake reqired to maintain weight')
            ,verbatimTextOutput('calorie')
        )
    )
))
