//
//  DateUtils.swift
//  PushNotificationSDK
//
//  Created by Van Huy on 3/4/25.
//

import Foundation

public class DateUtils {
    public static func formatDate(_ date: Date, format: String = "dd/MM/yyyy") -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        return formatter.string(from: date)
    }
    
    public static func daysFromToday(_ days: Int) -> Date {
        return Calendar.current.date(byAdding: .day, value: days, to: Date()) ?? Date()
    }
    
    public init() {}
}
