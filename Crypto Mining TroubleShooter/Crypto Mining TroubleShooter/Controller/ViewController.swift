//
//  ViewController.swift
//  Crypto Mining Trouble Shooter (UIKit)
//
//  Created by Deniz Donmezer on 2022-02-21.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var usdPriceLabel: UILabel!
    @IBOutlet var btnStart: UIButton!
    @IBOutlet var lblDesc: UILabel!
    @IBOutlet var btnTwo: UIButton!
    var postList : [PostResponse]?
    var spinner = UIActivityIndicatorView(style: UIActivityIndicatorView.Style.large)
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Crypto Mining TroubleShooter"
        fetch()
        getPostList()
        spinner.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(spinner)
        spinner.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        spinner.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // To call Second VC
    @IBAction func btnStartTapped(_ sender: Any){
        let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
    
    //To call Third VC
    @IBAction func btnTwoTapped(_ sender: Any){
        if self.postList != nil && !self.postList!.isEmpty{
            let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "TableViewController") as! TableViewController
            nextVC.postList = self.postList
            self.navigationController?.pushViewController(nextVC, animated: true)
        }else {
            getPostList()
        }
        
    }
    
    
    // To call API
    func fetch() {
        let task = URLSession.shared.dataTask(with: URL(string: "https://min-api.cryptocompare.com/data/price?fsym=ETH&tsyms=USD&api_key=d16d8dc63b6abf6d1f98d55038be15583e83c5353e5fc4db9df2dc0acca137e8")!) { data, response, error in
            if let data = data {
                do {
                    let result = try JSONDecoder().decode(EthereumPrice.self, from: data)
                    self.usdPrice = result.usd
                } catch {
                    debugPrint(data)
                }
            }
        }
        task.resume()
    }
    var usdPrice : Double? {
        didSet {
            DispatchQueue.main.async {
                self.usdPriceLabel.text = "Ethereum Price: $\(self.usdPrice ?? 0.0)"
            }
        }
        
    }
    func getPostList() {
        spinner.startAnimating()
        let task = URLSession.shared.dataTask(with: URL(string: "https://retrowhale.ca/linkList")!) { data, response, error in
            if let data = data {
                do {
                    let result = try JSONDecoder().decode(Posts.self, from: data)
                    self.postList = result.Objects
                } catch {
                    debugPrint(data)
                }
            }
            if error != nil {
                DispatchQueue.main.async {
                    let alert = UIAlertController(title: "Alert", message: error?.localizedDescription, preferredStyle: UIAlertController.Style.alert)
                    alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
                    self.present(alert, animated: true, completion: nil)
                }
                
            }
            DispatchQueue.main.async {
                self.spinner.stopAnimating()
            }
        }
        task.resume()
    }
}




