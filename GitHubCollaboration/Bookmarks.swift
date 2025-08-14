//
//  Bookmarks.swift
//  GitHubCollaboration
//
//  Created by Scholar on 8/13/25.
//


import SwiftUI
<<<<<<< HEAD
import Foundation
import Combine


class bookMarks: ObservableObject {
    @Published var marks: [String] = ["no bookmarks added"]
}

struct Bookmarks: View {
    @StateObject private var Marks = bookMarks()
=======
var bookmarks : [String] = []

struct Bookmarks: View {
    @ObservedObject var bookmarkManager:BookmarkManager
    
>>>>>>> main
    var body: some View {
            VStack{
                Text("My Bookmarks")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
<<<<<<< HEAD
                List(Marks.marks, id: \.self) {mark in Text(mark)
                    .multilineTextAlignment(.center)}
            }//end vstack
=======
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
>>>>>>> main
    } //end of body

} //end of struct

<<<<<<< HEAD

=======
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
>>>>>>> main

#Preview {
    Bookmarks(bookmarkManager: BookmarkManager())
}
