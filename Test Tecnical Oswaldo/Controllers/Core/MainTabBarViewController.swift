//
//  ViewController.swift
//  Test Tecnical Oswaldo
//
//  Created by Oswaldo Jeisson Escobar Huisa on 08/02/2022.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
        
        let vc1 = UINavigationController(rootViewController: HomeViewController())
        let vc3 = UINavigationController(rootViewController: SearchViewController())
        
        
        
        vc1.tabBarItem.image = UIImage(systemName: "house")
        vc3.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        
        vc1.title = "Casa"
        vc3.title = "Busqueda"
        
        
        
        tabBar.tintColor = .label
        
        setViewControllers([vc1,vc3], animated: true)

    }


}

