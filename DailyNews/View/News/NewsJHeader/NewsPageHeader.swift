//
//  NewsPageHeader.swift
//  DailyNews
//
//  Created by nizar on 04/03/21.
//

import UIKit
import TinyConstraints

class NewsPageHeader: UICollectionReusableView {

    let feedHeaderController = NewsHeaderController()

    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(feedHeaderController.view)
        feedHeaderController.view.edgesToSuperview()
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
