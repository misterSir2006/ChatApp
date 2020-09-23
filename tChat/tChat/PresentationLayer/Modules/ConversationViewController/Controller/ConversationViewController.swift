//
//  ConversationViewController.swift
//  tChat
//
//  Created by Илья Шахназаров on 23.09.2020.
//  Copyright © 2020 PentaBob. All rights reserved.
//

import UIKit

class ConversationViewController: UIViewController {
    
    // MARK:- Properties
    private let reuseIdentifier = Constants.Content.conversationCellReuseIdentifier
    
    private let presentationAssembly: IPresentationAssembly
    private var model: IConversationVCModel
    private let conversationView = ConversationVCView()
    
    // MARK:- Init
    init(model: ConversationVCModel, assembly: IPresentationAssembly) {
        self.model = model
        self.presentationAssembly = assembly
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK:- Life Cycle
    
    override func loadView() {
        super.loadView()
        view = conversationView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initTableView()
        initButtons()
    }
    
    private func initButtons() {  }
    
    private func initTableView() {
        conversationView.conversationTableView.dataSource = self
        conversationView.conversationTableView.delegate = self
        
        conversationView.conversationTableView.register(ConversationCell.self, forCellReuseIdentifier: reuseIdentifier)
    }
    
    @objc func back() {
        let transition = CATransition()
        transition.duration = 0.3
        transition.type = .reveal
        transition.subtype = .fromLeft
        transition.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)
        view.window?.layer.add(transition, forKey: kCATransition)
        dismiss(animated: false)
    }
}


//MARK:- TableView Data Source
extension ConversationViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return conversationArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        guard let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as? ConversationCell
            else { return UITableViewCell() }
        cell.configure(model: conversationArray[indexPath.row])
        return cell
    }
    
}

//MARK:- TableView Delegate
extension ConversationViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return view.bounds.width * 0.12
    }
}
