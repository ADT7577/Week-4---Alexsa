//
//  Login Page.swift
//  BookBum
//
//  Created by Alexsa Tolentino on 2/21/23.
//

import SwiftUI
import UIKit

struct Login_Page: View {
    var body: some View {
        
        
        VStack {
            VStack {
                VStack {
                    Image (uiImage: UIImage(named:"Bug.png")!)
                        .renderingMode(.original)
                        .aspectRatio(contentMode: .fill)
                        .padding(.vertical, 0.0)
                        .frame(width: 100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0)
                    
                    VStack{
                        Image(uiImage: UIImage(named: "1.png")!)
                            .renderingMode(/*@START_MENU_TOKEN@*/.original/*@END_MENU_TOKEN@*/)
                            .resizable()
                            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                            .padding(.vertical, 0.0)
                            .frame(width:240, height:200.0)
                    }
                    Form {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Content@*/Text("Username")
                            .font(.body)
                            .fontWeight(.light)
                        /*@END_MENU_TOKEN@*/
                    }
                    .frame(width: /*@START_MENU_TOKEN@*/300.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                   
                }
                Form {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Content@*/Text("Content")
                        .font(.body)
                        .fontWeight(.light)
                        /*@END_MENU_TOKEN@*/
               }
                .frame(width: /*@START_MENU_TOKEN@*/300.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
            }
        }
    }
}
        
struct Login_Page_Previews: PreviewProvider {
    static var previews: some View {
        Login_Page()
    }
}
