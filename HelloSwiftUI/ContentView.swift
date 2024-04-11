//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 황규상 on 4/8/24.
//
// 규상이 바부

import SwiftUI

struct Movie: Identifiable, Hashable {
    let id = UUID()
    let title: String
    let description: String
}

class MovieListViewModel: ObservableObject {
    /// @Published : 이벤트 드리븐 하게 만들어준다.
    @Published var movies: [Movie] = [
        Movie(title: "영화 1", description: "영화 1 설명"),
        Movie(title: "영화 2", description: "영화 2 설명"),
        Movie(title: "영화 3", description: "영화 3 설명")
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
    ///@StateObject는 만들어지면 유지된다. (메모리상에서 해지하지 않고 사용할 수 있게 해준다.)
    ///@State와 @StateObject 차이점 : @State를 주면 해당 뷰가 사라지면 사라지는 변수가되지만 @StateObject는 해당 뷰가 사라지더라도 메모리에 가지고 있헤 해준다.
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
    ContentView()
}

/**
 Swift 3.0 이전 프리뷰
 struct ContentView_Previews:PreviewProvider {
    static var previews: some View {
            ContentView()
    }
 }
 */
