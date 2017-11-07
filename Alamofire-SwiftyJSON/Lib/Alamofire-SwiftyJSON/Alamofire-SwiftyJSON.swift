//
//  Alamofire-SwiftyJSON.swift
//  Alamofire-SwiftyJSON
//
//  Created by 张剑 on 2016/10/31.
//  Copyright © 2016年 张剑. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

extension DataRequest {
    @discardableResult
    public func responseSwiftyJSON(_ queue: DispatchQueue? = nil,encoding: String.Encoding? = nil,completionHandler: @escaping (URLRequest, HTTPURLResponse?, JSON, Error?) -> Void) -> Self {
        responseString(queue: DispatchQueue.global(), encoding: encoding ?? String.Encoding.utf8) { (stringResponse) in
            var responseJSON: JSON;
            if(stringResponse.result.isFailure){
                responseJSON = JSON.null
            } else {
                responseJSON = JSON.init(parseJSON: stringResponse.result.value!)
            }
            (queue ?? DispatchQueue.main).async {
                completionHandler(stringResponse.request!, stringResponse.response, responseJSON, stringResponse.result.error)
            }
        }
        return self;
    }
}
