//
//  ViewController.swift
//  niugu99
//
//  Created by user on 17/7/20.
//  Copyright © 2017年 user. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var homeBut: UIButton!
    @IBOutlet weak var liveBut: UIButton!
    @IBOutlet weak var newBut: UIButton!
    @IBOutlet weak var moveView: UIView!
    @IBOutlet weak var aboutBut: UIButton!
    @IBOutlet weak var userBut: UIButton!
    @IBOutlet weak var complainBut: UIButton!
    @IBOutlet weak var consultBut: UIButton!
    var hideMove=true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        homeBut.addTarget(self, action:#selector(homeClick(_:)), for: .touchUpInside)
    
        liveBut.addTarget(self, action:#selector(liveClick(_:)), for: .touchUpInside)
        newBut.addTarget(self, action:#selector(newClick(_:)), for: .touchUpInside)
        
        aboutBut.addTarget(self, action:#selector(aboutClick(_:)), for: .touchUpInside)
        userBut.addTarget(self, action:#selector(userClick(_:)), for: .touchUpInside)
        complainBut.addTarget(self, action:#selector(complainClick(_:)), for: .touchUpInside)
        consultBut.addTarget(self, action:#selector(consultClick(_:)), for: .touchUpInside)
        
        
    }
    
    
    func aboutClick(_ button:UIButton){
        let sb = UIStoryboard(name: "Main", bundle:nil)
        let live = sb.instantiateViewController(withIdentifier: "live") as! LiveController
        live.textUrl="http://hkfg518.com/content/aboutUs/"
        live.textTitle="关于我们"
        self.navigationController?.pushViewController(live, animated: true)
    }
    func userClick(_ button:UIButton){
        let sb = UIStoryboard(name: "Main", bundle:nil)
        let live = sb.instantiateViewController(withIdentifier: "live") as! LiveController
        live.textUrl="http://www.niugu99.com/tedu/"
        live.textTitle="新手入门"
        self.navigationController?.pushViewController(live, animated: true)
    }
    func complainClick(_ button:UIButton){
        let sb = UIStoryboard(name: "Main", bundle:nil)
        let live = sb.instantiateViewController(withIdentifier: "live") as! LiveController
        live.textUrl="http://www.2water2.com/wpqb/complaint2/complaint.php"
        live.textTitle="投诉建议"
        self.navigationController?.pushViewController(live, animated: true)
    }
    func consultClick(_ button:UIButton){
        let sb = UIStoryboard(name: "Main", bundle:nil)
        let live = sb.instantiateViewController(withIdentifier: "live") as! LiveController
        live.textUrl="http://www.niugu99.com/zx/"
        live.textTitle="人工咨询"
        self.navigationController?.pushViewController(live, animated: true)
    }
    
    
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }

    func homeClick(_ button:UIButton){
        let sb = UIStoryboard(name: "Main", bundle:nil)
        let live = sb.instantiateViewController(withIdentifier: "live") as! LiveController
        live.textUrl="http://stock.hkfg518.com/?proxyid=36&from=singlemessage&isappinstalled=0#/home"
        live.textTitle="价差宝"
        //VC为该界面storyboardID，Main.storyboard中选中该界面View，Identifier inspector中修改
        self.navigationController?.pushViewController(live, animated: true)
        
    }
    
    func liveClick(_ button:UIButton){
        let sb = UIStoryboard(name: "Main", bundle:nil)
        let live = sb.instantiateViewController(withIdentifier: "live") as! LiveController
        live.textUrl="http://m.niugu99.com"
        live.textTitle="直播室"
        self.navigationController?.pushViewController(live, animated: true)
        
    }
    
    func newClick(_ button:UIButton){
        if(moveView.isHidden){
            moveView.isHidden=false
        }else{
            moveView.isHidden=true

        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        
    }


}

