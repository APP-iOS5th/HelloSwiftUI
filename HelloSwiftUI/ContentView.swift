//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 박지혜 on 4/8/24.
//

import SwiftUI

struct Movie: Identifiable, Hashable {
    let id = UUID() // 생성자 함수
    let title: String
    let description: String
}

class MovieListViewModel: ObservableObject {
    @Published var movies: [Movie] = [ // 값 게시
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
                .font(.title)
            Text(movie.description)
                .padding()
        }
    }
}

struct ContentView: View {
    @StateObject private var viewModel = MovieListViewModel() // 값 유지
    
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
