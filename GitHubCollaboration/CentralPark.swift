//
//  CentralPark.swift
//  GitHubCollaboration
//
//  Created by Scholar on 8/12/25.
//

import SwiftUI

struct CentralPark: View {
    var body: some View {
        
        VStack (alignment: .leading){
            HStack{
                Text("Central Park")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.leading)
                Spacer()
                VStack{
                    Text("★★★★★")
                        .font(.title)
                        .foregroundColor(Color.yellow)
                }//end stars vstack
            }//end HStack
            Spacer()
                .frame(height:50)
            Text ("Notes")
                .font(.title)
                .fontWeight(.bold)
                .padding()
            
        }//end vstack
        Spacer ()
        
    } //end var body
} //end struct central park

#Preview {
    CentralPark()
}
