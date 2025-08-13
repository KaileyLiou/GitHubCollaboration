//
//  Bookmarks.swift
//  GitHubCollaboration
//
//  Created by Scholar on 8/13/25.
//

import SwiftUI

struct Bookmarks: View {
    var body: some View {
        ScrollView{
            VStack{
                Text("My Bookmarks")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
            }
        }
    } //end of body
} //end of struct

#Preview {
    Bookmarks()
}
