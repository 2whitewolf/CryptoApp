//
//  String.swift
//  CryptoApp
//
//  Created by Bogdan Sevcenco on 27.05.2022.
//

import Foundation

extension String {
    
    
    var removingHTMLOccurances: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
    
}
