//
//  ContentView.swift
//  BookBum
//
//  Created by Alexsa Tolentino on 2/20/23.
//

import SwiftUI
import UIKit

let jingle = ["Damiano_Baldoni_ChillJazzLoop.mp3"];



struct ContentView: View {
 var body: some View {
    //Main
     VStack {

         
//VStack1
VStack {

    
//Vstack2
VStack {
    Image(uiImage: UIImage(named: "Logo.png")!)
        .renderingMode(/*@START_MENU_TOKEN@*/.original/*@END_MENU_TOKEN@*/)
        .resizable()
        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
        .padding(.vertical)
            .frame(width:340, height:340)
                 
        Text("BookBum © 2023")
            .font(.caption)
            .fontWeight(.bold)
            .multilineTextAlignment(.center)
            .font(.title)
            .foregroundColor(.orange)
                } //Vstack2
}//Vstack1
 
         
HStack {
        Button("Login") {
                 /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
        }
        .padding (40)
        .buttonStyle(.bordered)
        .buttonBorderShape(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=shape: ButtonBorderShape@*/.capsule/*@END_MENU_TOKEN@*/)
        .hoverEffect(/*@START_MENU_TOKEN@*/.lift/*@END_MENU_TOKEN@*/)
        .onTapGesture {
            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Code@*/ /*@END_MENU_TOKEN@*/
        }
        
      Button("Register") {
                 /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/ }
        .padding(40)
    
        .buttonStyle(.borderedProminent)
        .buttonBorderShape(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=shape: ButtonBorderShape@*/.capsule/*@END_MENU_TOKEN@*/)
        .hoverEffect(/*@START_MENU_TOKEN@*/.lift/*@END_MENU_TOKEN@*/)
             }
     } //VStack Main
    } // Some View
  } //Content View

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
