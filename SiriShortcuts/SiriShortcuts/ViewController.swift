//
//  ViewController.swift
//  SiriShortcuts
//
//  Created by rex on 2018/9/21.
//  Copyright © 2018 rex. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        setupIntents()
    }
    
    func setupIntents() {
        let activity = NSUserActivity(activityType: "info.huamouchen.SiriShortcuts.sayHi")
        activity.title = "Say Hi"
        activity.userInfo = ["speech" : "hi"]
        activity.isEligibleForSearch = true
        activity.isEligibleForPrediction = true
        activity.persistentIdentifier = NSUserActivityPersistentIdentifier("info.huamouchen.SiriShortcuts.sayHi")
        view.userActivity = activity
        activity.becomeCurrent()
    }
    
    public func sayHi() {
        let alert = UIAlertController(title: "Hi There", message: "Hi There! Glad to see you got this working!", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }


}

