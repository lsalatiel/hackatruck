//
//  ContentView.swift
//  Aula06
//
//  Created by Turma02-17 on 13/06/24.
//

import SwiftUI
import MapKit

struct ContentView: View {
    @State private var position = MapCameraPosition.region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: -14.2350, longitude: -51.9253),
            span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1))
    )
    @State private var currentCountry = locationArray[0]
    @State private var presentSheet = false
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack {
            Map(position: $position)
                .ignoresSafeArea()
            
            VStack {
                ZStack {
                    VStack {
                        Rectangle()
                            .foregroundColor(.white)
                            .opacity(0.7)
                            .frame(width: 400, height: 160)
                            .ignoresSafeArea()
                        Spacer()
                    }
                    VStack {
                        Text("World Map")
                            .font(.largeTitle)
                            .bold()
                        Text(currentCountry.name)
                        Spacer()
                    }
                }
                Spacer()
                
                HStack {
                    Spacer()
                    
                    Button("Info") {
                        presentSheet.toggle()
                    }
                    .foregroundColor(.black)
                    .font(.title)
                    .padding()
                    .background()
                    .sheet(isPresented: $presentSheet) {
                    } content: {
                        VStack {
                            Text(currentCountry.name)
                                .font(.largeTitle)
                            
                            Spacer()
                            
                            AsyncImage(url: URL(string: currentCountry.flag)) {
                                image in image.image?.resizable()
                            }
                            .frame(width: 310, height: 270)
                            
                            Spacer()
                            
                            Text(currentCountry.description)
                        }
                    }
                }
                
                VStack {
                    HStack {
                        ForEach(locationArray) { location in
                            Button {
                                position = MapCameraPosition.region (
                                    MKCoordinateRegion(
                                        center: CLLocationCoordinate2D(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude),
                                        span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1))
                                    )
                                currentCountry = location
                            }
                            label: {
                                AsyncImage(url: URL(string: location.flag)) {
                                    image in image.image?.resizable()
                                }
                                .frame(width: 70, height: 50)
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
