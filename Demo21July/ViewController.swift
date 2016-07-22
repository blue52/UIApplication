//
//  ViewController.swift
//  Demo21July
//
//  Created by sky on 2016/7/21.
//  Copyright © 2016年 sky. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayNumberLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.becomeActive(noti:)), name: NSNotification.Name.UIApplicationWillResignActive, object: nil)//willResign指將離開active的狀態
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.enterForegroud(noti:)), name: NSNotification.Name.UIApplicationWillEnterForeground, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.enterBackgroud(noti:)), name: NSNotification.Name.UIApplicationDidEnterBackground, object: nil)
//        let frame = CGRect(x: 10, y: 30, width: 100, height: 100)
//        let blueView = UIView(frame: frame)
//        blueView.backgroundColor = UIColor.blue()
//        self.view.addSubview(blueView)
        

    
    }
    
    func enterBackgroud(noti: Notification){
//        print("sayGoodBye from\(noti)")
        displayNumberLabel.text = "-1"
    }
    
    func enterForegroud(noti: Notification)  {
        //print("HelloBoy from\(noti)")
        displayNumberLabel.text = "2"
    }
    
    func becomeActive(noti: Notification){
        displayNumberLabel.text = "3"
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

