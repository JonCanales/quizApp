//
//  ViewController.swift
//  quizApp
//
//  Created by Jonathan Canales on 2/18/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var trueButton: UIButton!
    
    @IBOutlet weak var falseButton: UIButton!
    
    @IBOutlet weak var quesions: UILabel!
    
    var questionNumber = 0
    
    //Structures or Classes allow you to store two different data types together
    
    var questionBank = [ [" 4+2 = 7","False"], ["5+3=8","True"], ["Fishes Drink Water","False"] ]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }
    
    @objc func updateUI(){
        quesions.text = questionBank[questionNumber][0]
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        
        
    }
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        /*
        questionNumber += 1
        let userInput = sender.currentTitle!
        let actualAnswer = questionBank[questionNumber][1]
        updateUI()
        */
        let userInput = sender.currentTitle!
        if userInput == questionBank[questionNumber][1]{
            sender.backgroundColor = UIColor.green
        }
        else{
            sender.backgroundColor = UIColor.red
        }
        
        if questionNumber + 1 < questionBank.count{
            questionNumber += 1
        }
        else {
            questionNumber = 0
        }
        
        Timer.scheduledTimer(timeInterval: 0.4, target: self, selector: #selector(updateUI), userInfo: nil, repeats: true)
        
    }
   


}

