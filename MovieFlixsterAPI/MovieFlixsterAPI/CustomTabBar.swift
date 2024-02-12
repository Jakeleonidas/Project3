//
//  CustomTabBar.swift
//  MovieFlixsterAPI
//
//  Created by Jorge Marquez on 2/11/24.
//

import SwiftUI

struct CustomTabBar: View {
    var body: some View {
        HStack{
            Button{
                 
            } label: {
                VStack(alignment: .center, spacing: 4){
                    Image(systemName: "star")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 24, height: 24)
                    Text("Posters")
                        
                }
            }
        }
    }
}

#Preview {
    CustomTabBar()
}
