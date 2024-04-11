//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 어재선 on 4/8/24.
//

import SwiftUI

struct Movie: Identifiable, Hashable {
    let id = UUID()
    let title: String
    let descriptions: String
}

class MovieListViewModel {
    var movies: [Movie] = [
        Movie(title: "영화 1", descriptions: "영화 1 설명"),
        Movie(title: "영화 2", descriptions: "영화 2 설명"),
        Movie(title: "영화 3", descriptions: "영화 3 설명")
    ]
}

struct MovieDetailView: View {
    let movie: Movie
    var body: some View {
        VStack {
            Text(movie.title).font(.title)
            Text(movie.descriptions).padding()
        }
    }
}

struct ContentView: View {
    private var viewModel = MovieListViewModel()
    var body: some View {
        
        NavigationStack{
            List(viewModel.movies) {
                movie in NavigationLink(movie.title, value: movie)
            }
            .navigationTitle("영화 목록")
            .navigationDestination(for: Movie.self) {
                movie in
                //Movie Detail
                MovieDetailView(movie: movie)
            }

        }
    }
    
}



#Preview {
    ContentView()
}

/*
 Swift 3.0이전 프리뷰
 struct ContentView_Previews: PreviewProvider {
 static var previews: some View {
 ContentView()
 }
 }
 */
