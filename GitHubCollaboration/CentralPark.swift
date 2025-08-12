//
//  CentralPark.swift
//  GitHubCollaboration
//
//  Created by Scholar on 8/12/25.
//

import SwiftUI

struct CentralPark: View {
    var body: some View {
        
        VStack{
            HStack{
                Text("Central Park")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Spacer()
                VStack{
                    Text("★★★★★")
                        .font(.title)
                        .foregroundColor(Color.yellow)
                }//end stars vstack
            }//end HStack
            Spacer()
        }//end vstack
        .padding()
        
    } //end var body
} //end struct central park

#Preview {
    CentralPark()
}
