//
//  Network.swift
//  BookBum
//
//  Created by Alexsa Tolentino on 2/21/23.
//

import SwiftUI

struct Network: View {
    var body: some View {
        
        HStack{
            List(0 ..< 8) { item in
                Image(systemName: "photo")
                    .renderingMode(.original)
                    .aspectRatio(contentMode: .fill)
                    .frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                Text("Name")
                    .font(.body)
                    .fontWeight(.light)
//                    .multilineTextAlignment(.leading)
                    .padding(.trailing, 150.0)
                    .frame(width: 200.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/20.0)
                
                Text ("Placeholder")
                    .font(.body)
                    .fontWeight(.light)
//                    .multilineTextAlignment(.leading)
                    .padding(/*@START_MENU_TOKEN@*/.trailing, 110.0/*@END_MENU_TOKEN@*/)
                    .frame(width: 200.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/20.0)
            }
        }
    }
}


struct Network_Previews: PreviewProvider {
    static var previews: some View {
        Network()
    }
}
