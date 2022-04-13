//
//  CustomWebViewController.swift
//  Crypto Mining TroubleShooter
//
//  Created by Deniz Donmezer on 2022-04-13.
//

import UIKit
import WebKit

class CustomWebViewController: UIViewController {

    var url : URL?
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if url != nil {
        
        webView.load(URLRequest(url: url!))
        } else {
            self.dismiss(animated: true)
        }
    }
}
