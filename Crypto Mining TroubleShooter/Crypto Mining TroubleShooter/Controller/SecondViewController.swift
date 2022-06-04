//
//  Second View Controller.swift
//  Crypto Mining Trouble Shooter (UIKit)
//
//  Created by Deniz Donmezer on 2022-03-27.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var infoLabel: UILabel!
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
        infoLabel.text = solutionBrain.solutions[solutionIndex].infoTitle
        
        updateUI()
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.goToInfoPage))
        infoLabel.isUserInteractionEnabled = true
        infoLabel.addGestureRecognizer(tapGesture)
        self.navigationController?.navigationBar.backItem?.title = ""
        
    }
    
    @objc func goToInfoPage() {
        let webStoryBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let webVC = webStoryBoard.instantiateViewController(withIdentifier: "CustomWebViewController") as! CustomWebViewController
        webVC.url = URL(string: "https://retrowhale.ca/contact/")
        self.navigationController?.pushViewController(webVC, animated: true)
    }
    

    @IBAction func choiceMade(_ sender: UIButton) {
        
        solutionBrain.nextSolution(userChoice: sender.currentTitle!)
        
        updateUI()
        
    }
    
    
    // To call new text to VC
    func updateUI() {
        solutionLabel.text = solutionBrain.getSoliutionTitle()
        infoLabel.text = solutionBrain.getInfoTitle()
        choice1Button.setTitle(solutionBrain.getChoice1(), for: .normal)
        choice2Button.setTitle(solutionBrain.getChoice2(), for: .normal)
    }
    
}
