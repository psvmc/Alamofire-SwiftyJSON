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
        Alamofire.request("https://httpbin.org/get").responseSwiftyJSON { (request, response, json, error) in
            if(error == nil){
                print(json.stringValue);
                self.mTextView.text = "URL:\(json["url"].stringValue)\n来源IP:\(json["origin"].stringValue)\nUser-Agent:\(json["headers"]["User-Agent"].stringValue)";
            }else{
                self.mTextView.text = error.debugDescription;
            }
        }
    }
}

