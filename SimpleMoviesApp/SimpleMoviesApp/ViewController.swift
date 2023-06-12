//
//  ViewController.swift
//  SimpleMoviesApp
//
//  Created by Zeinab on 11/06/2023.
//

import UIKit

class ViewController: UIViewController {
    
    let welcomeImageView = UIImageView()
    let getStartedButton = UIButton()
    let aboutTextView = UITextView()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureWelcomeImageView()
        configureGetStartedButton()
        configureAboutTextView()
    }
    @objc func pushMoviesImagesVC () {
        let MovieImagesVC = MovieImagesVC()
        navigationController?.pushViewController(MovieImagesVC, animated: true)
        
    }
    func configureWelcomeImageView() {
        view.addSubview(welcomeImageView)
        welcomeImageView.translatesAutoresizingMaskIntoConstraints = false
        welcomeImageView.image = UIImage(named: "welcome")
        NSLayoutConstraint.activate([welcomeImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: view.safeAreaInsets.top + 40), welcomeImageView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor), welcomeImageView.heightAnchor.constraint(equalToConstant: 200), welcomeImageView.widthAnchor.constraint(equalToConstant: 400)])
        
    }
    func configureGetStartedButton() {
        view.addSubview(getStartedButton)
        getStartedButton.backgroundColor = .blue
        getStartedButton.translatesAutoresizingMaskIntoConstraints = false
        getStartedButton.titleLabel?.textColor = .white
        getStartedButton.layer.cornerRadius = 5
        NSLayoutConstraint.activate([getStartedButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: view.safeAreaInsets.bottom - 40), getStartedButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 240),   getStartedButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)])
        getStartedButton.setTitle("Get Started ➤", for: .normal)
        getStartedButton.addTarget(self, action: #selector(pushMoviesImagesVC), for: .touchUpInside)
    }
    func configureAboutTextView() {
        view.addSubview(aboutTextView)
        aboutTextView.translatesAutoresizingMaskIntoConstraints = false
        aboutTextView.textAlignment = NSTextAlignment.justified
        aboutTextView.font = UIFont.preferredFont(forTextStyle: .headline)
       aboutTextView.textColor = UIColor.blue
        aboutTextView.text = "The Internet Movie Database (IMDb) is an online database containing information and statistics about movies, TV shows and video games as well as actors, directors and other film industry professionals 🎬🎥."
        NSLayoutConstraint.activate([aboutTextView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor), aboutTextView.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor), aboutTextView.heightAnchor.constraint(equalToConstant: 200), aboutTextView.widthAnchor.constraint(equalToConstant: 350)])
    }



}

