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
               
                Text("Astoria Park")
                    .font(.largeTitle)
                    .fontWeight(.bold)
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
            
        }//end of VStack
        Spacer ()
    
    } //end of body
} //end of struct

#Preview {
    AstoriaPark()
}
