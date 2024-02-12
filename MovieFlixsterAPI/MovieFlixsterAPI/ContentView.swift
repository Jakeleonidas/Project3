//
//  ContentView.swift
//  MovieFlixsterAPI
//
//  Created by Jorge Marquez on 2/11/24.
//

import SwiftUI
import SDWebImageSwiftUI

struct ContentView: View {
    @ObservedObject var obs = observer()
    
    var body: some View {
        
        NavigationView{
            
            List(obs.MovieList){ i in
                ListRow(url: i.poster_path, name: i.title, overview: i.overview)
            }
            .navigationBarTitle("Movies")
            
        }
    }
}

#Preview {
    ContentView()
}

class observer : ObservableObject{
    
    @Published var MovieList = [Movies]()
    
    init(){
        let url = "https://api.themoviedb.org/3/movie/now_playing?api_key=30c4c1418fa4d0e8ac85ab7b64a6f049"
        let sess = URLSession(configuration: .default)
        sess.dataTask(with: URL(string: url)!){ (data, _, _) in
            
            do{
                let fetch = try JSONDecoder().decode(MovieSelection.self, from: data!)
                self.MovieList = fetch.results
            }
            catch{
                print(error.localizedDescription)
            }
        }.resume()
    }
}

struct MovieSelection : Decodable {
    
    
    var results : [Movies]
}

struct Movies : Identifiable,Decodable{
    
    var id : Int
    var title : String
    var poster_path : String
    var overview : String
    var vote_count : CGFloat
    var vote_average : CGFloat
    var popularity : CGFloat
    var backdrop_path : String
}

struct ListRow : View {
    var url = ""
    var name = ""
    var overview = ""
    
    
    var body : some View{
        
        HStack{
            AnimatedImage(url: URL(string: "https://image.tmdb.org/t/p/w500\(url)"))
                .resizable()
                .scaledToFit()
            VStack{
                Text(name)
                    .font(.system(size: 19.5))
                    .fontWeight(.bold)
                
                Text(overview)
                    .lineLimit(5)
                    .font(.system(size: 12))
            }
            
        }
    
    }
}

struct PosterView : View{
    var url = ""
    
    var body : some View{
        
        VStack{
            AnimatedImage(url: URL(string: "https://image.tmdb.org/t/p/w500\(url)"))
                .resizable()
                .scaledToFit()
        }
    }
}





