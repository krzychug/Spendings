//
//  TransactionTableViewCell.swift
//  Spendings
//
//  Created by Krzysztof Gruszczyński on 01/02/2023.
//

import UIKit

class TransactionTableViewCell: UITableViewCell {
    
    @IBOutlet weak var categoryCell: UILabel!
    @IBOutlet weak var priceCell: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
