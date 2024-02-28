//
//  APICaller.swift
//  Netflix_Clone
//
//  Created by Florian Saqipi on 28.2.24.
//

import Foundation

struct Constants{
    static let API_KEY = "7b9f9de995d66c58e9027f8b1c2f450d"
    static let baseURL = "https://api.themoviedb.org"
}

enum APIError: Error{
    case failedToGetData
}

class APICaller{
    static let shared = APICaller()
    
    func getTrendingMovies(completion: @escaping (Result<[Movie], Error>) -> Void){
        
        guard let url = URL(string: "\(Constants.baseURL)/3/trending/movie/day?api_key=\(Constants.API_KEY)") else {return}
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) {data, _, error in
            guard let data = data, error == nil else {
                return
             }
            
            do{
                let results = try JSONDecoder().decode(TredingMoviesResponse.self, from: data)
                completion(.success(results.results))
                
            }catch{
                completion(.failure(error))
            }
            
        }
        task.resume()
                    
    }
    
    func getTrendingTvs(completion: @escaping (Result<[Tv], Error>) -> Void){
        guard let url = URL(string: "\(Constants.baseURL)/3/trending/tv/day?api_key=\(Constants.API_KEY)") else {return}
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) {data, _, error in
            guard let data = data, error == nil else{
                return
            }
            do {
                let results = try JSONDecoder().decode(TrendingTvResponse.self, from: data)
                print(results)
            }
            catch{
                print(error.localizedDescription)
            }
        }
        task.resume()
    }
    
    func getUpcomingMovies(completion: @escaping (Result<[Movie], Error>) -> Void){
        guard let url = URL(string: "\(Constants.baseURL)/3/movie/upcoming?api_key=\(Constants.API_KEY)") else {return}
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            do {
                let results = try JSONDecoder().decode(TredingMoviesResponse.self, from: data)
                print(results)
            }catch{
                print(error.localizedDescription)
            }
        }
        task.resume()
    }
    
    func getPopular(completion: @escaping (Result<[Movie], Error>) -> Void){
        guard let url = URL(string: "\(Constants.baseURL)/3/movies/popular?api_key=\(Constants.API_KEY)") else { return}
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            do {
                let result = try JSONDecoder().decode(TredingMoviesResponse.self, from: data)
                print(result)
            }catch{
                print(error.localizedDescription)
            }
        }
        task.resume()
    }
}


