//
//  ViewController.swift
//  Messenger
//
//  Created by Alex  on 27.05.2023.
//

import UIKit
import FirebaseAuth

class ConversationsViewController: UIViewController {
	
	override func viewDidLoad() {
		super.viewDidLoad()
		view.backgroundColor = .red
		
	}
	
	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
		
		validteAuth()
	}
	
	private func validteAuth() {
		if FirebaseAuth.Auth.auth().currentUser == nil {
			let vc = LoginViewController()
			let nav = UINavigationController(rootViewController: vc)
			nav.modalPresentationStyle = .fullScreen
			present(nav, animated: false)
		}
		
		
	}
	
}
