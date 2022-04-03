//
//  ViewController.swift
//  Crypto Mining Trouble Shooter (UIKit)
//
//  Created by Deniz Donmezer on 2022-02-21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var btnStart: UIButton!
    @IBOutlet var lblDesc: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Crypto Mining TroubleShooter"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // To call Second VC
    @IBAction func btnStartTapped(_ sender: Any){
        let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
}

