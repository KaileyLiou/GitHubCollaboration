//
//  Seaport.swift
//  GitHubCollaboration
//
//  Created by Scholar on 8/12/25.
//

import SwiftUI

struct Seaport: View {
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
                
                Spacer()//pushes up //WSH up
                    .frame(height:50)
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
            Spacer ()
        }//end of scroll
    } //end of body
} //end of struct

#Preview {
    Seaport()
}
