//
//  BaseListController.swift
//  DailyNews
//
//  Created by nizar on 04/03/21.
//

import UIKit
class BaseListController: UICollectionViewController {

    init() {
        super.init(collectionViewLayout: UICollectionViewFlowLayout())
    }
    required init?(coder aDecoder: NSCoder) {

        fatalError("init(coder:) has not been implemented")
    }
}
