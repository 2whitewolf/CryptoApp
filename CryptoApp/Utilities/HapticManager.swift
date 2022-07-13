//
//  HapticManager.swift
//  CryptoApp
//
//  Created by Bogdan Sevcenco on 14.06.2022.
//

import Foundation
import SwiftUI

class HapticManager {
    
    static private let generator = UINotificationFeedbackGenerator()
    
    static func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        generator.notificationOccurred(type)
    }
    
}
