import Foundation

class Destiny 
{
    var currentStory: Int = 0
    let stories : [Story] =
    [
        Story(storyText: "You are in a dark forest. You see two paths ahead of you...",
              choice1: "Take the left path", choice1index: 1,
              choice2: "Take the right path", choice2index: 2),
        Story(storyText: "You've taken the left path and found a treasure!",
              choice1: "Open the treasure", choice1index: 3,
              choice2: "Leave it alone", choice2index: 3),
        Story(storyText: "You've taken the right path and met a dragon!",
              choice1: "Fight the dragon", choice1index: 3,
              choice2: "Run away", choice2index: 3),
        Story(storyText: "The end of your adventure.",
              choice1: "Restart", choice1index: 0,
              choice2: "Exit", choice2index: -1)
    ]
    
    func currentStoryText() -> String 
    {
        return stories[currentStory].storyText
    }
    
    func currentChoice1() -> String 
    {
        return stories[currentStory].choice1
    }
    
    func currentChoice2() -> String 
    {
        return stories[currentStory].choice2
    }
}
