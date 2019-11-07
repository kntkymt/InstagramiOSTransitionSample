//
//  DetailViewController.swift
//  InstagramTrasitionTest
//
//  Created by kntk on 2019/06/22.
//  Copyright © 2019 kntk. All rights reserved.
//

import UIKit
import RandomColorSwift

final class DetailViewController: UIViewController, Storyboardable {

    // MARK: - Outlet

    @IBOutlet private weak var icon: UIView! {
        didSet {
            icon.backgroundColor = randomColor(hue: .random, luminosity: .light)
            icon.layer.cornerRadius = icon.frame.width / 2
        }
    }

    @IBOutlet private weak var imageView: UIView! {
        didSet {
            imageView.backgroundColor = color
        }
    }

    // MARK: - Property

    private var color: UIColor!

    // MARK: - Builder

    class func build(color: UIColor) -> UIViewController {
        let viewController = instantiateViewController()
        viewController.color = color

        return viewController
    }

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        fd_prefersNavigationBarHidden = true
    }

    // MARK: - Action

    @IBAction private func backButtonDidTap(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}
