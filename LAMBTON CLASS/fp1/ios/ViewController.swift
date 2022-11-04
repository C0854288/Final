//
//  ViewController.swift
//  ios
//
//  Created by Sunkara Vishnu vardhan on 22/06/22.
//

import UIKit

class ViewController: UIViewController
{
   
    @IBOutlet weak var questionCounter: UILabel!
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    

    
    @IBOutlet weak var politicalImages: UIImageView!
    
    @IBOutlet weak var questionLabel: UILabel!
    
    
    @IBOutlet weak var optionA: UIButton!
    
    
    @IBOutlet weak var optionB: UIButton!
    
    
    @IBOutlet weak var optionC: UIButton!
    
    @IBOutlet weak var optionD: UIButton!
    
    let allQuestions = QuestionList()
    var questionNumber:Int = 0
    var score:Double = 0
    var selectedAnswer : Int = 0
    var list = [Question]()
    
    var randomlist = [Question]()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        generateNewNumbers()
        
        updateQuestion()
    }
    
    func generateNewNumbers()
    {
        randomlist.removeAll()
        
        let uniqueNumbers = Int.getUniqueRandomNumbers(min: 0, max: 5, count: 3)
        
        for i in 0...2
          {
            randomlist.append(allQuestions.list[uniqueNumbers[i]])

          }
        
    }
    
    @IBAction func answerPressed(_ sender: UIButton)
    {
        print(sender.tag)
        if sender.tag == randomlist[questionNumber].correctAnswer
        {
           
            
            score+=1
        }
        else
        {
        
        }
        questionNumber+=1

        updateQuestion()
        
    }
    
    func updateQuestion()
    {
        
        if questionNumber < randomlist.count
        {
            politicalImages.image = UIImage(named: (randomlist[questionNumber].questionImage))
            questionLabel.text = randomlist[questionNumber].question
            optionA.setTitle(randomlist[questionNumber].optionA, for: UIControl.State.normal)
            optionB.setTitle(randomlist[questionNumber].optionB, for: UIControl.State.normal)
            optionC.setTitle(randomlist[questionNumber].optionC, for: UIControl.State.normal)
            optionD.setTitle(randomlist[questionNumber].optionD, for: UIControl.State.normal)
            selectedAnswer = randomlist[questionNumber].correctAnswer

            updateUI()
            
        }
        else
        {
            if (score == 3)
            {
                
               
                let alert = UIAlertController(title: "Excellent Work! Your score is \(score) Out of \(randomlist.count).you have completed the quiz with an Outstanding \((score/3)*100) percent", message: "End Of Quiz", preferredStyle: .alert)
            
         
                present(alert , animated: true, completion: nil)
               
            }
            
            else if (score == 2)
            {
                
                let alert = UIAlertController(title: "Very Good! Your score is \(score) Out of \(randomlist.count).you have completed the quiz with a \((score/3)*100) percent", message: "Please Try Again", preferredStyle: .alert)
                let restartAction = UIAlertAction(title: "Retake The Quiz", style: .default, handler: {action in self.restartQuiz()})
                alert.addAction(restartAction)
                present(alert , animated:true , completion: nil)
                
            }
            else if (score == 1)
            {
                
                let alert = UIAlertController(title: "Good Job! Your score is \(score) Out of \(randomlist.count).you have completed the quiz with a \((score/3)*100) percent", message: "Please Try Again", preferredStyle: .alert)
                let restartAction = UIAlertAction(title: "Retake The Quiz", style: .default, handler: { action in self.restartQuiz()})
                alert.addAction(restartAction)
                present(alert , animated: true,completion: nil)
                
            }
            
            else if (score == 0)
            {
                let alert = UIAlertController(title: "Please Try Again", message: "Your score is \(score) Out of \(randomlist.count).you have completed the quiz with a \((score/3)*100) percent", preferredStyle: .alert)
                
                let restartAction = UIAlertAction(title: "Retake The Quiz", style: .default, handler: {action in self.restartQuiz()})
                
                alert.addAction(restartAction)
                present(alert , animated: true,completion: nil)
                
                
            }
            
        }
    
    }
    
    func updateUI()
    {
        scoreLabel.text = "Score: \(score)"
        questionCounter.text = " Q : \(questionNumber+1)/\(randomlist.count)"
        
    }
    
    func restartQuiz()
    {
        
    generateNewNumbers()
     score = 0
        questionNumber = 0
        updateQuestion()
    }
}

extension Int
{

    static func getUniqueRandomNumbers(min: Int, max: Int, count: Int) -> [Int]
    {
        var set = Set<Int>()
        while set.count < count
        {
            set.insert(Int.random(in: min...max))
        }
        return Array(set)
    }

}

