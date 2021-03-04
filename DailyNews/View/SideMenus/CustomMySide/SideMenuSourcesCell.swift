//
//  SideMenuSourcesCell.swift
//  DailyNews
//
//  Created by nizar on 04/03/21.
//

import UIKit

final class SideMenuSourcesCell: UITableViewCell {
    
    var sourcesNames: Sources? {
        didSet {
            if let sourcesName = sourcesNames {
                textLabel?.text = sourcesName.name
                print(sourcesName.name)
            }
        }
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
