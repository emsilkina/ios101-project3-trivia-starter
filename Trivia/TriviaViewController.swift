//
//  TriviaViewController.swift
//  Trivia
//
//  Created by Emily Silkina on 6/19/25.
//

import UIKit

class TriviaViewController: UIViewController {
    
    @IBOutlet weak var QuestionNumberLabel: UILabel!
    @IBOutlet weak var QuestionLabel: UILabel!
    @IBOutlet weak var ThemeLabel: UILabel!
    
    @IBOutlet weak var Answer1: UILabel!
    
    
    @IBOutlet weak var Answer2: UILabel!
    
    @IBOutlet weak var Answer3: UILabel!
    @IBAction func Answer1(_ sender: Any) {
    }
    @IBAction func Answer2(_ sender: Any) {
    }
    @IBAction func Answer3(_ sender: Any) {
    }
    @IBAction func Answer4(_ sender: Any) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
//      Used ChatGPT to generate the questions
        let questions: [Question] = [
            Question(
                category: "Science",
                question: "What planet is known as the Red Planet?",
                answerOptions: ["Mars", "Venus", "Jupiter", "Saturn"]
            ),
            Question(
                category: "History",
                question: "Who was the first president of the United States?",
                answerOptions: ["George Washington", "Thomas Jefferson", "John Adams", "Abraham Lincoln"]
            ),
            Question(
                category: "Geography",
                question: "What is the capital of France?",
                answerOptions: ["Paris", "London", "Berlin", "Rome"]
            ),
            Question(
                category: "Math",
                question: "What is 9 x 7?",
                answerOptions: ["63", "56", "72", "49"]
            ),
            Question(
                category: "Literature",
                question: "Who wrote 'Romeo and Juliet'?",
                answerOptions: ["William Shakespeare", "Jane Austen", "Charles Dickens", "Mark Twain"]
            ),
            Question(
                category: "Movies",
                question: "Which movie features a character named Buzz Lightyear?",
                answerOptions: ["Toy Story", "Finding Nemo", "Cars", "The Incredibles"]
            ),
            Question(
                category: "Music",
                question: "Which artist sang 'Thriller'?",
                answerOptions: ["Michael Jackson", "Prince", "Elvis Presley", "Madonna"]
            ),
            Question(
                category: "Sports",
                question: "How many players are there in a soccer team on the field?",
                answerOptions: ["11", "9", "7", "10"]
            ),
            Question(
                category: "Technology",
                question: "What does CPU stand for?",
                answerOptions: ["Central Processing Unit", "Computer Power Unit", "Control Panel Unit", "Core Processor Utility"]
            ),
            Question(
                category: "Art",
                question: "Who painted the Mona Lisa?",
                answerOptions: ["Leonardo da Vinci", "Michelangelo", "Vincent van Gogh", "Pablo Picasso"]
            )
        ]

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
