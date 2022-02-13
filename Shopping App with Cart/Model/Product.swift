import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}
var productList = [Product(name: "Cold Beer", image: "Beer", price: 14),
                   Product(name: "Last Call", image: "Call", price: 14),
                   Product(name: "Send Email", image: "Email", price: 14),
                   Product(name: "Check IN", image: "Facebook", price: 14),
                   Product(name: "Follow me", image: "Instagram", price: 14),
                   Product(name: "Check Out", image: "Twitter", price: 14),
                   Product(name: "Whats App", image: "WhatsApp", price: 14),
                   Product(name: "Web Intrface", image: "Web", price: 14)
]

