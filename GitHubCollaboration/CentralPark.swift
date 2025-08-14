//
//  CentralPark.swift
//  GitHubCollaboration
//
//  Created by Scholar on 8/12/25.
//

import SwiftUI

struct CentralPark: View {
    
    @ObservedObject var bookmarkManager: BookmarkManager
    var isBookmarked: Bool {
        bookmarkManager.bookmarks.contains ("Central Park")
    }
    
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
                Text ("Notes:")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()
                Text("- Good variety; trees and water.")
                    .font(.title3)
                    .fontWeight(.bold)
                    .padding(.horizontal, 20)
                    .padding(.bottom, 2)
                Text("- Reservoir is cramped, but flat!")
                    .font(.title3)
                    .fontWeight(.bold)
                    .padding(.horizontal, 20)
                    .padding(.bottom, 2)
                Text("- Bike path is spacious, steep, and hilly!")
                    .font(.title3)
                    .fontWeight(.bold)
                    .padding(.horizontal, 20)
                    .padding(.bottom, 2)
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
                            if isBookmarked {
                                bookmarkManager.bookmarks.removeAll {$0 == "Central Park"}
                            } else {
                                bookmarkManager.bookmarks.append("Central Park")
                            } //end of else
                        } //end of tap
                }//end of tool item
            }//end of toolbar
        }
        Spacer ()
    
    } //end of body
} //end of struct

#Preview {
    CentralPark(bookmarkManager:BookmarkManager())
}
