//
//  StartTestViewController.swift
//  AppleDevelopmentTest
//
//  Created by Ivan Stebletsov on 08/12/2018.
//  Copyright © 2018 Ivan Stebletsov. All rights reserved.
//

import UIKit

class StartTestViewController: UIViewController {

    @IBOutlet weak var startTestButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.setGradientBackground(ColorOne: Colors.lightBlue, ColorTwo: Colors.deepBlue)
        
        startTestButton.layer.masksToBounds = true
        startTestButton.layer.cornerRadius = 10
        startTestButton.layer.shadowColor = UIColor.black.cgColor
        startTestButton.layer.shadowOffset = CGSize(width: 2, height: 2)
        startTestButton.layer.shadowOpacity = 0.5
        startTestButton.layer.shadowRadius = 5
        startTestButton.clipsToBounds = false
    }
    
    @IBAction func unwind(segue: UIStoryboardSegue) {}

}
