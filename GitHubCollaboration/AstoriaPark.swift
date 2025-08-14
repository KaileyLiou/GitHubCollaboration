//
//  AstoriaPark.swift
//  GitHubCollaboration
//
//  Created by Scholar on 8/12/25.
//

import SwiftUI

struct AstoriaPark: View {
    
    @ObservedObject var bookmarkManager: BookmarkManager

    var isBookmarked:Bool{
        bookmarkManager.bookmarks.contains("Astoria Park")
    }
    var body: some View {
        ScrollView {
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
                    
                    Text ("★★★★★")
                        .font(.largeTitle)
                        .foregroundColor(Color.yellow)
                    
                    Spacer()//pushes left
                    
                }//end of HStack
                
                Spacer()//pushes up //WSH up
                    
                Text ("Notes:")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()
                Text("- Very loud when approaching RFK bridge.")
                    .font(.title3)
                    .fontWeight(.bold)
                    .padding(.horizontal, 20)
                    .padding(.bottom, 2)
                Text("- Always lively with lots of people!")
                    .font(.title3)
                    .fontWeight(.bold)
                    .padding(.horizontal, 20)
                    .padding(.bottom, 2)
                Text("- Safe at night!")
                    .font(.title3)
                    .fontWeight(.bold)
                    .padding(.horizontal, 20)
                    .padding(.bottom, 2)
                Image("astoriapark")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(20)
                    .padding ()
                Spacer()
                Image("astoriapark2")
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
                                bookmarkManager.bookmarks.removeAll { $0 == "Astoria Park"}
                            } else {
                                    bookmarkManager.bookmarks.append ("Astoria Park")
                                } //end of else
                        }//end of tapgesture
                }//end of toolbarItem
            }//end of toolbar
        }
        Spacer ()
    
    } //end of body
} //end of struct

#Preview {
    AstoriaPark(bookmarkManager: BookmarkManager())
}
