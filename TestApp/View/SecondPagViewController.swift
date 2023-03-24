//
//  SecondPagViewController.swift
//  TestApp
//
//  Created by Kevin  Sam Andaria on 24/03/23.
//

import UIKit

class SecondPagViewController: UIViewController {
    
    private let logoImage: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "cat2")
        iv.contentMode = .scaleAspectFit
        iv.setDimensions(width: 100, height: 100)
        
        return iv
    }()
    
    private let appNameLabel: UILabel = {
        let lbl = UILabel()
        lbl.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        lbl.tintColor = .black
        lbl.text = "Test App"
        
        return lbl
    }()

    private let titleLabel: UILabel = {
        let lbl = UILabel()
        lbl.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        lbl.tintColor = .black
        
        return lbl
    }()
    
    private let captionLabel: UILabel = {
        let lbl = UILabel()
        lbl.font = UIFont.systemFont(ofSize: 16)
        lbl.tintColor = .black
        
        lbl.numberOfLines = 2
        
        return lbl
    }()
    
    private let inputTextLabel: UILabel =  {
        let lbl = UILabel()
        lbl.font = UIFont.systemFont(ofSize: 14)
        lbl.tintColor = .black
        lbl.alpha =  0.8
        
        return lbl
    }()
    
    private let textField: UITextField = {
        let tf = UITextField()
        
        
        return tf
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        configureUI()
    }
    

    func configureUI() {
        let stack = UIStackView(arrangedSubviews: [logoImage, appNameLabel])
        stack.axis = .horizontal
        stack.spacing = 15
        
        view.addSubview(stack)
        stack.centerX(inView: view, topAnchor: view.safeAreaLayoutGuide.topAnchor, paddingTop: 10)
        
        view.addSubview(titleLabel)
        view.addSubview(captionLabel)
        
        titleLabel.text = "Bilangan Prima"
        captionLabel.text = "Masukan angka untuk menghasilkan bilangan Prima"
        
        titleLabel.anchor(top: stack.bottomAnchor, left: view.safeAreaLayoutGuide.leftAnchor, paddingTop: 50, paddingLeft: 30)
        captionLabel.anchor(top: titleLabel.bottomAnchor, left: view.safeAreaLayoutGuide.leftAnchor, right: view.safeAreaLayoutGuide.rightAnchor, paddingTop: 30, paddingLeft: 30)
        
        view.addSubview(inputTextLabel)
        inputTextLabel.anchor(top: captionLabel.bottomAnchor, left: view.safeAreaLayoutGuide.leftAnchor, paddingTop: 30, paddingLeft: 30)
        
    }
}
