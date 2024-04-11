//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Jungjin Park on 2024-04-08.
//

import SwiftUI

struct Movie: Identifiable, Hashable {
    let id = UUID()
    let title: String
    let description: String
}

class MovieListViewModel: ObservableObject {
    @Published var movies: [Movie] = [
        Movie(title: "Movie 1", description: "Movie 1 Description"),
        Movie(title: "Movie 2", description: "Movie 2 Description"),
        Movie(title: "Movie 3", description: "Movie 3 Description")
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
    @StateObject private var viewModel = MovieListViewModel()
    var body: some View {
        NavigationStack {
            List(viewModel.movies) { movie in
                NavigationLink(movie.title, value: movie)
            }
            .navigationTitle("Movie List")
            .navigationDestination(for: Movie.self) { movie in
                    MovieDetailView(movie: movie)
            }
        }
    }}

#Preview {
    ContentView()
}
