//
//  AstoriaPark.swift
//  GitHubCollaboration
//
//  Created by Scholar on 8/12/25.
//

import SwiftUI

struct AstoriaPark: View {
    var body: some View {
        VStack (alignment: .leading){
            HStack {
                VStack(alignment: .leading) {
                    Text("Astoria Park")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    Link("Click here for map view", destination: URL(string: "https://onthegomap.com/s/mffq4cu0")!)
                        .foregroundColor(Color.blue)
                }
                .padding(.leading)
                
                Spacer() //between texts
                
                Text ("★★★★")
                    .font(.largeTitle)
                    .foregroundColor(Color.yellow)
                
                Spacer()//pushes left
                
            }//end of HStack
            
            Spacer()//pushes up //WSH up
                .frame(height:50)
            Text ("Notes")
                .font(.title)
                .fontWeight(.bold)
                .padding()
            Text("Great nature views!")
                .font(.title3)
                .fontWeight(.bold)
                .padding()
            Text("Very loud when approaching RFK bridge.")
                .font(.title3)
                .fontWeight(.bold)
                .padding()
            Text("Always lively with lots of people!")
                .font(.title3)
                .fontWeight(.bold)
                .padding()
            }//end of VStack
        Spacer ()
    
    } //end of body
} //end of struct

#Preview {
    AstoriaPark()
}
