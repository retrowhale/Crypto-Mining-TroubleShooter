//
//  Brain.swift
//  Crypto Mining Trouble Shooter (UIKit)
//
//  Created by Deniz Donmezer on 2022-03-27.
//

import Foundation

struct Brain {
    
    var solutionNumber = 0
    
    // Solutions and Questions
    
    let solutions = [
        
        Solution(title: "Does your rig turn on?", choice1: "Yes! 👍", choice1Destination: 1, choice2: "No! 👎", choice2Destination: 2),
        Solution(title: "Does your rig mine crypto? Confirm your ethereum address is correct on the miner.  ", choice1: "Yes! 👍", choice1Destination: 3, choice2: "No! 👎", choice2Destination: 4),
        Solution(title: "Make sure all the cables are connected and power switch on Power Supply(PSU) is turned on position. Does your rig turn on after checking?" ,  choice1: "Yes! 👍", choice1Destination: 1, choice2: "No! 👎", choice2Destination: 6),
        Solution(title: "Does your rig mine at optimal hashrate? You can check if your rig mines at optimal speeds on retrowhale.ca/hashrate", choice1: "Yes! 👍", choice1Destination: 7, choice2: "No! 👎", choice2Destination: 5),
        Solution(title: "Makes sure the miner settings are correct on your Operation Sytem. You can check if your miner by going to retrowhale.ca/cryptofix address. Did it solve the problem?", choice1: "Yes! 👍", choice1Destination: 7, choice2: "No! 👎", choice2Destination: 8),
        Solution(title: "You should adjust to your Graphic Card(GPU) overclock settings to optimal speeds. Sometimes overheating makes GPU mine at slower speeds. Try cranking up the fans. Did it solve the problem?", choice1: "Yes! 👍", choice1Destination: 7, choice2: "No! 👎", choice2Destination: 8),
        Solution(title: "There are multiple factors when it comes to computer not starting. Make sure you are using correct power cables, you should not mix and match different brand PSU cables.Did it solve the problem?", choice1: "Yes! 👍", choice1Destination: 7, choice2: "No! 👎", choice2Destination: 8),
        Solution(title: "I am glad that your rig is up and running! If you still have more issues you can always contact to me at: deniz@retrowhale.ca", choice1: "The End", choice1Destination: 9, choice2: "Restart", choice2Destination: 0),
        Solution(title: "I am sorry to hear that your rig is not mining well. I am always ready to help, you can reach me at: deniz@retrowhale.ca", choice1: "The End", choice1Destination: 9, choice2: "Restart", choice2Destination: 0),
        Solution(title: "That's the end of this version of the app. Hope it helped you somehow. : )", choice1: "The End", choice1Destination: 9, choice2: "Restart", choice2Destination: 0),
    
    ]

    func getSoliutionTitle() -> String {
        return solutions[solutionNumber].title
    }
    
    func getChoice1() -> String {
        return solutions[solutionNumber].choice1
    }
    
    func getChoice2() -> String {
        return solutions[solutionNumber].choice2
    }
    
    
    
    mutating func nextSolution(userChoice: String) {
        
        let currentSolution = solutions[solutionNumber]
        if userChoice == currentSolution.choice1 {
            solutionNumber = currentSolution.choice1Destination
        }  else if userChoice == currentSolution.choice2 {
            solutionNumber = currentSolution.choice2Destination
        }
    }

}

