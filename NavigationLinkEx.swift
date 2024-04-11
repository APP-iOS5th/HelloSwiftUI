//
//  NavigationLinkEx.swift
//  HelloSwiftUI
//
//  Created by 정종원 on 4/11/24.
//

import SwiftUI

struct Movie: Identifiable, Hashable {
    let id = UUID()
    let title: String
    let description: String
}

class MovieListViewModel: ObservableObject {
    @Published var movies: [Movie] = [
        Movie(title: "영화1", description: "영화 1 설명"),
        Movie(title: "영화2", description: "영화 2 설명"),
        Movie(title: "영화3", description: "영화 3 설명")
    ]
}

struct MovieDetailView: View {
    let movie: Movie
    
    var body: some View {
        VStack {
            Text(movie.title)
                .font(.largeTitle)
            Text(movie.description)
                .padding()
        }
    }
}

struct NavigationLinkEx: View {
    
    @StateObject private var viewModel = MovieListViewModel()
    
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
    NavigationLinkEx()
}
