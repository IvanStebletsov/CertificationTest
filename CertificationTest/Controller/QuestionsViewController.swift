//
//  ViewController.swift
//  AppleDevelopmentTest
//
//  Created by Ivan Stebletsov on 07/12/2018.
//  Copyright © 2018 Ivan Stebletsov. All rights reserved.
//

import UIKit

class QuestionsViewController: UIViewController {
    
    var testPoints = 0
    var currentQuestion = 0
    
    let questionsForTest = questions.shuffled()
    var answersForQuestion = [Answer]()
    
    @IBOutlet weak var progressLine: UIProgressView!
    @IBOutlet weak var questionNumber: UINavigationItem!
    
    @IBOutlet weak var questionImage: UIImageView!
    @IBOutlet weak var questionText: UILabel!
    
    @IBOutlet weak var buttonsStackView: UIStackView!
    @IBOutlet weak var answerOneButton: UIButton!
    @IBOutlet weak var answerTwoButton: UIButton!
    @IBOutlet weak var answerThreeButton: UIButton!
    @IBOutlet weak var answerFourButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.setGradientBackground(ColorOne: Colors.lightBlue, ColorTwo: Colors.deepBlue)
        progressLine.progress = 0.0
        questionImage.setShadow()
        answerOneButton.setShadowAndRadius()
        answerTwoButton.setShadowAndRadius()
        answerThreeButton.setShadowAndRadius()
        answerFourButton.setShadowAndRadius()
        
        askAQuestion()
    }
    
     //MARK: - Prepare for segue on Result Page and transfer final test points

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let finalPage = segue.destination as? ResultViewController {
         finalPage.finalTestPoints = testPoints
        }
    }
    
     //MARK: - Function with ask a question logic
    
    func askAQuestion() {
        guard currentQuestion < questionsForTest.count else { performSegue(withIdentifier: "ShowResult", sender: self); return }
        
        progressLine.progress += 1.0 / Float(questionsForTest.count + 1)
        
        answersForQuestion = questionsForTest[currentQuestion].answer.shuffled()
        
        questionNumber.title = "Вопрос № \(currentQuestion + 1)"
        questionImage.image = questionsForTest[currentQuestion].image
        questionText.text = questionsForTest[currentQuestion].text
        
        switch answersForQuestion.count {
        case 4:
            answerFourButton.isInvisible(bool: false)
            answerOneButton.setTitle(answersForQuestion[0].text, for: .normal)
            answerTwoButton.setTitle(answersForQuestion[1].text, for: .normal)
            answerThreeButton.setTitle(answersForQuestion[2].text, for: .normal)
            answerFourButton.setTitle(answersForQuestion[3].text, for: .normal)
        case 3:
            answerFourButton.isInvisible(bool: true)
            answerOneButton.setTitle(answersForQuestion[0].text, for: .normal)
            answerTwoButton.setTitle(answersForQuestion[1].text, for: .normal)
            answerThreeButton.setTitle(answersForQuestion[2].text, for: .normal)
        default:
            return
        }
    }
    
    //MARK: - @IBActions for four buttons
    
    @IBAction func takeAnswerOne(_ sender: UIButton) {
        testPoints += answersForQuestion[0].point
        currentQuestion += 1
        askAQuestion()
    }
    
    @IBAction func takeAnswerTwo(_ sender: UIButton) {
        testPoints += answersForQuestion[1].point
        currentQuestion += 1
        askAQuestion()
    }
    
    @IBAction func takeAnswerThree(_ sender: UIButton) {
        testPoints += answersForQuestion[2].point
        currentQuestion += 1
        askAQuestion()
    }
    
    @IBAction func takeAnswerFour(_ sender: UIButton) {
        testPoints += answersForQuestion[3].point
        currentQuestion += 1
        askAQuestion()
    }
    
}

