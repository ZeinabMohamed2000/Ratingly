//
//  NetworkService.swift
//  SimpleMoviesApp
//
//  Created by Zeinab on 12/06/2023.
//

import Foundation

final class NetworkService {
    func getMovies(url: String, complition: @escaping (Result<[Item],MError>)-> Void) {
 
        guard let url = URL(string: url) else {
            complition(.failure(.invaildUrl))
            return
        }
        let request = URLRequest(url: url)
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: request) { data, response, error in
            guard let data = data else {
                complition(.failure(.invalidData))
                return}
           
            do{
                let movies = try JSONDecoder().decode([Item].self, from: data)
                complition(.success(movies))
            }
            catch{
                complition(.failure(.invalidData))
            }
        }
        
        task.resume()
        
    }
}
