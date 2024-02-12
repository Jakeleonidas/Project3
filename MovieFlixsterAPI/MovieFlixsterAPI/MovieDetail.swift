//
//  MovieDetail.swift
//  MovieFlixsterAPI
//
//  Created by Jorge Marquez on 2/11/24.
//
import SwiftUI
import SDWebImageSwiftUI

struct MovieDetail: View {
    
    var title: String
    var overview: String
    var vote_count: CGFloat
    var vote_average: CGFloat
    var popularity: CGFloat
    
    var body: some View {
        
        var title = ""
        var overview = ""
        var vote_count = ""
        var vote_average = ""
        var popularity = ""

            VStack{
                
                VStack{
                    Text(title)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding()
                    HStack{
                        VStack{
                            HStack{
                                Text(vote_average)
                                Text("Vote Average")
                            }
                            HStack{
                                Text(vote_count)
                                Text("Votes")
                            }
                        }
                        Spacer()
                        Text(popularity)
                        Text("Popularity")
                    }
                    
                    Divider()
                    Text(overview)
                }.padding()
            }
        
    }
}

#Preview {
    MovieDetail(title: "Aquaman and the Lost Kingdom", overview: "Black Manta, still driven by the need to avenge his father's death and wielding the power of the mythic Black Trident, will stop at nothing to take Aquaman down once and for all. To defeat him, Aquaman must turn to his imprisoned brother Orm, the former King of Atlantis, to forge an unlikely alliance in order to save the world from irreversible destruction.",vote_count: 1267, vote_average: 6.992, popularity: 2392.899)
}
