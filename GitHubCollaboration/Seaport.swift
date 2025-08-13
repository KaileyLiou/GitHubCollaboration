//
//  Seaport.swift
//  GitHubCollaboration
//
//  Created by Scholar on 8/12/25.
//

import SwiftUI

struct Seaport: View {
    
    @State private var isBookmarked = false

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
                Text ("Notes")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()
                Text (" - Pretty views of Manhattan and Brooklyn Bridge")
                    .font(.title3)
                    .fontWeight(.bold)
                    .padding([.leading, .bottom], 2.0)
                Text (" - Along the water, fairly flat")
                    .font(.title3)
                    .fontWeight(.bold)
                    .padding([.leading, .bottom], 2.0)
                Text(" - Some parts are less populated + a bit sketchy")
                    .font(.title3)
                    .fontWeight(.bold)
                    .padding([.leading, .bottom], 2.0)
                
                HStack{
                    Image("seaport1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(20)
                        .padding ()
                    Spacer ()
                    Image("mapSeaport")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(20)
                    .padding ()

                }
                
                
            }//end of VStack
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image(isBookmarked ? "bookmark-filled" : "bookmark-unfilled")
                        .resizable()
                        .frame(width: 25, height: 27)
                        .onTapGesture {
                            isBookmarked.toggle()
                        }
                }
            }
            Spacer ()
        }//end of scroll
    } //end of body
} //end of struct

#Preview {
    Seaport()
}
