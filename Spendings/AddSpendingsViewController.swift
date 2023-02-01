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
    
    var price = 0.00
    var category = ""
    

    override func viewDidLoad() {
        super.viewDidLoad()

        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
        
        textField.attributedPlaceholder = NSAttributedString(string: "0", attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])
        
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
    
    
    @IBAction func readyButtonPressed(_ sender: UIButton) {
        price = Double(textField.text!)!
        category = (categoryLabel.text)!
        print("Dodano kwotę \(price)")
        print("Wybrana kategoria: \(category)")
        dismiss(animated: true, completion: nil)
    }

    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    

}
