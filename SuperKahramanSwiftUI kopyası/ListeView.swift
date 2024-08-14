//
//  ContentView.swift
//  SuperKahramanSwiftUI
//
//  Created by Enes Babacan on 14.08.2024.
//

import SwiftUI

struct ListeView: View {
    var body: some View {
        VStack {
            NavigationView {
                List(superKahramanDizisi) { superKahraman in
                    NavigationLink(
                        destination: DetayView(secilenKahraman: superKahraman),
                        label: {
                            ListeRowView(superKahraman: superKahraman)
                })
                }.navigationTitle(Text("SuperKahramanlar"))
            }
        }
        .padding()
    }
}

#Preview {
    ListeView()
}
