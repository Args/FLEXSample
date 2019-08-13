//
//  WebViewController.swift
//  ObjcXSwift
//
//  Created by LDJ on 2019/8/12.
//  Copyright © 2019 WanTu. All rights reserved.
//

import UIKit
import WebKit
class WebViewController: UIViewController,WKNavigationDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.white
        self.setupWebView()
        let web_url = URL.init(string: "https://www.github.com")
        self.webView.load(URLRequest.init(url: web_url!))
        let close = UIBarButtonItem(title: "close", style: .done, target: self, action: #selector(closeOnClick))
        self.navigationItem.rightBarButtonItem = close
    }
    @objc func closeOnClick(){
        self .dismiss(animated: true) {
            
        }
    }
    func setupWebView() {
        self.view.addSubview(self.webView)
    }
    
    
    //MARK:-WKNavigationDelegate
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
    }
    
    func webView(_ webView: WKWebView, didCommit navigation: WKNavigation!) {
    }

    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {

    }
    
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
    }
    
    func webView(_ webView: WKWebView, didReceiveServerRedirectForProvisionalNavigation navigation: WKNavigation!) {
    }
    
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        decisionHandler(WKNavigationActionPolicy.allow)
    }
    
    func webView(_ webView: WKWebView, decidePolicyFor navigationResponse: WKNavigationResponse, decisionHandler: @escaping (WKNavigationResponsePolicy) -> Void) {
        decisionHandler(WKNavigationResponsePolicy.allow)
    }
    
    //MARK:-WKScriptMessageHandler
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        let messageDic = message.body
        print(messageDic)
        
    }
    
    //MARK:-lazy
    lazy var webView: WKWebView = {
        let myWebView = WKWebView.init(frame: self.view.frame)
        myWebView.navigationDelegate = self
        return myWebView
    }()
    
    lazy var webConfiguration: WKWebViewConfiguration = {
        let configuration = WKWebViewConfiguration.init()
        let preferences = WKPreferences.init()
        preferences.javaScriptCanOpenWindowsAutomatically = true
        configuration.preferences = preferences

        return configuration;
    }()
}
