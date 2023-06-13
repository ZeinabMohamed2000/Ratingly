//
//  ViewModel.swift
//  SimpleMoviesApp
//
//  Created by Zeinab on 12/06/2023.
//

import Foundation

final class MoviesViewModel {
    
     let baseUrl : String = "https://imdb-api.com/en/API/BoxOffice/k_tu6e92lf"
    var networkServiceObj : NetworkService = NetworkService()
    var bindingMoviesResults : (()->()) = {}
    var movies : [Item] = []{
        didSet{
            bindingMoviesResults()
            
        }
    }
    func getMovies(){
        networkServiceObj.getMovies(url: baseUrl) {result in
            switch result {
            case .success(let movies):
                self.movies = movies
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
}
    
