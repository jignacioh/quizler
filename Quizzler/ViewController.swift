//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    //Place your instance variables here
    
    let allQuestions = QuestionBank()
    var pickerAnswer : Bool=false
    var questionNumber : Int = 0
    var scoreTotal : Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextQuestion()
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        if sender.tag==1 {
            pickerAnswer=true
        }else if sender.tag==2{
            pickerAnswer=false
        }
        checkAnswer()
    }
    
    
    func updateUI() {
        scoreLabel.text="Score: \(scoreTotal)"
        progressLabel.text="Question: \(questionNumber+1)/13"
        progressBar.frame.size.width=(view.frame.size.width/13)*CGFloat(questionNumber+1)
    }
    

    func nextQuestion() {
        if questionNumber<allQuestions.listBank.count {
            let question=allQuestions.listBank[questionNumber]
            questionLabel.text=question.questionText
            updateUI()
        }else{
            print("End Quiza")
            let alert=UIAlertController.init(title: "Awesome", message: "You win", preferredStyle: .alert)
            let restartAction=UIAlertAction.init(title: "Restart", style: .default, handler: { (UIAlertAction) in
                self.startOver()
            })
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
        }
    }
    
    
    func checkAnswer() {
        let firstQuestion=allQuestions.listBank[questionNumber]
        if firstQuestion.answer==pickerAnswer {
            print("correct")
            ProgressHUD.showSuccess("Success!!")
            scoreTotal+=1
        }else{
            print("incorrect")
            ProgressHUD.showError("Error!!")
            scoreTotal-=1
        }
        questionNumber+=1
        nextQuestion()
        
    }
    
    
    func startOver() {
       questionNumber=0
       scoreTotal=0
       updateUI()
       nextQuestion()
    }
    

    
}
