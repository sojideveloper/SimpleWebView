//
//  WebViewController.swift
//  SimpleWebView
//
//  Created by iwritecode on 4/5/16.
//  Copyright © 2016 sojiwritescode. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var addressBar: UISearchBar!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = NSURL(string: "http://apple.com")
        let urlRequest = NSURLRequest(URL: url!)
        
        webView.loadRequest(urlRequest)
        
        addressBar.text = "http://"
        
    }
    
    func searchBarSearchButtonClicked(searchBar: UISearchBar!) {
        
        searchBar.resignFirstResponder()
        
        let url = NSURL(string: addressBar.text!)
        let request = NSURLRequest(URL: url!)
        
        webView.loadRequest(request)
        
    }
    
    func webviewDidStartLoad(_ : UIWebView) {
        activityIndicator.startAnimating()
    }
    
    func webviewDidFinishLoad(_ : UIWebView) {
        activityIndicator.stopAnimating()
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        addressBar.resignFirstResponder()
    }
    
}
