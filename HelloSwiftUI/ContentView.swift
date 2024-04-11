//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 차지용 on 4/8/24.
//

import SwiftUI

struct Movie: Identifiable, Hashable {
    let id = UUID()
    let title: String
    let description: String
}

class MovieLsitViewModel {
     var movies: [Movie] = [
        Movie(title: "영화 1 ", description: "영화 1 설명"),
        Movie(title: "영화 2 ", description: "영화 2 설명"),
        Movie(title: "영화 3 ", description: "영화 3 설명")
    ]
}

struct MovieDetailView: View {
    let movie: Movie
    
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
    private var viewModel = MovieLsitViewModel()
    var body: some View {
        NavigationStack {
            List(viewModel.movies) { movie in
                NavigationLink(movie.title, value: movie)
            }
            .navigationTitle("영화 목록")
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
Swift 3.0 이전 프리퓨
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
*/
