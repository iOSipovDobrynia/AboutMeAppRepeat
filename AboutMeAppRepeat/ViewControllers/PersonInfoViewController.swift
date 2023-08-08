//
//  PersonInfoViewController.swift
//  AboutMeAppRepeat
//
//  Created by Goodwasp on 07.08.2023.
//

import UIKit

class PersonInfoViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var lastnameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var photoImage: UIImageView!
    
    // MARK: - Public Properties
    var person: Person!
    
    // MARK: - Overrides Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Person Info"
        nameLabel.text = person.name
        lastnameLabel.text = person.lastname
        ageLabel.text = person.age.formatted()
        photoImage.image = UIImage(named: person.photo)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let bioVC = segue.destination as? BioViewController else {
            return
        }
        bioVC.bio = person.bio
    }
}
