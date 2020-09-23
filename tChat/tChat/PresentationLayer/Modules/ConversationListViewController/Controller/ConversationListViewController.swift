//
//  ConversationListViewController.swift
//  tChat
//
//  Created by Илья Шахназаров on 18.09.2020.
//  Copyright © 2020 PentaBob. All rights reserved.
//

import UIKit

class ConversationListViewController: UIViewController {
    
    // MARK:- Properties
    private let reuseIdentifier = Constants.Content.conversationListCellReuseIdentifier
    
    private let presentationAssembly: IPresentationAssembly
    private var model: IConversationListVCModel
    private let conversationListView = ConversationListVCView()
    
    // MARK:- Init
    init(model: ConversationListVCModel, assembly: IPresentationAssembly) {
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
        view = conversationListView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initTableView()
        initButtons()
    }
    
    private func initButtons() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .trash, target: self, action: #selector(showUser))
    }
    
    private func initTableView() {
        conversationListView.conversationListTableView.dataSource = self
        conversationListView.conversationListTableView.delegate = self
        
        conversationListView.conversationListTableView.register(ConversationListCell.self, forCellReuseIdentifier: reuseIdentifier)
    }
    
    @objc func showUser() {
        let controller = presentationAssembly.profileViewController()
        controller.modalPresentationStyle = .popover
        present(controller, animated: true)
    }
}


//MARK:- TableView Data Source
extension ConversationListViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Online"
        case 1:
            return "History"
        default:
            return nil
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var rowCount = 0
        if section == 0 {
            rowCount = data1.count
        } else {
            rowCount = data2.count
        }
        return rowCount
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        guard let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as? ConversationListCell
            else { return UITableViewCell() }
        if indexPath.section == 0 {
            cell.configure(model: data1[indexPath.row])
        } else {
            cell.configure(model: data2[indexPath.row])
        }
        return cell
    }
    
}

//MARK:- TableView Delegate
extension ConversationListViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        let conversationViewController = presentationAssembly.conversationViewController()
        if indexPath.section == 0 {
            conversationViewController.navigationItem.title = data1[indexPath.row].name
        } else {
            conversationViewController.navigationItem.title = data2[indexPath.row].name
        }
        navigationController?.pushViewController(conversationViewController, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return view.bounds.width * 0.2
    }
}
