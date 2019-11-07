//
//  FastTransitionNavigationController.swift
//  InstagramTrasitionTest
//
//  Created by kntk on 2019/11/07.
//  Copyright © 2019 kntk. All rights reserved.
//

import UIKit

class FastTransitionNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
    }
}

extension FastTransitionNavigationController: UINavigationControllerDelegate {
    
    func navigationController(_ navigationController: UINavigationController, animationControllerFor operation: UINavigationController.Operation, from fromVC: UIViewController, to toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        let direction: FastTransitionAnimation.Direction = operation == .push ? .left : .right
        return FastTransitionAnimation(direction: direction)
    }
}
