//
//  UIViewExtension.swift
//  GalleryDisplay
//
//  Created by David U. Okonkwo on 9/26/20.
//

import UIKit

public extension UIView {
  func addSubviews(_ views: UIView...) {
    for view in views {
      addSubview(view)
    }
  }
}
