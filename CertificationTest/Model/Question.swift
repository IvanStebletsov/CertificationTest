//
//  Question.swift
//  AppleDevelopmentTest
//
//  Created by Ivan Stebletsov on 08/12/2018.
//  Copyright © 2018 Ivan Stebletsov. All rights reserved.
//

import UIKit

struct Question {
    var image: UIImage
    var text: String
    var answer: [Answer]
    
    init(image: UIImage, text: String, answer: [Answer]) {
        self.image = image
        self.text = text
        self.answer = answer
    }
}
