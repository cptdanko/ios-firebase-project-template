//
//  ViewController.swift
//  Firebase startup template
//
//  Created by Bhuman Soni on 9/5/19.
//  Copyright © 2019 Bhuman Soni. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var swipeDirectionLbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    /* Firebase docs at https://firebase.google.com/docs/reference/swift/firebaseanalytics/api/reference/Constants?authuser=0#/c:FIREventNames.h@kFIREventLogin */

    @IBAction func login(_ sender: Any) {
        FeedbackHelper.fbh.generateHapticFeedback(for: .heavy)
        AnalyticsHelper.logSignInEvent()
    }
    /* Firebase docs at https://firebase.google.com/docs/reference/swift/firebaseanalytics/api/reference/Constants?authuser=0#/c:FIREventNames.h@kFIREventShare */
    @IBAction func share(_ sender: Any) {
        FeedbackHelper.fbh.generateHapticFeedback(for: .heavy)
        AnalyticsHelper.logFirebaseShareEvent()
    }
    
    @IBAction func swiped(_ sender: UISwipeGestureRecognizer) {
        switch sender.direction {
            case .left:
                swipeDirectionLbl.text = "You swipped left"
                AnalyticsHelper.logSelContentEventForFirebase(analyticsConstant: AnalyticsConstants.SWIPE_LEFT)
                break
            case .right:
                swipeDirectionLbl.text = "You swipped right"
                AnalyticsHelper.logSelContentEventForFirebase(analyticsConstant: AnalyticsConstants.SWIPE_RIGHT)
                break
        default:
            break
        }
        
    }
}

