import SwiftUI
import Foundation

struct Profile {
    @AppStorage("username") var username: String = "g_kumar"
    @AppStorage("prefers_notifications") var prefersNotifications = false
    @AppStorage("seasonal_photo") var seasonalPhoto = Season.spring
    @AppStorage("goal_date") private var _goalDate = Date().timeIntervalSinceReferenceDate
    var goalDate: Date {
        set {
            _goalDate = newValue.timeIntervalSinceReferenceDate
        }
        get {
            Date(timeIntervalSinceReferenceDate: _goalDate)
        }
    }
    
    static let `default` = Profile(username: "g_kumar")
    
    enum Season: String, CaseIterable, Identifiable {
        case spring = "🌷"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "⛄️"
        
        var id: String { rawValue }
    }
}
