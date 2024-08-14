//
//  SuperKahraman.swift
//  SuperKahramanSwiftUI
//
//  Created by Enes Babacan on 14.08.2024.
//

import Foundation
import SwiftUI
import CoreLocation

struct SuperKahraman : Identifiable {
    
    var id = UUID()
    var isim : String
    var gercekIsim : String
    var gorselIsmi : String
    var sehir : String
    var meslek : String
    var koordinat : Koordinat
    
    var koordinatLokasyonu : CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: koordinat.latitude, longitude: koordinat.longitude)
    }
    
}

struct Koordinat {
    var latitude : Double
    var longitude : Double
}


let batman = SuperKahraman(isim: "Batman", gercekIsim: "Bruce Wayne", gorselIsmi: "batman", sehir: "Gotham", meslek: "İş adamı", koordinat: Koordinat(latitude: 41.8608808971411,longitude: -87.68395608553705))

let superman = SuperKahraman(isim: "Superman", gercekIsim: "Clark Kent", gorselIsmi: "superman", sehir: "Kansas", meslek: "Gazeteci", koordinat: Koordinat(latitude: 38.96190755650402,longitude: -98.53221055956686))

let spiderman = SuperKahraman(isim: "Spiderman", gercekIsim: "Peter Parker", gorselIsmi: "spiderman", sehir: "New York", meslek: "Fotoğrafçı", koordinat: Koordinat(latitude: 40.64980836544759,longitude: -73.96997386893669))

let ironman = SuperKahraman(isim: "Ironman", gercekIsim: "Tony Stark", gorselIsmi: "ironman", sehir: "Los Angeles", meslek: "Fotoğrafçı", koordinat: Koordinat(latitude: 33.858253482471135,longitude: -118.36785102154461))

let superKahramanDizisi = [batman,superman,spiderman,ironman]
