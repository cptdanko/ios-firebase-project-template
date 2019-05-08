//
//  Analytics.swift
//  Your memories
//
//  Created by Bhuman Soni on 9/4/18.
//  Copyright © 2018 Bhuman Soni. All rights reserved.
//
import Foundation
import Firebase

class AnalyticsHelper {
    
    init() { }
    /*
     We can change this to anything really i.e. any other Analytics software
     that we decide to use in the future
     */
    static func logSelContentEventForFirebase(analyticsConstant: AnalyticsConstants.ANALYTICS_CONSTANT) {
        Analytics.logEvent(AnalyticsEventSelectContent, parameters: [
         AnalyticsParameterItemID: "id-\(analyticsConstant.id)" as NSObject,
         AnalyticsParameterItemName: analyticsConstant.name as NSObject,
         AnalyticsParameterContentType:  analyticsConstant.type as NSObject
         ])
    }
    static func logEventAppOpen() {
        Analytics.logEvent(AnalyticsEventAppOpen, parameters: nil)
    }
    static func logFirebaseShareEvent() {
        Analytics.logEvent(AnalyticsEventShare, parameters: nil)
    }
    static func logSignInEvent() {
        Analytics.logEvent(AnalyticsEventLogin, parameters: [AnalyticsParameterSignUpMethod: "email"])
        
    }
}
