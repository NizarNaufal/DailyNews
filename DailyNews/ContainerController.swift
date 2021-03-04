//
//  ContainerController.swift
//  DailyNews
//
//  Created by nizar on 04/03/21.
//

import UIKit
import TinyConstraints

class ContainerController: UIViewController {

    let tabBar = TabBarController()
    private var isMenuHidden = true

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupTabBarView()
        tabBar.menuDelegate = self
    }

    func setupTabBarView() {
        view.addSubview(tabBar.view)
        addChild(tabBar)
        tabBar.didMove(toParent: self)
    }

    func showMenuController(shouldExpand: Bool) {
        if !shouldExpand {
            UIView.animate(withDuration: 0.6, delay: 0, usingSpringWithDamping: 0.8,
                           initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                self.tabBar.view.frame.origin.x = self.tabBar.view.frame.width - 165
            }, completion: { (_) in
                self.tabBar.feedVC.view.isUserInteractionEnabled = false
            })
        } else {
            UIView.animate(withDuration: 0.6, delay: 0, usingSpringWithDamping: 0.8,
                           initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                self.tabBar.view.frame.origin.x = 0
            }, completion: { (_) in
                self.isMenuHidden = true
                self.tabBar.feedVC.view.isUserInteractionEnabled = true
            })
        }
    }
}
extension ContainerController: SlideMenuDelegate, SourcesViewControllerDelegate {

    func pushToSourcesVC(source: UIViewController) {
        showMenuController(shouldExpand: true)
        source.modalPresentationStyle = .fullScreen
        tabBar.feedVC.navigationController?.pushViewController(source, animated: true)
    }

    func configureSlideMenu() {
        let alert = UIAlertController(title: "Maintenance!", message: "Mohon Maaf , Menu Masih Dalam Tahap Perbaikan. ", preferredStyle: UIAlertController.Style.alert)

                       // add an action (button)
                       alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))

                       // show the alert
                       self.present(alert, animated: true, completion: nil)
    }
}
