#Alamofire-SwiftyJSON

Easy way to use both [Alamofire](https://github.com/Alamofire/Alamofire) and [SwiftyJSON](https://github.com/SwiftyJSON/SwiftyJSON)

## Requirements

- iOS 9.0+
- Xcode 8.1

## Install

拖进项目中

## Usage

```swift
Alamofire.request("https://httpbin.org/get",method:.get,parameters: ["foo": "bar"]).responseSwiftyJSON { (request, response, json, error) in
    if(error == nil){
        self.mTextView.text = "URL:\(json["url"].stringValue)\n来源IP:\(json["origin"].stringValue)\nUser-Agent:\(json["headers"]["User-Agent"].stringValue)";
    }else{
        self.mTextView.text = error.debugDescription;
    }
}
```
