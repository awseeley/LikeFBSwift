//
//  ViewController.swift
//  LikeFBSwift
//
//  Created by Andrew Seeley on 14/11/2014.
//  Copyright (c) 2014 Seemu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func likeusFB(sender: UIButton) {
        
        var fbURLWeb: NSURL = NSURL(string: "https://www.facebook.com/SeemuApps")!
        var fbURLID: NSURL = NSURL(string: "fb://profile/719245588122387")!
        
        if(UIApplication.sharedApplication().canOpenURL(fbURLID)){
            // FB installed
            UIApplication.sharedApplication().openURL(fbURLID)
        } else {
            // FB is not installed, open in safari
            UIApplication.sharedApplication().openURL(fbURLWeb)
        }
        
    }


}

