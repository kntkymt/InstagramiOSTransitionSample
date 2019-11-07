//
//  Storyboardable.swift
//  InstagramTrasitionTest
//
//  Created by kntk on 2019/06/22.
//  Copyright © 2019 kntk. All rights reserved.
//

import UIKit

protocol Storyboardable: class {
    associatedtype Instance
    static var storyboardName: String { get }
    static var storyboard: UIStoryboard { get }
    static func instantiateViewController() -> Instance
}

extension Storyboardable where Self: UIViewController {

    static var storyboardName: String {
        return className.replacingOccurrences(of: "ViewController", with: "")
    }

    static var storyboard: UIStoryboard {
        return UIStoryboard(name: storyboardName, bundle: nil)
    }

    static func instantiateViewController() -> Self {
        return storyboard.instantiateInitialViewController() as! Self // swiftlint:disable:this force_cast
    }
}
