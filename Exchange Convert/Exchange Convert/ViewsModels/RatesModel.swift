//
//  RatesModel.swift
//  Exchange Convert
//
//  Created by Osama Nidal on 22/04/2026.
//

import Foundation
import Combine



final class RatesModel: ObservableObject{
    let apiKey = Bundle.main.infoDictionary?["API_KEY"] as? String ?? ""
    @Published var rates: Rate? = nil
    func rateShow() async throws -> Rate{
        let endpoint = "https://openexchangerates.org/api/latest.json?app_id=\(apiKey)"
        guard let url = URL(string: endpoint) else{
            throw GHError.invalidUrl
        }
        
        let (data,response) = try await URLSession.shared.data(from: url)
        
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else{
            throw GHError.invalidResponse
        }
        
        do {
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            return try decoder.decode(Rate.self,from: data)
        }catch{
            throw GHError.invalidData
        }
    }
    
    func loadRates() async {
        do {
            let result = try await rateShow() // go fetch
            self.rates = result                // save it!
        } catch {
            print("Went something wrong......")
        }
    }
}


enum GHError: Error{
    case invalidUrl
    case invalidResponse
    case invalidData
    case invalidLoad
}
