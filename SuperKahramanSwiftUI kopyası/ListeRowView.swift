//
//  ListeRowView.swift
//  SuperKahramanSwiftUI
//
//  Created by Enes Babacan on 14.08.2024.
//

import SwiftUI

struct ListeRowView: View {
    var superKahraman : SuperKahraman
    var body: some View {
        HStack {
            Image(superKahraman.gorselIsmi)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150,height: 90,alignment: .center)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            Text(superKahraman.isim)
        }
    }
}
#Preview {
    ListeRowView(superKahraman: batman)
}
