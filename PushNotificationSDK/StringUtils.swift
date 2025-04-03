//
//  StringUtils.swift
//  PushNotificationSDK
//
//  Created by Van Huy on 3/4/25.
//

import Foundation

public class StringUtils {
    // Phải đánh dấu các method là public để có thể truy cập từ bên ngoài framework
    public static func capitalize(_ input: String) -> String {
        return input.prefix(1).uppercased() + input.dropFirst()
    }
    
    public static func isPalindrome(_ input: String) -> Bool {
        let cleaned = input.lowercased().filter { $0.isLetter }
        return cleaned == String(cleaned.reversed())
    }
    
    public static func countWords(_ input: String) -> Int {
        let components = input.components(separatedBy: .whitespacesAndNewlines)
        return components.filter { !$0.isEmpty }.count
    }
    
    // Phải đánh dấu initializer là public để có thể khởi tạo từ bên ngoài
    public init() {}
}
