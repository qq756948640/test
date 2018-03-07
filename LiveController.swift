//
//  LiveController.swift
//  niugu99
//
//  Created by user on 17/7/21.
//  Copyright © 2017年 user. All rights reserved.
//

import UIKit

class LiveController: UIViewController {
    
    @IBOutlet weak var liveTitle: UINavigationItem!
    var textUrl:String = ""
    var textTitle:String = ""
    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        liveTitle.title=textTitle
        liveTitle.backBarButtonItem?.title="后退"
        let urlStr=URL(string:textUrl)
        let requestStr=URLRequest(url:urlStr!)
        webView.loadRequest(requestStr)
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationController?.setNavigationBarHidden(false, animated: false)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        print("------------prepare")
    }
    

}
