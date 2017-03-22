//
//  PugsAPIClient.swift
//  multipugbomb
//
//  Created by Alessandro Musto on 3/22/17.
//  Copyright © 2017 Johann Kerr. All rights reserved.
//

import Foundation


final class PugsAPIClient {

  class func getPug(completion: @escaping (URL) -> ()) {
    let urlString = "https://pugme.herokuapp.com/random"
    let session = URLSession.shared
    if let url = URL(string: urlString) {
      let task = session.dataTask(with: url, completionHandler: { (data, response, error) in
        DispatchQueue.main.async {
          if let data = data {
            print(data)
            do {
              let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String:String] ?? [:]
              let pugUrlString = json["pug"] ?? "https://sandromusto.com"
              print(pugUrlString)
              if let pugURL = URL(string: pugUrlString) {
                completion(pugURL)
              }
            } catch {
              print("there is an error")
            }
          }
        }
      })
      task.resume()
    }
  }

}
