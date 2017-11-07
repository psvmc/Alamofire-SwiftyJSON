//
//  ViewController.swift
//  Alamofire-SwiftyJSON
//
//  Created by 张剑 on 2016/10/31.
//  Copyright © 2016年 张剑. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {
    @IBOutlet weak var mTextView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
 
    @IBAction func queryData(_ sender: AnyObject) {
        Alamofire.request("http://www.psvmc.cn/login.json",method:.get,parameters: ["foo": "bar"]).responseSwiftyJSON { (request, response, json, error) in
            if(error == nil){
                self.mTextView.text = "网址:\(json["obj"]["website"].stringValue)\n姓名:\(json["obj"]["name"].stringValue)\n";
            }else{
                self.mTextView.text = error.debugDescription;
            }
        }
    }
}

