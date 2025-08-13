//
//  CentralPark.swift
//  GitHubCollaboration
//
//  Created by Scholar on 8/12/25.
//

import SwiftUI

struct CentralPark: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    Text("Central Park")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.leading)
                    Link("Click here for map view", destination: URL(string: "https://onthegomap.com/s/9lf7uind")!)
                        .foregroundColor(Color.blue)
                }
                .padding(.leading)
                
                Spacer() //between texts
                
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
            Text("- Good variety; trees and water.")
                .font(.title3)
                .fontWeight(.bold)
                .padding([.leading, .bottom], 2.0)
            Text("- Reservoir is cramped but flat!")
                .font(.title3)
                .fontWeight(.bold)
                .padding([.leading, .bottom], 2.0)
            Text("- Bike path is spacious and hilly!")
                .font(.title3)
                .fontWeight(.bold)
                .padding([.leading, .bottom], 2.0)
            Image("centralpark")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(20)
                .padding ()
            
        }//end vstack
        //end var body
        //end struct central park
    }
}
    #Preview {
        CentralPark()
    }

