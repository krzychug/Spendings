//
//  MainViewController.swift
//  Spendings
//
//  Created by Krzysztof Gruszczyński on 23/01/2023.
//

import UIKit

class MainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    struct PropertyKeys {
        static let transactionCell = "cell"
    }

    @IBOutlet weak var tableView: UITableView!
    
    var transactions: [Transaction] = [Transaction(category: "Podróże", price: 154.50),
                                       Transaction(category: "Zakupy", price: 25.52)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self

    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return transactions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: PropertyKeys.transactionCell, for: indexPath) as! TransactionTableViewCell
        
        let transaction = transactions[indexPath.row]
        
        cell.categoryCell.text = transaction.category
        cell.priceCell.text = "\(transaction.price)"
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 75
    }
    
}



