//
//  WelcomeViewController.swift
//  AboutMeAppRepeat
//
//  Created by Goodwasp on 01.08.2023.
//

import UIKit

class WelcomeViewController: UIViewController {
    // MARK: - IB Outlets
    @IBOutlet var greetingLabel: UILabel!
    
    // MARK: - Public Properties
    var greetPerson: Person!
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingLabel.text = "Welcome, " + greetPerson.name
    }
}
