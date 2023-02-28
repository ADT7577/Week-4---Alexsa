//
//  Landing Page.swift
//  BookBum
//
//  Created by Alexsa Tolentino on 2/28/23.
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
    @State private var soundIndex = 0
    @State private var soundFile = bundleAudio[0]
    @State private var player: AVAudioPlayer? = nil
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
            VStack {
                HStack {
                    Button("Play") {
                        print("Button Play")
                        player = loadBundleAudio(soundFile)
                        print("player", player as Any)
                        // Loop indefinitely
                        player?.numberOfLoops = -1
                        player?.play()
                    }
                    Button("Stop") {
                        print("Button Stop")
                        player?.stop()
                    }
                    Button("Next") {
                        soundIndex = (soundIndex+1) % bundleAudio.count
                        soundFile = bundleAudio[soundIndex];
                    }
                }
            } //VStack Main
        } // Some View
    } //Content View
    
    struct Landing_Page_Previews: PreviewProvider {
        static var previews: some View {
            Landing_Page()
        }
    }
}
