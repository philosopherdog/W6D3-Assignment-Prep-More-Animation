import UIKit
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

// Creating a basic network request with Swift
/*
let url = URL(string: "https://google.com")

let session = URLSession.shared.dataTask(with: url!) { (data: Data?, response:URLResponse?, error: Error?) in
  if let error = error {
    print(#line, error.localizedDescription)
    return
  }
  if let status = response as? HTTPURLResponse {
    if status.statusCode != 200 {
      return
    }
  }
  
  guard let data = data else {
    return
  }
  
  print(#line, data)
  
}
session.resume()
*/

// Handling JSON in Swift

// class func data(withJSONObject: Any, options: JSONSerialization.WritingOptions = [])

// Create a JSON Data object from an array

let foundationObj = [Int](0...100)
foundationObj

var json: Data?
do {
  json = try JSONSerialization.data(withJSONObject: foundationObj, options: .prettyPrinted )
} catch {
  print(#line, error.localizedDescription)
}

json

// Deserialize the JSON object

// class func jsonObject(with data: Data, options opt: JSONSerialization.ReadingOptions = []) throws -> Any

guard let json = json else {
  fatalError()
}

// this is the fast/unsafe way of doing try!

let convertedObj = try! JSONSerialization.jsonObject(with: json, options: .allowFragments) as! [Int]

convertedObj




