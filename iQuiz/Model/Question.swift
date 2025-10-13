//
//  Questions.swift
//  iQuiz
//
//  Created by Tamires Corrêa on 02/10/25.
//

import Foundation

struct Question{
    var title: String
    var answers: [String]
    var imageName: String
    var correctAnswer: Int
}

let originalQuestions: [Question] = [
Question(title: "Essa obra está localizada em Brasília/DF, como se chama?", answers: ["Catedral Metropolitana de Brasília", "Igreja Católica de Brasília", "Templo de Brasília"], imageName: "CatedralBrasilia", correctAnswer: 0),
Question(title: "Essa obra está localizada em Curitiba/PR, como se chama?", answers: ["MAM (Museu de Arte Moderna)", "MON (Museu Oscar Niemeyer)", "MAC (Museu de Arte Contemporânea)"], imageName: "olho", correctAnswer: 1),
Question(title: "Essa obra está localizada em São Paulo/SP, como se chama?", answers: ["COPAN", "COBAN", "COFAN"], imageName: "Copan", correctAnswer: 0),
Question(title: "Essa obra está localizada em Brasília/DF, como se chama?", answers: ["Supremo Tribunal de Justiça", "Palácio do Planalto", "Congresso Nacional"], imageName: "congresso", correctAnswer: 2),
Question(title: "Essa obra está localizada em Niterói/RJ, como se chama?", answers: ["MON (Museu Oscar Niemeyer)", "MAM (Museu de Arte Moderna)", "MAC (Museu de Arte Contemporânea)"], imageName: "mac", correctAnswer: 2),
Question(title: "Essa obra está localizada em Brasília/DF, como se chama?", answers: ["Supremo Tribunal de Justiça", "Palácio do Planalto", "Palácio da Alvorada"], imageName: "palacio planalto", correctAnswer: 1),
Question(title: "Essa obra está localizada em Belo Horizonte/MG, como se chama?", answers: ["Igreja de Pampulha", "Igreja de Minas Gerais", "Igreja São Luiz"], imageName: "pampulha", correctAnswer: 0),
Question(title: "Essa obra está localizada em Brasília/DF, como se chama?", answers: ["Supremo Tribunal de Justiça", "Palácio do Planalto", "Palácio da Alvorada"], imageName: "alvorada", correctAnswer: 2),
Question(title: "Essa obra está localizada em Niterói/RJ, como se chama?", answers: ["Teatro Oscar Niemeyer", "Teatro Popular", "Teatro de Niterói"], imageName: "caminho", correctAnswer: 1),
Question(title: "Essa obra está localizada em Brasília/DF, como se chama?", answers: ["Supremo Tribunal de Justiça", "Palácio do Planalto", "Palácio da Justiça"], imageName: "stf", correctAnswer: 0)
]

var questions: [Question] = originalQuestions.shuffled()
