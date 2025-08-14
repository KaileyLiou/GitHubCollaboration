//
//  Bookmarks.swift
//  GitHubCollaboration
//
//  Created by Scholar on 8/13/25.
//

import SwiftUI
var bookmarks : [String] = []

struct Bookmarks: View {
    @ObservedObject var bookmarkManager:BookmarkManager
    
    var body: some View {
        ScrollView{
            VStack{
                Text("My Bookmarks")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                if bookmarkManager.bookmarks.isEmpty{
                    Text ("No bookmarks yet")
                        .padding()
                } else {
                    ForEach(bookmarkManager.bookmarks,id:\.self) { route in
                        
                        NavigationLink(destination: routeView(for: route, bookmarkManager: bookmarkManager)){
                            Text(route)
                        }
                    }
                }
            }//end of Vstack
    
        }//end of scroll
    } //end of body
} //end of struct

@ViewBuilder
func routeView(for route: String, bookmarkManager:BookmarkManager) -> some View {
    switch route{
    case "Seaport":
        Seaport(bookmarkManager: bookmarkManager)
    case "Central Park":
        CentralPark(bookmarkManager: bookmarkManager)
    case "Astoria Park":
        AstoriaPark(bookmarkManager: bookmarkManager)
    case "West Side Highway":
        West_Side_Highway(bookmarkManager: bookmarkManager)
    default:
        Text("Unknown Route")
    }
    
}

#Preview {
    Bookmarks(bookmarkManager: BookmarkManager())
}
