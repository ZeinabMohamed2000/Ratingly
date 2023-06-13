//
//  MovieImagesVC.swift
//  SimpleMoviesApp
//
//  Created by Zeinab on 11/06/2023.
//

import UIKit

class MovieImagesVC: UIViewController,  UICollectionViewDataSource {
   
    private var searchBar = UISearchController()
    private var moviesCollectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        view.backgroundColor = .systemBackground
        configureSearchBar()
        createCollectionViewLayout()
        configureMoviesCollectionView()
        
        
    }
    func configureSearchBar() {
        searchBar.searchBar.placeholder = "Enter the movie name"
        searchBar.searchBar.searchBarStyle = .minimal
        searchBar.searchResultsUpdater = self
        navigationItem.searchController = searchBar

    }
    func createCollectionViewLayout() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.itemSize = CGSize(width: UIScreen.main.bounds.width/3 - 10, height: 200)
        moviesCollectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
    }
    func configureMoviesCollectionView() {
        view.addSubview(moviesCollectionView)
        moviesCollectionView.dataSource = self
        moviesCollectionView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([moviesCollectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40), moviesCollectionView.heightAnchor.constraint(equalToConstant: 200), moviesCollectionView.widthAnchor.constraint(equalToConstant: view.layer.bounds.size.width)])
        moviesCollectionView.layer.borderWidth = 10
        

        moviesCollectionView.register(MovieCell.self, forCellWithReuseIdentifier: MovieCell.ID)
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = (collectionView.dequeueReusableCell(withReuseIdentifier: MovieCell.ID, for: indexPath) as! MovieCell)
        return cell
    }
}
extension MovieImagesVC: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        guard let query = searchController.searchBar.text else {return}
    }
}
