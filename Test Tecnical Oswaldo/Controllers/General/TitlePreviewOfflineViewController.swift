//
//  TitlePreviewOfflineViewController.swift
//  Test Tecnical Oswaldo
//
//  Created by Oswaldo Jeisson Escobar Huisa on 08/02/22.
//

import UIKit

class TitlePreviewOfflineViewController: UIViewController {
    private var headerView = HeroHeaderUIView()
    private var viewModel : TitlePreviewOfflineViewModel?
    private let titleLabel: UILabel = {
       
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 22, weight: .bold)
        label.text = "Harry potter"
        return label
    }()
    
    private let overviewLabel: UILabel = {
       
        let label = UILabel()
        label.font = .systemFont(ofSize: 18, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.text = "This is the best movie ever to watch as a kid!"
        return label
    }()


    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        headerView = HeroHeaderUIView(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: 500))
        view.addSubview(headerView )
        view.addSubview(titleLabel)
        view.addSubview(overviewLabel)
        configureConstraints()
        customhero()
        
    }
    

    func customhero(){
        self.headerView.configure(with: TitleViewModel(titleName: viewModel?.title.original_title ?? "", posterURL: viewModel?.title.poster_path ?? ""))
    }
    func configureConstraints() {
        let imageViewConstraints = [
            headerView.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
            headerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            headerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            headerView.heightAnchor.constraint(equalToConstant: 300)
        ]
        
        let titleLabelConstraints = [
            titleLabel.topAnchor.constraint(equalTo: headerView.bottomAnchor, constant: 20),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
        ]
        
        let overviewLabelConstraints = [
            overviewLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 15),
            overviewLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            overviewLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ]
        
        
        NSLayoutConstraint.activate(imageViewConstraints)
        NSLayoutConstraint.activate(titleLabelConstraints)
        NSLayoutConstraint.activate(overviewLabelConstraints)        
    }
    
    
    public func configure(with model: TitlePreviewOfflineViewModel) {
        print(model)
        viewModel = model
        titleLabel.text = model.title.original_title
        overviewLabel.text = model.title.overview
    }

}
