//
//  GalleryCollectionCell.swift
//  InstagramTrasitionTest
//
//  Created by kntk on 2019/06/22.
//  Copyright © 2019 kntk. All rights reserved.
//

import UIKit
import RandomColorSwift

final class GalleryCollectionCell: UICollectionViewCell {

    @IBOutlet private weak var imageView: UIView! {
        didSet {
            imageView.backgroundColor = randomColors(count: 1, hue: .random, luminosity: .light)[0]
        }
    }

    func inject(color: UIColor) {
        imageView.backgroundColor = color
    }
}
