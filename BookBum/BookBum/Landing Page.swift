//
//  Landing Page.swift
//  BookBum
//
//  Created by Alexsa Tolentino on 2/20/23.
//

import SwiftUI
import UIKit
import AVFoundation

let bundleAudio = ["Damiano_Baldoni_ChillJazzLoop.mp3"];

//

func loadBundleAudio(_ fileName: String) -> AVAudioPlayer? {
    let path = Bundle.main.path(forResource: fileName, ofType:nil)!
    let url = URL(fileURLWithPath: path)
    do {
        return try AVAudioPlayer(contentsOf: url)
    } catch {
        print("loadBundleAudio error", error)
    }
    return nil
}

struct Landing_Page: View {
    @State private var navPath = NavigationPath()
    @State private var soundIndex = 0
    @State private var soundFile = bundleAudio[0]
    @State private var player: AVAudioPlayer? = nil
    
    
    var body: some View {
       //Main
        
        
        VStack {
            
            //Logo and Text
            VStack {
                Image(uiImage: UIImage(named: "Logo.png")!)
                    .renderingMode(/*@START_MENU_TOKEN@*/.original/*@END_MENU_TOKEN@*/)
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .padding(.vertical)
                    .frame(width:440, height:440)
                
                Text("BookBum © 2023")
                    .font(.caption)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .font(.title)
                    .foregroundColor(.orange)
            } //End of Vstack Logo
            
            NavigationView{
                NavigationLink (destination: Login_Page()){
                    Text("Login")
                }
            }
            
            

//AUDIO
    VStack {
      HStack {
         Button("Play") {
                        print("Button Play")
                        player = loadBundleAudio(soundFile)
                        print("player", player as Any)
                        // Loop indefinitely
                        player?.numberOfLoops = -1
                        player?.play()
                    } //button
          Button("Stop") {
                        print("Button Stop")
                        player?.stop()
                    } //button
                } //Hstack
            } //VStack
          } //Vstack Main
        
      
        
        
        
        
        
        
        
        } // Some View
    } //Content View
  

    struct Landing_Page_Previews: PreviewProvider {
        static var previews: some View {
            Landing_Page()
        }
    }

// https://developer.apple.com/documentation/swiftui/navigationlink
// https://www.hackingwithswift.com/quick-start/Swiftui/how-to-use-programmatic-navigation-in-swiftui

