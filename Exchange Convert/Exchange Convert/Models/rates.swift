//
//  rates.swift
//  Exchange Convert
//
//  Created by Osama Nidal on 21/04/2026.
//

import Foundation


struct Rate: Codable{
    let base: String
    let rates: [String:Double]
}
