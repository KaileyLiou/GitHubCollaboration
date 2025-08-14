//
//  West Side Highway.swift
//  GitHubCollaboration
//
//  Created by Scholar on 8/12/25.
//

import SwiftUI

struct West_Side_Highway: View {
    
    @ObservedObject var bookmarkManager: BookmarkManager
    var isBookmarked: Bool{
        bookmarkManager.bookmarks.contains("West Side Highway")
    }

    var body: some View {
        ScrollView{
            VStack (alignment: .leading){
                HStack {
                    
                    Text("West Side Highway")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.leading)
                    Spacer() //between texts
                    Text ("★★★★")
                        .font(.largeTitle)
                        .foregroundColor(Color.yellow)
                    
                    Spacer()//pushes left
                    
                }//end of HStack
                
                Link("Click here for map view", destination: URL(string: "https://onthegomap.com/s/4nfthcn0")!)
                //end of link
                    .padding()
                
                Spacer()//pushes up //WSH up
                    .frame(height:3)
                
                Text("Notes:")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()
                Text("- Lots of tourists at night to view the Jersey Skyline.")
                    .font(.title3)
                    .fontWeight(.bold)
                    .padding(.horizontal, 20)
                    .padding(.bottom, 2)
                Text("- Spacious, but can be crowded at sunset times")
                    .font(.title3)
                    .fontWeight(.bold)
                    .padding(.horizontal, 20)
                    .padding(.bottom, 2)
                Text("- Lots of fast cyclists!")
                    .font(.title3)
                    .fontWeight(.bold)
                    .padding(.horizontal, 20)
                    .padding(.bottom, 2)
                
                HStack{
                    Image("vertical")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(20)
                        .padding()
                        .frame(width: 200, height: 320)
                    Spacer ()
                    Image("WSHmap")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(20)
                        .padding()
                        .frame(width: 200, height: 310)
                    
                } //end of HStack
                
            }//end of VStack
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image(isBookmarked ? "bookmark-filled" : "bookmark-unfilled")
                        .resizable()
                        .frame(width: 25, height: 27)
                        .onTapGesture {
                            if isBookmarked{
                                bookmarkManager.bookmarks.removeAll { $0 == "West Side Highway"}
                            } else {
                                bookmarkManager.bookmarks.append("West Side Highway")
                            }
                        }
                }
            }
            Spacer ()
        }//end of scroll
    } //end of body
    
}//end of struct



#Preview {
    West_Side_Highway(bookmarkManager: BookmarkManager())
}
