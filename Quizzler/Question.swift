//
//  Question.swift
//  Quizzler
//
//  Created by juan hurtado on 4/03/18.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation

class Question {
    
    let questionText :String
    let answer : Bool
    
    init(question:String,correctAnswer:Bool) {
        questionText=question
        answer=correctAnswer
        
    }
}



//let questionObj=Question(question:"a", correctAnswer:true)
