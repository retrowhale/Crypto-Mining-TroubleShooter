//
//  Second View Controller.swift
//  Crypto Mining Trouble Shooter (UIKit)
//
//  Created by Deniz Donmezer on 2022-03-27.
//

import UIKit

class SecondViewController: UIViewController {
    
    var solutionBrain = Brain()
    
    @IBOutlet weak var solutionLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    
    // calling info on the VC before it opens
    var solutionIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // To call text from brain to screen
        solutionLabel.text = solutionBrain.solutions[solutionIndex].title
        
        updateUI()
        
    }
    

    @IBAction func choiceMade(_ sender: UIButton) {
        
        solutionBrain.nextSolution(userChoice: sender.currentTitle!)
        
        updateUI()
        
    }
    
    
    // To call new text to VC
    func updateUI() {
        solutionLabel.text = solutionBrain.getSoliutionTitle()
        choice1Button.setTitle(solutionBrain.getChoice1(), for: .normal)
        choice2Button.setTitle(solutionBrain.getChoice2(), for: .normal)
    }
    
}
