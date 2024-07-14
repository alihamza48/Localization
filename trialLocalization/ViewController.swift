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

extension UIButton {
    @IBInspectable var localizedTitle: String? {
        get {
            return nil // doesn't really matter
        }
        set {
            if let newValue = newValue {
                self.setTitle(NSLocalizedString(newValue, comment: ""), for: .normal)
            }
        }
    }
}


extension UILabel {
    @IBInspectable var localizedText: String? {
        get {
            return nil // doesn't really matter
        }
        set {
            if let newValue = newValue {
                self.text = NSLocalizedString(newValue, comment: "")
            }
        }
    }
}

