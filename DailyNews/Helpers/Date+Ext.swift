//
//  Date+Ext.swift
//  DailyNews
//
//  Created by nizar on 04/03/21.
//

import Foundation
extension Date {

    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        return dateFormatter.string(from: self)
    }

    func convertToMonthHour() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM d, h:mm a"
        return dateFormatter.string(from: self)
    }
}
