//
//  WelcomeViewController.swift
//  AboutMeAppRepeat
//
//  Created by Goodwasp on 01.08.2023.
//

import UIKit

class WelcomeViewController: UIViewController {
    @IBOutlet var greetingLabel: UILabel!
    
    var greetPerson: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingLabel.text = "Welcome, " + greetPerson.name
    }
    // MARK: - Navigation
}
