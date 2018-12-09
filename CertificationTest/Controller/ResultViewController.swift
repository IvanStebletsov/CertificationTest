//
//  ResultViewController.swift
//  AppleDevelopmentTest
//
//  Created by Ivan Stebletsov on 08/12/2018.
//  Copyright © 2018 Ivan Stebletsov. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var finalTestPoints = 0
    var percent = 0

    @IBOutlet weak var percentCorrectAnswers: UILabel!
    @IBOutlet weak var endTestButton: UIButton!
    @IBOutlet weak var partingWords: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.setGradientBackground(ColorOne: Colors.lightBlue, ColorTwo: Colors.deepBlue)
        endTestButton.setShadowAndRadius()
        setPercentCorrectAnswers()
        setPartingWords()
    }

    //MARK: - Function with calculation final percent of correct answers and choosing variation of parting words
    
    func setPercentCorrectAnswers() {
        percent = Int(Double(finalTestPoints) / Double(questions.count) * 1000 / 10)
        percentCorrectAnswers.text = String(percent) + "%"
    }
    
    func setPartingWords() {
        switch percent {
        case 0..<30:
            partingWords.text = "Похоже ты совсем не знаком с Xcode. Тебе еще нужно многому учиться."
        case 30..<50:
            partingWords.text = "А ты везунчик! Метод тыка - это не плохо, это - нормально."
        case 50..<80:
            partingWords.text = "Сразу видно, ты немного знаком с Xcode, но этого недостаточно."
        case 80...99:
            partingWords.text = "Еще чуть-чуууууть!!! Ты почти готов. Продолжай работать!"
        case 100:
            partingWords.text = "Ты все знаешь! Можешь смело идти сдавать сертификацию Apple!"
        default:
            partingWords.text = "Что-то пошло не так, но это не точно."
        }
    }
}
