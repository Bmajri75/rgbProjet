//
//  ContentView.swift
//  rgbProjet
//
//  Created by bechir Majri on 26/06/2020.
//  Copyright © 2020 bechir Majri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var redValue: Double = 0.00
    @State private var greenValue: Double = 0.00
    @State private var blueValue: Double = 0.00
    var body: some View {
     
        ZStack{
            Color(red: redValue / 255, green: greenValue / 255, blue: blueValue / 255)
            VStack{
            
                Spacer()
                HStack(spacing: 50){
                    VStack {
                        Slider(value: ($redValue), in: 0...255, step: 1)
                        Text("Red: \(Int(redValue))")
                            .font(.footnote)
                            .fontWeight(.medium)
                            .foregroundColor(Color.white)
                    }
                    
                    VStack {
                        
                        Slider(value: $greenValue, in: 0...255, step: 1)
                        Text("Green: \(Int(greenValue))")
                            .font(.footnote)
                            .fontWeight(.medium)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                    }
                    
                    VStack {
                        Slider(value: $blueValue, in: 0...255, step: 1)
            
                        Text("Blue: \(Int(blueValue))")
                            .font(.footnote)
                            .fontWeight(.medium)
                            .foregroundColor(Color.white)
                
                    }
                }
                 .padding()
            }
        
        }.edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
