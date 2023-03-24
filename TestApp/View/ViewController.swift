//
//  ViewController.swift
//  TestApp
//
//  Created by Kevin  Sam Andaria on 24/03/23.
//

import UIKit

class ViewController: UIViewController {
    
    private let titleLabel: UILabel = {
        let lbl = UILabel()
        lbl.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        lbl.tintColor = .black
        lbl.textAlignment = .center
        lbl.numberOfLines = 2
        
        return lbl
    }()
    
    private let imageView: UIImageView  = {
        let iv = UIImageView()
        iv.image = UIImage(named: "cat2")
        iv.contentMode = .scaleAspectFit
        
        return iv
    }()
    
    private let captionLabel: UILabel = {
        let lbl = UILabel()
        lbl.font = UIFont.systemFont(ofSize: 16)
        lbl.tintColor = .black
        lbl.textAlignment = .center
        lbl.numberOfLines = 3
        
        return lbl
    }()
    
    private let startButton: UIButton = {
        let button = UIButton()
        button.setTitle("Get Started", for: .normal)
        button.backgroundColor = UIColor.systemGreen
        button.tintColor = .black
        button.addTarget(self, action: #selector(goToNextPage), for: .touchUpInside)
        
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        configureUI()
    }

    @objc func goToNextPage() {
        let controller = SecondPagViewController()
        navigationController?.pushViewController(controller, animated: true)
//        print("DEBUG: Button Touched")
    }
    
    func configureUI() {
        view.addSubview(titleLabel)
        view.addSubview(imageView)
        view.addSubview(captionLabel)
        view.addSubview(startButton)
        
        imageView.anchor(top: view.safeAreaLayoutGuide.topAnchor,left: view.safeAreaLayoutGuide.leftAnchor, right: view.safeAreaLayoutGuide.rightAnchor, paddingTop: 50, width: 200, height: 200)
        
        
        titleLabel.text = "Let's Meet Our Summer Coffee Drinks"
        titleLabel.anchor(top: imageView.bottomAnchor, left: view.safeAreaLayoutGuide.leftAnchor, right: view.safeAreaLayoutGuide.rightAnchor, paddingTop: 20)
        
        captionLabel.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam rutrum erat dictum, tristique lacus eu, tempus eros. Vestibulum in dignissim urna, eget malesuada leo. Maecenas ac nibh scelerisque, varius ex at, condimentum quam. Nulla facilisi. Maecenas sem erat, congue malesuada risus at, mollis bibendum mi. Morbi quis magna a tellus blandit lobortis. Suspendisse potenti."
        captionLabel.anchor(top: titleLabel.bottomAnchor, left: view.safeAreaLayoutGuide.leftAnchor, right: view.safeAreaLayoutGuide.rightAnchor, paddingTop: 25, paddingLeft: 30, paddingRight: 30)
        
        
        startButton.anchor(top: captionLabel.bottomAnchor, left: view.safeAreaLayoutGuide.leftAnchor, right: view.safeAreaLayoutGuide.rightAnchor, paddingTop: 50, paddingLeft: 20, paddingRight: 20, width: 100, height: 50)
        startButton.layer.cornerRadius = 50/2
    }

}

