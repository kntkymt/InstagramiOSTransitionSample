//
//  FastTransitionAnimation.swift
//  InstagramTrasitionTest
//
//  Created by kntk on 2019/06/22.
//  Copyright © 2019 kntk. All rights reserved.
//

import UIKit

final class FastTransitionAnimation: NSObject, UIViewControllerAnimatedTransitioning {

    enum Direction {
        case right
        case left
    }

    private let direction: Direction

    init(direction: Direction) {
        self.direction = direction
    }

    let distance: CGFloat = UIScreen.main.bounds.width
    let duration = 0.10 // 遷移時間

    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return duration
    }

    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        guard let fromView = transitionContext.view(forKey: .from), let toView = transitionContext.view(forKey: .to) else { return }

        transitionContext.containerView.insertSubview(toView, belowSubview: fromView)

        let offset: CGFloat = direction == .right ? -distance : distance

        toView.transform = CGAffineTransform(translationX: offset, y: 0)
        UIView.animate(
            withDuration: transitionDuration(using: transitionContext),
            delay: 0.0,
            animations: {
                fromView.transform = CGAffineTransform(translationX: -offset, y: 0)
                toView.transform = .identity
        },
            completion: { _ in
                fromView.transform = .identity
                transitionContext.completeTransition(!transitionContext.transitionWasCancelled)
        })
    }
}
