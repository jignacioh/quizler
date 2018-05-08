//
//  QuestionBank.swift
//  Quizzler
//
//  Created by juan hurtado on 4/03/18.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation

class QuestionBank{
    
    var listBank = [Question]()
    
    init() {
        //listBank=list
        // Creating a quiz item and appending it to the list
        let item = Question(question: "Valentine\'s day is banned in Saudi Arabia.", correctAnswer: true)
        
        // Add the Question to the list of questions
        listBank.append(item)
        
        // skipping one step and just creating the quiz item inside the append function
        listBank.append(Question(question: "A slug\'s blood is green.", correctAnswer: true))
        
        listBank.append(Question(question: "Approximately one quarter of human bones are in the feet.", correctAnswer: true))
        
        listBank.append(Question(question: "The total surface area of two human lungs is approximately 70 square metres.", correctAnswer: true))
        
        listBank.append(Question(question: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", correctAnswer: true))
        
        listBank.append(Question(question: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", correctAnswer: false))
        
        listBank.append(Question(question: "It is illegal to pee in the Ocean in Portugal.", correctAnswer: true))
        
        listBank.append(Question(question: "You can lead a cow down stairs but not up stairs.", correctAnswer: false))
        
        listBank.append(Question(question: "Google was originally called \"Backrub\".", correctAnswer: true))
        
        listBank.append(Question(question: "Buzz Aldrin\'s mother\'s maiden name was \"Moon\".", correctAnswer: true))
        
        listBank.append(Question(question: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", correctAnswer: false))
        
        listBank.append(Question(question: "No piece of square dry paper can be folded in half more than 7 times.", correctAnswer: false))
        
        listBank.append(Question(question: "Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.", correctAnswer: true))

    
    }
    
}
