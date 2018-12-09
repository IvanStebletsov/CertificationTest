//
//  TestQuestions.swift
//  AppleDevelopmentTest
//
//  Created by Ivan Stebletsov on 08/12/2018.
//  Copyright © 2018 Ivan Stebletsov. All rights reserved.
//

import UIKit

enum QImages: String {
    case navigatorArea = "NavigatorArea"
    case utilityArea = "UtilityArea"
    case editorArea = "EditorArea"
    case toolbarArea = "ToolbarArea"
    case debagArea = "DebagArea"
    
    case segueShow = "SegueShow"
    case seguePresentModally = "SeguePresentModally"
    case seguePresentAsPopover = "SeguePresentAsPopover"
    
    case standardEditor = "StandardEditor"
    case assistantEditor = "AssistantEditor"
    case versionEditor = "VersionEditor"
    
    case projectNavigator = "ProjectNavigator"
    case sourceControlNavigator = "SourceControlNavigator"
    case symbolNavigator = "SymbolNavigator"
    case findNavigator = "FindNavigator"
    case issueNavigator = "IssueNavigator"
    case testNavigator = "TestNavigator"
    case debugNavigator = "DebugNavigator"
    case breakpointNavigator = "BreakpointNavigator"
    case reportNavigator = "ReportNavigator"
    }

var questions: [Question] = [
    
    //MARK: - Questions about areas of Xcode
    
    Question(image: UIImage(named: QImages.navigatorArea.rawValue)!,
             text: "Как называется выделенная область навигации в Xcode?",
             answer: [Answer(text: "Navigation Area", point: 1),
                      Answer(text: "Utility Area", point: 0),
                      Answer(text: "Editor Area", point: 0),
                      Answer(text: "Toolbar Area", point: 0)]),
    
    Question(image: UIImage(named: QImages.utilityArea.rawValue)!,
             text: "Как называется выделенная область навигации в Xcode?",
             answer: [Answer(text: "Debag Area", point: 0),
                      Answer(text: "Editor Area", point: 0),
                      Answer(text: "Navigation Area", point: 0),
                      Answer(text: "Utility Area", point: 1)]),
    
    Question(image: UIImage(named: QImages.editorArea.rawValue)!,
             text: "Как называется выделенная область навигации в Xcode?",
             answer: [Answer(text: "Utility Area", point: 0),
                      Answer(text: "Editor Area", point: 1),
                      Answer(text: "Toolbar Area", point: 0),
                      Answer(text: "Navigation Area", point: 0)]),
    
    Question(image: UIImage(named: QImages.toolbarArea.rawValue)!,
             text: "Как называется выделенная область навигации в Xcode?",
             answer: [Answer(text: "Utility Area", point: 0),
                      Answer(text: "Debag Area", point: 0),
                      Answer(text: "Navigation Area", point: 0),
                      Answer(text: "Toolbar Area", point: 1)]),
    
    Question(image: UIImage(named: QImages.debagArea.rawValue)!,
             text: "Как называется выделенная область навигации в Xcode?",
             answer: [Answer(text: "Editor Area", point: 0),
                      Answer(text: "Toolbar Area", point: 0),
                      Answer(text: "Debag Area", point: 1),
                      Answer(text: "Utility Area", point: 0)]),
    
    //MARK: - Questions about type of segues
    
    Question(image: UIImage(named: QImages.segueShow.rawValue)!,
             text: "Определеите название, выбранного сегвея по пиктограмме.",
             answer: [Answer(text: "Present Modally", point: 0),
                      Answer(text: "Show", point: 1),
                      Answer(text: "Present As Popover", point: 0)]),
    
    Question(image: UIImage(named: QImages.seguePresentModally.rawValue)!,
             text: "Определеите название, выбранного сегвея по пиктограмме.",
             answer: [Answer(text: "Show", point: 0),
                      Answer(text: "Present As Popover", point: 0),
                      Answer(text: "Present Modally", point: 1)]),
    
    Question(image: UIImage(named: QImages.seguePresentAsPopover.rawValue)!,
             text: "Определеите название, выбранного сегвея по пиктограмме.",
             answer: [Answer(text: "Present As Popover", point: 1),
                      Answer(text: "Present Modally", point: 0),
                      Answer(text: "Show", point: 1)]),
    
    //MARK: - Questions about additional editors in Xcode
    
    Question(image: UIImage(named: QImages.standardEditor.rawValue)!,
             text: "Что открывает этот элемент управления Xcode?",
             answer: [Answer(text: "Standard Editor", point: 1),
                      Answer(text: "Assistant Editor", point: 0),
                      Answer(text: "Version Editor", point: 0)]),
    
    Question(image: UIImage(named: QImages.assistantEditor.rawValue)!,
             text: "Что открывает этот элемент управления Xcode?",
             answer: [Answer(text: "Standard Editor", point: 0),
                      Answer(text: "Assistant Editor", point: 1),
                      Answer(text: "Version Editor", point: 0)]),
    
    Question(image: UIImage(named: QImages.versionEditor.rawValue)!,
             text: "Что открывает этот элемент управления Xcode?",
             answer: [Answer(text: "Standard Editor", point: 0),
                      Answer(text: "Assistant Editor", point: 0),
                      Answer(text: "Version Editor", point: 1)]),
    
    //MARK: - Questions about elements of Navigation Area
    
    Question(image: UIImage(named: QImages.projectNavigator.rawValue)!,
             text: "Что открывает этот элемент управления Navigation Area?",
             answer: [Answer(text: "Project Navigator", point: 1),
                      Answer(text: "Source Control Navigator", point: 0),
                      Answer(text: "Report Navigator", point: 0),
                      Answer(text: "Debug Navigator", point: 0)]),
    
    Question(image: UIImage(named: QImages.sourceControlNavigator.rawValue)!,
             text: "Что открывает этот элемент управления Navigation Area?",
             answer: [Answer(text: "Issue Navigator", point: 0),
                      Answer(text: "Source Control Navigator", point: 1),
                      Answer(text: "Breakpoint Navigator", point: 0),
                      Answer(text: "Find Navigator", point: 0)]),
    
    Question(image: UIImage(named: QImages.symbolNavigator.rawValue)!,
             text: "Что открывает этот элемент управления Navigation Area?",
             answer: [Answer(text: "Test Navigator", point: 0),
                      Answer(text: "Source Control Navigator", point: 0),
                      Answer(text: "Symbol Navigator", point: 1),
                      Answer(text: "Report Navigator", point: 0)]),
    
    Question(image: UIImage(named: QImages.findNavigator.rawValue)!,
             text: "Что открывает этот элемент управления Navigation Area?",
             answer: [Answer(text: "Project Navigator", point: 0),
                      Answer(text: "Breakpoint Navigator", point: 0),
                      Answer(text: "Issue Navigator", point: 0),
                      Answer(text: "Find Navigator", point: 1)]),
    
    Question(image: UIImage(named: QImages.issueNavigator.rawValue)!,
             text: "Что открывает этот элемент управления Navigation Area?",
             answer: [Answer(text: "Test Navigator", point: 0),
                      Answer(text: "Symbol Navigator", point: 0),
                      Answer(text: "Issue Navigator", point: 1),
                      Answer(text: "Breakpoint Navigator", point: 0)]),
    
    Question(image: UIImage(named: QImages.testNavigator.rawValue)!,
             text: "Что открывает этот элемент управления Navigation Area?",
             answer: [Answer(text: "Test Navigator", point: 1),
                      Answer(text: "Find Navigator", point: 0),
                      Answer(text: "Debug Navigator", point: 0),
                      Answer(text: "Report Navigator", point: 0)]),
    
    Question(image: UIImage(named: QImages.debugNavigator.rawValue)!,
             text: "Что открывает этот элемент управления Navigation Area?",
             answer: [Answer(text: "Debug Navigator", point: 1),
                      Answer(text: "Find Navigator", point: 0),
                      Answer(text: "Test Navigator", point: 0),
                      Answer(text: "Project Navigator", point: 0)]),
    
    Question(image: UIImage(named: QImages.breakpointNavigator.rawValue)!,
             text: "Что открывает этот элемент управления Navigation Area?",
             answer: [Answer(text: "Breakpoint Navigator", point: 1),
                      Answer(text: "Report Navigator", point: 0),
                      Answer(text: "Symbol Navigator", point: 0),
                      Answer(text: "Debug Navigator", point: 0)]),
    
    Question(image: UIImage(named: QImages.reportNavigator.rawValue)!,
             text: "Что открывает этот элемент управления Navigation Area?",
             answer: [Answer(text: "Report Navigator", point: 1),
                      Answer(text: "Source Control Navigator", point: 0),
                      Answer(text: "Symbol Navigator", point: 0),
                      Answer(text: "Debug Navigator", point: 0)]),
]
