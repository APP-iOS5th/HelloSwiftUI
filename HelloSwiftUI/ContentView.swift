//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 장예진 on 4/8/24.



import SwiftUI

struct Movie: Identifiable, Hashable {
    let id = UUID()
    let title : String
    let description : String
}
class MovieListViewModel: ObservableObject{
    @Published var movies : [Movie] = [
        Movie(title: "movie1", description: "movie1 explanation"),
        Movie(title: "movie2", description: "movie2 explanation"),
        Movie(title: "movie3", description: "movie3 explanation"),
        
    ]
}

struct MovieDetailView: View {
    
    let movie : Movie
    
    var body: some View {
        VStack {
            Text(movie.title)
                .font(.title)
            Text(movie.description)
                .padding()
        }
    }
}

struct ContentView: View {
    //view model은 movie 라는 객체를 가진단 얘기
    @StateObject private var viewModel = MovieListViewModel()
    var body: some View {
        NavigationStack {
            List(viewModel.movies){ movie in
                NavigationLink(movie.title, value: movie)
            }
            .navigationTitle("movie list")
            //modifier
            .navigationDestination(for: Movie.self) { movie in
                MovieDetailView(movie: movie)
            }
        }
    }
}


#Preview {
    ContentView()
}

/*
 Swift 3.0 이전 프리뷰
 struct ContentView_Previews: PreviewProvider {
 static var previews: some View {
 ContentView()
 }
 }
 */
