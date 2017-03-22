//
//  ViewController.swift
//  multipugbomb
//
//  Created by Johann Kerr on 3/21/17.
//  Copyright © 2017 Johann Kerr. All rights reserved.
//

import UIKit

class ViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

  let handler = ImageDownloadHandler.handler

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }


  override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 100
  }

  override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "pugCell", for: indexPath) as! PugViewCell
    downloadImage(forCell: cell)
    return cell
  }


  

   func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    return CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height/3)
  }


  func downloadImage(forCell cell: PugViewCell) {
    handler.downloadImage { (image) in
//      DispatchQueue.main.async {
        cell.imageView.image = image
        print("+++++++++++imageCell+++++++++")
        print(image)
//      }
    }
  }


   


}






