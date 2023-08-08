//
//  BioViewController.swift
//  AboutMeAppRepeat
//
//  Created by Goodwasp on 07.08.2023.
//

import UIKit

class BioViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var bioTextView: UITextView!
    
    // MARK: - Public Properties
    var bio: String!
    
    // MARK: - Overrides Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        bioTextView.text = bio
    }
}
