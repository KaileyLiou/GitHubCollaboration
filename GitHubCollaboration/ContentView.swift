//
//  ContentView.swift
//  GitHubCollaboration
//
//  Created by Scholar on 8/11/25.
//

import SwiftUI
struct ContentView: View {
    @StateObject var bookmarkManager = BookmarkManager()
    
    var body: some View {
        NavigationStack { //start nav stack
            ScrollView{
                VStack {
                    HStack {
                        Text("Explore")
                            .font(.title)
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.leading)
                        
                        Image("run")
                            .resizable()
                            .frame(width: 40, height: 35)
                    }
                    
                    NavigationLink(destination: CentralPark(bookmarkManager: bookmarkManager)) {
                        ZStack{
                            Image("centralpark")
                                .resizable()
                                .frame(width: 370, height: 170)
                                .cornerRadius(15)
                                .clipped()
                            
                            Text("Central Park")
                                .font(.largeTitle)
                                .fontWeight(.heavy)
                                .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                                
                            }
                    }//end central park nav link
                    
                    NavigationLink(destination: AstoriaPark(bookmarkManager:bookmarkManager)) {
                        ZStack{
                            Image("astoriapark")
                                .resizable()
                                .frame(width: 370, height: 170)
                                .cornerRadius(15)
                                .clipped()
                            
                            Text("Astoria Park")
                                .font(.largeTitle)
                                .fontWeight(.heavy)
                                .foregroundColor(Color.white)}
                    } //end astoria park nav link
                    
                    NavigationLink(destination: West_Side_Highway(bookmarkManager: bookmarkManager)) {
                        ZStack{
                            Image("WSH")
                                .resizable()
                                .frame(width: 370, height: 170)
                                .cornerRadius(15)
                                .clipped()
                            
                            Text("West Side Highway")
                                .font(.largeTitle)
                                .fontWeight(.heavy)
                                .foregroundColor(Color.white)}
                    } //end west side highway nav link
                    
                    NavigationLink(destination: Seaport(bookmarkManager: bookmarkManager)) {
                        ZStack{
                            Image("seaport")
                                .resizable()
                                .frame(width: 370, height: 170)
                                .cornerRadius(15)
                                .clipped()
                            
                            Text("Seaport")
                                .font(.largeTitle)
                                .fontWeight(.heavy)
                                .foregroundColor(Color.white)}//end zstack
                    } //end seaport nav link
                    
                }//end vstack
                .padding()
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        HStack {
                            Text("Reliable Routes")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                            NavigationLink(destination: Bookmarks(bookmarkManager:bookmarkManager)) {
                                Image("bookmark-filled")
                                    .resizable()
                                    .frame(width: 25, height: 27)
                            }
                        }
                        .padding()
                    }
                }
            }//end scrollview
        } //end nav stack
        
    }
}


#Preview {
    ContentView()
}
