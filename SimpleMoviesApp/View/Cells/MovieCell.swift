//
//  MovieCell.swift
//  SimpleMoviesApp
//
//  Created by Zeinab on 13/06/2023.
//

import UIKit

class MovieCell: UICollectionViewCell {
    static let ID = "MovieCell"
    let movieImg = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
       }
    
    required init?(coder: NSCoder) {
           fatalError("init(coder:) has not been implemented")
       }
    func setImg(imgUrl: String){
        movieImg.loadImg(imageUrl: imgUrl)
    }
    func configure() {
        addSubview(movieImg)
        movieImg.contentMode = .scaleAspectFit
        let padding: CGFloat = 8
        
        NSLayoutConstraint.activate([
            movieImg.topAnchor.constraint(equalTo: contentView.topAnchor, constant: padding),
            movieImg.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: padding),
            movieImg.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -padding),
            movieImg.widthAnchor.constraint(equalToConstant: 100),
            movieImg.heightAnchor.constraint(equalTo: movieImg.widthAnchor)])
    }
}
