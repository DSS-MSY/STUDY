
library(shiny)
library(e1071)

data(Titanic)
df <- as.data.frame(Titanic)


# 사이드바 코드 (R 코드를 이용하여 HTML 표현)
shinyUI( pageWithSidebar(
    headerPanel( "나이브 베이지안 분류를 통한 타이타닉 사망자 예측"),
    sidebarPanel(
        img(src="titanic.jpg"),
        h4("타이타닉 승선자 정보:"),
        br(),
        selectInput( "cl", "등급", levels(df[1,1]), "Crew"),
        selectInput( "se", "성별", levels(df[1,2]), "Male"),
        selectInput( "ag", "연령", levels(df[1,3]), "Adult"),
        br(),
        h1("예측:"),
        br(),
        h5("생존자가 많나요?"),
        textOutput("result")
    ),
    mainPanel(
        plotOutput('plot1')
    )
    ))

