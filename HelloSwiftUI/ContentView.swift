//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Chung Wussup on 4/8/24.
//

import SwiftUI

struct Movie: Identifiable, Hashable {
    let id = UUID()
    let title: String
    let description: String
    
}
 
class MovieListViewModel: ObservableObject {
    @Published var moviews: [Movie] = [
        Movie(title: "영화 제목1", description: "영화 내용1"),
        Movie(title: "영화 제목2", description: "영화 내용2"),
        Movie(title: "영화 제목3", description: "영화 내용3")
    ]
}

struct MovieDetailView: View {
    let movie: Movie
    
    var body: some View {
        VStack{
            Text(movie.title)
                .font(.title)
            Text(movie.description)
                .padding(/*@START_MENU_TOKEN@*/EdgeInsets()/*@END_MENU_TOKEN@*/)
            
        }
    }
}

struct ContentView: View {
    @StateObject private var viewModel = MovieListViewModel()
    
    
    var body: some View {
        NavigationStack {
            List(viewModel.moviews) { movie in
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
 swift 3.0 이전 프리뷰
 struct ContentView_Preview: PreviewProvider {
 static var previews: some View {
 ContentView()
 }
 }
 */
