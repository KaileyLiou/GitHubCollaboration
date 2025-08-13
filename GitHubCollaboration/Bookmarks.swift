//
//  Bookmarks.swift
//  GitHubCollaboration
//
//  Created by Scholar on 8/13/25.
//


import SwiftUI

struct Bookmarks: View {
    @EnvironmentObject var marks: [String] = []
    var body: some View {
        ScrollView{
            VStack{
                Text("My Bookmarks")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
            }//end vstack
        }
    } //end of body
} //end of struct

func addMark(place: String) {
    marks.append(place)
}


#Preview {
    Bookmarks()
}
