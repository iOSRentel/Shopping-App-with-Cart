import SwiftUI

struct HomeView: View {
    @StateObject var cartManager = CartManager()
//    Spacing поменял на 40, было 20
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    
    var body: some View {
        NavigationView {
        ScrollView {
        LazyVGrid(columns: columns, spacing: 20) {
            ForEach(productList, id: \.id) { product in
                ProductCart(product: product)
                    .environmentObject(cartManager)
            }
        }
        .padding()
        }
        .navigationTitle(Text("Social Shop"))
        .toolbar {
            NavigationLink {
                CartView()
                    .environmentObject(cartManager)
            } label: {
            CartButton(numberOfProducts: cartManager.products.count)
            }
            }
        }
//  Полезная фишка! Надо запомнить
        .navigationViewStyle(StackNavigationViewStyle())
    }
}
