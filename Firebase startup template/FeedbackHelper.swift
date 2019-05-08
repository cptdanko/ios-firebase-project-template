//
//  FeedbackHelper.swift
//  Firebase startup template
//
//  Created by Bhuman Soni on 9/5/19.
//  Copyright © 2019 Bhuman Soni. All rights reserved.
//

import Foundation
import UIKit


class FeedbackHelper {
    
    static let fbh = FeedbackHelper()
    
    func generateHapticFeedback(for impactFeedbackStyle: UIImpactFeedbackGenerator.FeedbackStyle) {
        if #available(iOS 10.0, *) {
            let impactGenerator = UIImpactFeedbackGenerator(style: impactFeedbackStyle)
            impactGenerator.impactOccurred()
        }
    }
    
    
}
