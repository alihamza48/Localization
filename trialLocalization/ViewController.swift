//
//  ViewController.swift
//  trialLocalization
//
//  Created by admin on 7/11/24.
//

import UIKit

class ViewController: UIViewController {

 
    @IBOutlet weak var greetingLabel: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var ageLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingLabel.text = "Hi".localized()
        nameLabel.text = "name".localized()
        ageLabel.text = "age".localized()
    }


}

extension String{
    func localized() -> String {
        return NSLocalizedString(self, comment: "")
    }
}
