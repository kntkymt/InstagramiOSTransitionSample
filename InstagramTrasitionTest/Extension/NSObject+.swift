//
//  NSObject+.swift
//  InstagramTrasitionTest
//
//  Created by kntk on 2019/06/22.
//  Copyright © 2019 kntk. All rights reserved.
//

import Foundation

extension NSObject {

    static var className: String {
        return String(describing: self)
    }

    var className: String {
        return type(of: self).className
    }
}
