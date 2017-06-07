import UIKit

import PlaygroundSupport


PlaygroundPage.current.needsIndefiniteExecution = true

final class NetworkManager {
  
  static func fetchImage(completion:@escaping(UIImage?)->()) {
    let session = URLSession.shared
    
    let components = URLComponents(string:"http://lorempixel.com/200/300")!
    let request = URLRequest(url: components.url!)
    
    session.dataTask(with: request){(data: Data?, response: URLResponse?, error: Error?) in
      
      var image: UIImage?
      
      defer {
        completion(image)
      }
      
      if let error = error {
        print(#line, error.localizedDescription)
        return
      }
      
      guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
        print(#line, "response is nil or status code not 200")
        return
      }

      guard let data = data else {
        print(#line, "no data")
        return
      }
      print(#line, data)
      image = UIImage(data: data)
      }.resume()
  }
}




class MainViewController: UIViewController {
  var imageView = UIImageView()
  override func viewDidLoad() {
    super.viewDidLoad()
    print(#line, #function)
    view.backgroundColor = .white
    view.addSubview(imageView)
    imageView.frame = view.frame
    imageView.contentMode = .scaleAspectFill
    fetchImage()
  }
  
  private func fetchImage() {
    NetworkManager.fetchImage {[weak self] (image: UIImage?) in
      guard let image = image else {
        print(#line, "no image")
        return
      }
      guard let welf = self else {
        return
      }
      welf.imageView.image = image
    }
  }
}

let mvc = MainViewController()



PlaygroundPage.current.liveView = mvc
