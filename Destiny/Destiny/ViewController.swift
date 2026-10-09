import UIKit
import Foundation

class ViewController: UIViewController 
    {
    
        // Outlets for the UI elements
        @IBOutlet weak var storyLabel: UILabel!
        @IBOutlet weak var choice1Button: UIButton!
        @IBOutlet weak var choice2Button: UIButton!
    
        // Create the game state
        var game = Destiny()
    
        override func viewDidLoad() 
        {
            super.viewDidLoad()
            updateUI()
        }
    
        // Action for button presses
        @IBAction func choiceMade(_ sender: UIButton) 
        {
            if sender == choice1Button
            {
                game.currentStory = game.stories[game.currentStory].choice1index
            } 
            else
            {
                game.currentStory = game.stories[game.currentStory].choice2index
            }
            updateUI()
        }
    
        // Function to update the UI with the current story
        func updateUI() 
        {
            storyLabel.text = game.currentStoryText()
            choice1Button.setTitle(game.currentChoice1(), for: .normal)
            choice2Button.setTitle(game.currentChoice2(), for: .normal)
        }
}

struct Story 
    {
        let storyText: String
        let choice1: String
        let choice1index: Int
        let choice2: String
        let choice2index: Int
    
        init(storyText: String, choice1: String, choice1index: Int, choice2: String, choice2index: Int) {
        self.storyText = storyText
        self.choice1 = choice1
        self.choice1index = choice1index
        self.choice2 = choice2
        self.choice2index = choice2index
        
    }
}
