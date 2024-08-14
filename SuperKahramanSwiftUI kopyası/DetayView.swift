//
//  DetayView.swift
//  SuperKahramanSwiftUI
//
//  Created by Enes Babacan on 14.08.2024.
//

import SwiftUI

struct DetayView: View {
    var secilenKahraman : SuperKahraman
    var body: some View {
        VStack {
            MapView(coordinate: secilenKahraman.koordinatLokasyonu)
                .frame(height: UIScreen.main.bounds.height * 0.4)
                .edgesIgnoringSafeArea(.all)
                
                
            
            OzelGorselView(image: Image(secilenKahraman.gorselIsmi))
                .frame(width: UIScreen.main.bounds.width * 0.8, height: UIScreen.main.bounds.height * 0.3,alignment: .center)
                .offset(y: UIScreen.main.bounds.height * -0.20)
            
            VStack {
                HStack{
                    Text(secilenKahraman.isim)
                        .font(.title)
                        .foregroundColor(.brown)
                        .bold()
                    
                    Spacer()
                    
                    Text(secilenKahraman.gercekIsim)
                        .font(.title)
                        .foregroundColor(.brown)
                        .bold()
                }
                
                Spacer()
                
                HStack{
                    
                    Text(secilenKahraman.sehir)
                        .font(.title2)
                        .bold()
                    
                    Spacer()
                    
                    Text(secilenKahraman.meslek)
                        .font(.title2)
                        .bold()
                }
                
                
                
                
            }.padding()
                .offset(y: UIScreen.main.bounds.height * -0.17)
            
            Spacer()
        }
    }
}

#Preview {
    DetayView(secilenKahraman: batman)
}
