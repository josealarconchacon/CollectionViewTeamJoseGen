//
//  ViewController.swift
//  MeetUpEvents
//
//  Created by Genesis Mosquera on 12/12/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import UIKit

class MeetUpEventsController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        MeetUpAPIClient.searchEvents(keyword: "iOS")
        
        MeetUpAPIClient.memberEvents()
    }


}

