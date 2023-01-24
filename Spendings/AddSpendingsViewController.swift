//
//  AddSpendingsViewController.swift
//  Spendings
//
//  Created by Krzysztof Gruszczyński on 23/01/2023.
//

import UIKit

class AddSpendingsViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var categoryLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    @IBAction func cancelButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func categoryButtonChoosed(_ sender: UIButton) {
        
        switch sender.tag {
        case 1:
            categoryLabel.text = "Zakupy"
        case 2:
            categoryLabel.text = "Jedzenie i napoje"
        case 3:
            categoryLabel.text = "Usługi"
        case 4:
            categoryLabel.text = "Podróże"
        case 5:
            categoryLabel.text = "Transport"
        case 6:
            categoryLabel.text = "Rozrywka"
        case 7:
            categoryLabel.text = "Zdrowie"
        case 8:
            categoryLabel.text = "Dom"
        case 9:
            categoryLabel.text = "Cykliczne"
        default:
            return
        }
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    

}
