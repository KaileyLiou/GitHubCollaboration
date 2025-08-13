//
//  ContentView.swift
//  GitHubCollaboration
//
//  Created by Scholar on 8/11/25.
//

import SwiftUI
struct ContentView: View {
    var body: some View {
        NavigationStack { //start nav stack
            ScrollView{
                VStack {
                    Text("Reliable Routes")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    NavigationLink(destination: CentralPark()) {
                        ZStack{
                            Image("centralpark")
                                .resizable(resizingMode: .tile)
                            Text("Central Park")
                                .font(.headline)
                                .fontWeight(.heavy)
                                .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                                
                            }
                    }//end central park nav link
                    
                    NavigationLink(destination: AstoriaPark()) {
                        ZStack{
                            Image("astoriapark")
                                .resizable(resizingMode: .tile)
                                .aspectRatio(contentMode: .fill)
                            Text("Astoria Park")
                                .font(.headline)
                                .fontWeight(.heavy)
                            .foregroundColor(Color.white)}
                    } //end astoria park nav link
                    
                    NavigationLink(destination: West_Side_Highway()) {
                        ZStack{
                            Image("WSH")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fill)
                            Text("West Side Highway")
                            .font(.headline)
                            .foregroundColor(Color.white)}
                    } //end west side highway nav link
                    
                    NavigationLink(destination: Seaport()) {
                        ZStack{
                            Image("seaport")
                                .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 200.0, trailing: 0.0), resizingMode: .tile)
                                .aspectRatio(contentMode: .fill)
                            
                            
                            Text("Seaport")
                                .font(.headline)
                            .foregroundColor(Color.white)}//end zstack
                    } //end seaport nav link
                    
                }//end vstack
                .padding()
            }//end scrollview
        } //end nav stack
        
    }
}


#Preview {
    ContentView()
}
