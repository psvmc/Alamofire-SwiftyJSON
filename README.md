#Alamofire-SwiftyJSON

Easy way to use both [Alamofire](https://github.com/Alamofire/Alamofire) and [SwiftyJSON](https://github.com/SwiftyJSON/SwiftyJSON)

## Requirements

- iOS 8.0+ / Mac OS X 10.9+
- Xcode 7.0

## Install

拖进项目中

## Usage

```swift
import Alamofire
       
request(Method.GET, "http://httpbin.org/get", parameters: ["foo": "bar"])
.responseSwiftyJSON({ request, response, data, error in

    
})

```
