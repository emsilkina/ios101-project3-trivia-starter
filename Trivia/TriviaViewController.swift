//
//  TriviaViewController.swift
//  Trivia
//
//  Created by Emily Silkina on 6/19/25.
//

import UIKit

class TriviaViewController: UIViewController {
    
    var questionNum = 0
    var questions: [Question] = []
    var correctlyAnswered = 0
    
    @IBOutlet weak var GameOverView: UIView!
    @IBOutlet weak var QuestionNumberLabel: UILabel!
    @IBOutlet weak var QuestionLabel: UILabel!
    @IBOutlet weak var ThemeLabel: UILabel!
    @IBOutlet weak var Answer1: UILabel!
    @IBOutlet weak var Answer2: UILabel!
    @IBOutlet weak var Answer3: UILabel!
    @IBOutlet weak var Answer4: UILabel!
    
    @IBOutlet weak var ScoreLabel: UILabel!
    
    @IBAction func Answer1Button(_ sender: Any) {
        checkAnswer(index: 0)
    }
    
    @IBAction func Answer2Button(_ sender: Any) {
        checkAnswer(index: 1)
    }
    
    @IBAction func Answer3Button(_ sender: Any) {
        checkAnswer(index: 2)
    }
    
    @IBAction func Answer4Button(_ sender: Any) {
        checkAnswer(index: 3)
    }
    
    @IBAction func RestartButton(_ sender: Any) {
        GameOverView.isHidden = true
        questionNum = 0
        correctlyAnswered = 0
        displayQuestion()
    }
    
    
    func nextQuestion() {
        if(questionNum<questions.count-1) {
            questionNum+=1
            displayQuestion()
        } else {
            GameOverView.isHidden = false
            ScoreLabel.text = "Score:  \(correctlyAnswered)/\(questions.count)"
        }
    }
    
    func checkAnswer(index: Int){
        if (index==questions[questionNum].correctOptionIndex) {
            correctlyAnswered+=1
        }
        nextQuestion()
    }
    
    func displayQuestion() {
        let question = questions[questionNum]
        QuestionNumberLabel.text = "Question \(questionNum + 1)/\(questions.count)"
        QuestionLabel.text = question.question
        ThemeLabel.text = question.category
        Answer1.text = question.answerOptions[0]
        Answer2.text = question.answerOptions[1]
        Answer3.text = question.answerOptions[2]
        Answer4.text = question.answerOptions[3]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        GameOverView.isHidden = true
//      Used ChatGPT to generate the questions
        questions = [
            Question(
                category: "Science",
                question: "What planet is known as the Red Planet?",
                answerOptions: ["Mars", "Venus", "Jupiter", "Saturn"],
                correctOptionIndex: 0
            ),
            Question(
                category: "History",
                question: "Who was the first president of the United States?",
                answerOptions: ["Thomas Jefferson", "John Adams", "Abraham Lincoln", "George Washington"],
                correctOptionIndex: 3
            ),
            Question(
                category: "Geography",
                question: "What is the capital of France?",
                answerOptions: ["London", "Paris",  "Berlin", "Rome"],
                correctOptionIndex: 1
            ),
            Question(
                category: "Math",
                question: "What is 9 x 7?",
                answerOptions: ["56", "72", "63", "49"],
                correctOptionIndex: 2
            ),
            Question(
                category: "Literature",
                question: "Who wrote 'Romeo and Juliet'?",
                answerOptions: ["William Shakespeare", "Jane Austen", "Charles Dickens", "Mark Twain"],
                correctOptionIndex: 0
            ),
            Question(
                category: "Movies",
                question: "Which movie features a character named Buzz Lightyear?",
                answerOptions: ["Finding Nemo", "Toy Story", "Cars", "The Incredibles"],
                correctOptionIndex: 1
            ),
            Question(
                category: "Music",
                question: "Which artist sang 'Thriller'?",
                answerOptions: ["Michael Jackson", "Prince", "Elvis Presley", "Madonna"],
                correctOptionIndex: 0
            ),
            Question(
                category: "Sports",
                question: "How many players are there in a soccer team on the field?",
                answerOptions: ["9", "7", "11", "10"],
                correctOptionIndex: 2
            ),
            Question(
                category: "Technology",
                question: "What does CPU stand for?",
                answerOptions: ["Central Processing Unit", "Computer Power Unit", "Control Panel Unit", "Core Processor Utility"],
                correctOptionIndex: 0
            ),
            Question(
                category: "Art",
                question: "Who painted the Mona Lisa?",
                answerOptions: ["Leonardo da Vinci", "Michelangelo", "Vincent van Gogh", "Pablo Picasso"],
                correctOptionIndex: 0
            )
        ]
        
        displayQuestion()
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
