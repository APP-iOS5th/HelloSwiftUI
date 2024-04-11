//
//  ContentView.swift
//  FirstSwiftUI
//
//  Created by 조성빈 on 4/8/24.
//

import SwiftUI

struct Movie: Identifiable, Hashable {
    let id = UUID()
    let title: String
    let description: String
}

class MovieListViewModel: ObservableObject {
    @Published var movies: [Movie] = [
        Movie(title: "괴물", description: "괴물 설명"),
        Movie(title: "크레스티드 게코의 삶", description: "크레스티드 게코의 삶 설명"),
        Movie(title: "도마뱀 왕국", description: "도마뱀 왕국 설명"),
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

//특정 버전 지원 제한 -> 15.0 버전 이하는 실행불가.
@available(iOS 15.0, *)
struct ContentView: View {
    
    @StateObject private var movieVM = MovieListViewModel()
    
    var body: some View {
        NavigationStack {
            List(movieVM.movies) { movie in
                NavigationLink(movie.title, value: movie)
            }
            .navigationTitle("영화 목록")
            .navigationDestination(for: Movie.self) { movie in
                MovieDetailView(movie: movie)
            }
        }
        .accentColor(.purple)
    }
}

//#Preview {
//    ContentView()
//}

