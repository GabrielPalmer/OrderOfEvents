//
//  MiddleViewController.swift
//  OrderOfEvents
//
//  Created by Gabriel Blaine Palmer on 10/10/18.
//  Copyright © 2018 Gabriel Blaine Palmer. All rights reserved.
//

import UIKit

class MiddleViewController: UIViewController {

    @IBOutlet weak var eventLabel: UILabel!
    var eventNumber: Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()

        eventLabel.text = "Event 0: View did load\n"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        eventLabel.text = (eventLabel.text ?? "") + "Event \(eventNumber): View will appear\n"
        eventNumber += 1
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        eventLabel.text = (eventLabel.text ?? "") + "Event \(eventNumber): View did appear\n"
        eventNumber += 1
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        eventLabel.text = (eventLabel.text ?? "") + "Event \(eventNumber): View will disappear\n"
        eventNumber += 1
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        eventLabel.text = (eventLabel.text ?? "") + "Event \(eventNumber): View did disappear\n"
        eventNumber += 1
    }
}
