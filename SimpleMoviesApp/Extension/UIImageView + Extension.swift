//
//  UIImageView + Extension.swift
//  SimpleMoviesApp
//
//  Created by Zeinab on 13/06/2023.
//

import UIKit

extension UIImageView {
    
    func loadImg (imageUrl: String) {
        guard let url = URL(string: imageUrl) else {return}
        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: url){
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self?.image = image
                    }
                }
            }
        }
    }
}
