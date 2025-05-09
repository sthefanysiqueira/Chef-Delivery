//
//  OrderTypeView.swift
//  ChefDelivery
//
//  Created by Sthefany Caroline Figuerêdo de Siqueira on 09/05/25.
//
// Essa view tem o componente que desenha o layout de cada uma das “células” do grid.


import SwiftUI

struct OrderTypeView: View {
    let orderType: OrderType
    
    var body: some View {
        VStack(spacing: 5) {
            Image(orderType.image)
                .resizable()
                .scaledToFit()
                .fixedSize(horizontal: false, vertical: true)
            Text(orderType.name)
                .font(.system(size: 10))
        }
        .frame(width: 70, height: 100)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    OrderTypeView(orderType: OrderType(id: 1,
                                       name: "Restaurantes",
                                       image: "hamburguer"))
}
