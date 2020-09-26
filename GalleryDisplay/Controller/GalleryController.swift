//
//  ViewController.swift
//  GalleryDisplay
//
//  Created by David U. Okonkwo on 9/26/20.
//

import UIKit

class GalleryController: UIViewController {
  lazy var cardView1: CardView = {
    let cardView = CardView(with: .skeleton)
    cardView.translatesAutoresizingMaskIntoConstraints = false
    return cardView
  }()
  
  lazy var cardView2: CardView = {
    let cardView = CardView(with: .owl)
    cardView.translatesAutoresizingMaskIntoConstraints = false
    return cardView
  }()
  
  lazy var cardView3: CardView = {
    let cardView = CardView(with: .panda)
    cardView.translatesAutoresizingMaskIntoConstraints = false
    return cardView
  }()
  
  lazy var cardView4: CardView = {
    let cardView = CardView(with: .monkey)
    cardView.translatesAutoresizingMaskIntoConstraints = false
    return cardView
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setupViews()
    setupConstraints()
    view.backgroundColor = .white
  }
  
  // MARK: - Setting Views
  private func setupViews() {
    view.addSubviews(cardView1, cardView2, cardView3, cardView4)
  }
  
  // MARK: - Setting Constraints
  private func setupConstraints() {
    let safeArea = view.safeAreaLayoutGuide
    let viewFrame = view.bounds
    //card 1
    NSLayoutConstraint.activate([
      cardView1.leadingAnchor.constraint(equalTo: view.leadingAnchor),
      cardView1.topAnchor.constraint(equalTo: safeArea.topAnchor),
      cardView1.widthAnchor.constraint(equalToConstant: viewFrame.width/2),
      cardView1.heightAnchor.constraint(equalToConstant: viewFrame.height/2)
    ])
        
    //card 2
    NSLayoutConstraint.activate([
      cardView2.leadingAnchor.constraint(equalTo: cardView1.trailingAnchor),
      cardView2.topAnchor.constraint(equalTo: safeArea.topAnchor),
      cardView2.widthAnchor.constraint(equalToConstant: viewFrame.width/2),
      cardView2.heightAnchor.constraint(equalToConstant: viewFrame.height/2),
      cardView2.trailingAnchor.constraint(equalTo: view.trailingAnchor)
    ])
        
    //card 3
    NSLayoutConstraint.activate([
      cardView3.leadingAnchor.constraint(equalTo: view.leadingAnchor),
      cardView3.topAnchor.constraint(equalTo: cardView1.bottomAnchor),
      cardView3.widthAnchor.constraint(equalToConstant: viewFrame.width/2),
      cardView3.heightAnchor.constraint(equalToConstant: viewFrame.height/2),
      cardView3.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor)
    ])
        
    //card 4
    NSLayoutConstraint.activate([
      cardView4.leadingAnchor.constraint(equalTo: cardView3.trailingAnchor),
      cardView4.topAnchor.constraint(equalTo: cardView2.bottomAnchor),
      cardView4.widthAnchor.constraint(equalToConstant: viewFrame.width/2),
      cardView4.heightAnchor.constraint(equalToConstant: viewFrame.height/2),
      cardView4.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor)
    ])


  }
}

