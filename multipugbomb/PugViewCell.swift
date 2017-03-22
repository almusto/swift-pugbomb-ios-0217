//
//  PugViewCell.swift
//  multipugbomb
//
//  Created by Johann Kerr on 3/21/17.
//  Copyright © 2017 Johann Kerr. All rights reserved.
//

import UIKit

class PugViewCell: UICollectionViewCell {

  var imageView: UIImageView!

  override init(frame: CGRect) {
    super.init(frame: frame)
    commonInit()
  }

  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    commonInit()
  }


  func commonInit() {
    imageView = UIImageView()
    imageView.translatesAutoresizingMaskIntoConstraints = false
    contentView.addSubview(imageView)

    contentView.layer.borderWidth = 2
    contentView.layer.borderColor = UIColor.black.cgColor

    imageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
    imageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
    imageView.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
    imageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true

  }


  
    
   
}
