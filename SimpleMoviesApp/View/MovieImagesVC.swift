//
//  MovieImagesVC.swift
//  SimpleMoviesApp
//
//  Created by Zeinab on 11/06/2023.
//

import UIKit

class MovieImagesVC: UIViewController {
    
    private var searchBar: UISearchController = UISearchController()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureSearchBar()
        
        
    }
    func configureSearchBar() {
        searchBar.searchBar.placeholder = "Enter the movie name"
        searchBar.searchBar.searchBarStyle = .minimal
        searchBar.searchResultsUpdater = self
        navigationItem.searchController = searchBar
        
    }
}
extension MovieImagesVC: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        guard let query = searchController.searchBar.text else {return}
    }
}
