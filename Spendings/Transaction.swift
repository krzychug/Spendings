

import Foundation

struct Transaction {
    var category: String
    var price: Double
    
    init(category: String, price: Double) {
        self.category = category
        self.price = price
    }
}


