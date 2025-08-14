//
//  Seaport.swift
//  GitHubCollaboration
//
//  Created by Scholar on 8/12/25.
//

import SwiftUI

struct Seaport: View {
    @ObservedObject var bookmarkManager: BookmarkManager
    
    var isBookmarked: Bool {
        bookmarkManager.bookmarks.contains ("Seaport")
    }
    
    var body: some View {
        ScrollView{
            VStack (alignment: .leading){
                
                HStack {
                    
                    Text("Seaport")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.leading)
                    Spacer() //between texts
                    Text ("★★★")
                        .font(.largeTitle)
                        .foregroundColor(Color.yellow)
                    
                    Spacer()//pushes left
                    
                
                }//end of HStack
                
                Link("Click here for map view", destination: URL(string: "https://onthegomap.com/s/uaddig1j")!)
                //end of link
                .padding()
                
                Spacer()//pushes up //WSH up
                    .frame(height:3)
                Text ("Notes:")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()
                Text ("- Quiet starting around 10-11 P.M.")
                    .font(.title3)
                    .fontWeight(.bold)
                    .padding(.horizontal, 20)
                    .padding(.bottom, 2)
                Text("- Safe around mid day!")
                    .font(.title3)
                    .fontWeight(.bold)
                    .padding(.horizontal, 20)
                    .padding(.bottom, 2)
                Text("- Some parts are less populated + a bit sketchy")
                    .font(.title3)
                    .fontWeight(.bold)
                    .padding(.horizontal, 20)
                    .padding(.bottom, 2)
                
                HStack{
                    Image("seaport1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(20)
                        .padding()
                        .frame(width: 200, height: 320)

                    Image("mapSeaport")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(20)
                        .padding()
                        .frame(width: 200, height: 320)
                }
                
                
            }//end of VStack
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image(isBookmarked ? "bookmark-filled" : "bookmark-unfilled")
                        .resizable()
                        .frame(width: 25, height: 27)
                        .onTapGesture {
                            if !isBookmarked{
                                bookmarkManager.bookmarks.append("Seaport")
                            } else {
                                bookmarkManager.bookmarks.removeAll {
                                    $0 == "Seaport"}
                            }
                        
                        }
                }//end of nav bar
            }//end of toolbar
            Spacer ()
        }//end of scroll
    } //end of body
} //end of struct

#Preview {
    Seaport(bookmarkManager:BookmarkManager())
}
