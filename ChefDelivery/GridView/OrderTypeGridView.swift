//
//  OrderTypeGridView.swift
//  ChefDelivery
//
//  Created by Sthefany Caroline Figuerêdo de Siqueira on 16/04/25.
//
// Nessa view, temos um componente que constrói a estrutura do grid;

import SwiftUI

struct OrderTypeGridView: View {
    
    var gridLayout: [GridItem] {
        return Array(repeating: GridItem(.flexible(), spacing: 10), count: 2)
    }
    
    var body: some View {
        LazyHGrid(rows: gridLayout, spacing: 15) {
            ForEach(ordersMock) { orderItem in
                OrderTypeView(orderType: orderItem)
            }
        }
        .frame(height: 200)
        .padding(.horizontal, 15)
        .padding(.top, 15)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    OrderTypeGridView()
}
