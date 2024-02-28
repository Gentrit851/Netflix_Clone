//
//  Extensions.swift
//  Netflix_Clone
//
//  Created by Florian Saqipi on 28.2.24.
//

import Foundation

extension String{
    func capitalizeFirstLetter() -> String{
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}
