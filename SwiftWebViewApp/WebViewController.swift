//
//  WebViewController.swift
//  SwiftWebViewApp
//
//  Created by Natsumo Ikeda on 2016/10/25.
//  Copyright 2019 FUJITSU CLOUD TECHNOLOGIES LIMITED All Rights Reserved.
//

import UIKit

class WebViewController: UIViewController {
    // WebView
    @IBOutlet weak var webView: UIWebView!
    // index.htmlの公開URL
    let url = "YOUR_HTML_PUBLIC_URL"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // スクロールを有効にする
        webView.scrollView.contentOffset.y = 0
        webView.scrollView.isScrollEnabled = true
        
        // webViewに表示する
        guard let nsurl = URL(string: url) else { return }
        let request = URLRequest(url: nsurl)
        self.webView.loadRequest(request)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
