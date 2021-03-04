//
//  Protocols.swift
//  DailyNews
//
//  Created by nizar on 04/03/21.
//

import UIKit
import RxCocoa

protocol SlideMenuDelegate: class {
    func configureSlideMenu()
}
protocol SourcesViewControllerDelegate: class {
    func pushToSourcesVC(source: UIViewController)
}
