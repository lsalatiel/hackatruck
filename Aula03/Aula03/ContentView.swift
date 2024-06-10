//
//  ContentView.swift
//  Aula03
//
//  Created by Turma02-17 on 10/06/24.
//

import SwiftUI

struct ContentView: View {
    @State private var backgroundColor: Color = .white;
    @State private var height: String = "0";
    @State private var weight: String = "0";
    @State private var imc: Double = 0;
    @State private var showResult: Bool = false;
    private let stdCornerRadius: Double = 6;
    
    var body: some View {
        ZStack {
            VStack() {
                Text("Calculadora de IMC")
                    .bold()
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Spacer()
                
                VStack(spacing: 30) {
                    TextField("", text: $weight)
                        .background(.white)
                        .multilineTextAlignment(.center)
                        .cornerRadius(stdCornerRadius)
                        .font(.system(size: 25))
                    
                    TextField("", text: $height)
                        .background(.white)
                        .multilineTextAlignment(.center)
                        .cornerRadius(stdCornerRadius)
                        .font(.system(size: 25))
                    
                    Button("Calcular") {
                        imc = calculateIMC(height: Double(height)!, weight: Double(weight)!)
                        
                    }
                    .frame(width: 130, height: 50)
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(stdCornerRadius)
                }
                .padding(.bottom, 240)
                
                Text(getIMCText(imc: imc))
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundStyle(.white)
                
                Spacer()
                
                Image("tabela-IMC")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 200, height: 200)
            }
        }
        .padding()
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        .background(getBackgroundColor(imc: imc))
    }
}

func calculateIMC(height: Double, weight: Double) -> Double {
    return weight / pow(height, 2)
}

func getIMCText(imc: Double) -> String {
    if imc < 18.5 {
        return "Baixo peso";
    }
    else if imc >= 18.5 && imc <= 24.99 {
        return "Normal";
    }
    else if imc >= 25 && imc <= 29.99 {
        return "Sobrepeso";
    }
    else {
        return "Obesidade";
    }
}

func getBackgroundColor(imc: Double) -> Color {
    if imc < 18.5 {
        return Color("baixo");
    }
    else if imc >= 18.5 && imc <= 24.99 {
        return Color("normal");
    }
    else if imc >= 25 && imc <= 29.99 {
        return Color("sobrepeso");
    }
    else {
        return Color("obesidade");
    }
}

#Preview {
    ContentView()
}
