//
//  CentralPark.swift
//  GitHubCollaboration
//
//  Created by Scholar on 8/12/25.
//

import SwiftUI

struct CentralPark: View {
    
    @State private var isBookmarked = false
    @ObservedObject var Marks = bookMarks()
    
    var body: some View {
        ScrollView {
            VStack (alignment: .leading){
                HStack {
                    VStack(alignment: .leading) {
                        Text("Central Park")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        Link("Click here for map view", destination: URL(string: "https://onthegomap.com/s/9lf7uind")!)
                            .foregroundColor(Color.blue)
                    }
                    .padding(.leading)
                    
                    Spacer() //between texts
                    
                    Text ("★★★★★")
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
                Text("- Good variety; trees and water.")
                    .font(.title3)
                    .fontWeight(.bold)
                    .padding([.leading, .bottom], 2.0)
                Text("- Reservoir is cramped, but flat!")
                    .font(.title3)
                    .fontWeight(.bold)
                    .padding([.leading, .bottom], 2.0)
                Text("- Bike path is spacious, steep, and hilly!")
                    .font(.title3)
                    .fontWeight(.bold)
                    .padding([.leading, .bottom], 2.0)
                Image("centralpark")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(20)
                    .padding ()
                Spacer()
                Image("centralpark2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(20)
                    .padding ()
            }//end of VStack
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image(isBookmarked ? "bookmark-filled" : "bookmark-unfilled")
                        .resizable()
                        .frame(width: 25, height: 27)
                        .onTapGesture {
                            isBookmarked.toggle()
                            if isBookmarked {if !$Marks.marks.contains("Central Park") {
                            Marks.marks.append("Central Park")
                            }}
                        }
                }
            }//end toolbar
           // if isBookmarked {Marks.append("Central Park")}
        }
        Spacer ()
    
    } //end of body
} //end of struct

#Preview {
    CentralPark()
}
