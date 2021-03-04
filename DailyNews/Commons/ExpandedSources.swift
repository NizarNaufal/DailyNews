//
//  ExpandedSources.swift
//  DailyNews
//
//  Created by nizar on 04/03/21.
//

import Foundation
import RxDataSources
final class ExpandedSources {
    var category: SourceCategories
    var sources: [Sources]
    
    init(category: SourceCategories, sources: [Sources]) {
        self.category = category
        self.sources = sources
    }
}
struct ExpandedSourcesSectionModel {
    var items: [ExpandedSources]
}

extension ExpandedSourcesSectionModel: SectionModelType {
    
    init(original: ExpandedSourcesSectionModel, items: [ExpandedSources]) {
        self = original
        self.items = items
    }
}
