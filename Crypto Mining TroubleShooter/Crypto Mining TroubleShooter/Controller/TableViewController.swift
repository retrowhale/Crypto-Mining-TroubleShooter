//
//  TableViewController.swift
//  Crypto Mining TroubleShooter
//
//  Created by Deniz Donmezer on 2022-04-13.
//

import UIKit

class TableViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var postList : [PostResponse]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        let nib = UINib.init(nibName: "DataCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "dataCell")
        // Do any additional setup after loading the view.
    }
    
}

extension TableViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "dataCell", for: indexPath) as! DataCell
        cell.configure(title: postList?[indexPath.row].name ?? "")
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return postList?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let webStoryBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let webVC = webStoryBoard.instantiateViewController(withIdentifier: "CustomWebViewController") as! CustomWebViewController
        webVC.url = URL(string: postList?[indexPath.row].link ?? "www.google.com")
        self.navigationController?.pushViewController(webVC, animated: true)
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
}
