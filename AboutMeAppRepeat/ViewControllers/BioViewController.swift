//
//  BioViewController.swift
//  AboutMeAppRepeat
//
//  Created by Goodwasp on 07.08.2023.
//

import UIKit

class BioViewController: UIViewController {
    @IBOutlet var bioTextView: UITextView!
    
    var bio: String!
    override func viewDidLoad() {
        super.viewDidLoad()
        bioTextView.text = bio
    }
}
