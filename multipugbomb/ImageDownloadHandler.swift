//
//  ImageDownloadHandler.swift
//  multipugbomb
//
//  Created by Alessandro Musto on 3/22/17.
//  Copyright © 2017 Johann Kerr. All rights reserved.
//

import Foundation
import UIKit


final class ImageDownloadHandler {

  static let handler = ImageDownloadHandler()
  var image: UIImage!

  private init(){}


   func downloadImage(completion: @escaping (UIImage) -> ()) {
    PugsAPIClient.getPug { (url) in
      DispatchQueue.main.async {
        let session = URLSession.shared
        let task = session.dataTask(with: url, completionHandler: { (data, response, error) in
          DispatchQueue.main.async {
            if let data = data {
              print("---------downloadimageDATA------------")
              print(data)
              if let image = UIImage(data: data) {
                completion(image)
              }
            } else {
              let defaultImage = UIImage(named: "pugPee")
              completion(defaultImage!)
            }
          }
        })
        task.resume()
      }
    }
  }
}
