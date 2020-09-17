//
//  StartViewController.swift
//  tChat
//
//  Created by Илья Шахназаров on 16.09.2020.
//  Copyright © 2020 PentaBob. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    // MARK: - Properties
    
    private let model: IProfileVCModel
    private let presentationAssembly: IPresentationAssembly
    private let profileView = ProfileVCView()
    
    
    // MARK: - Init
    
    init(model: IProfileVCModel, assembly: IPresentationAssembly) {
        self.model = model
        self.presentationAssembly = assembly
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initButtons() {
        profileView.addPhotoButton.addTarget(self, action: #selector(addPhoto), for: .touchUpInside)
    }
    
    // MARK: - Life Cycle
    
    override func loadView() {
        super.loadView()
        view = profileView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initButtons()
    }
    
    
    
    @objc func addPhoto() {
        showImagePickerControllerActionSheet()
    }
    
}

// MARK:- UIImagePickerController

extension ProfileViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func showImagePickerControllerActionSheet() {
        let photoLibraryAction = UIAlertAction(title: "Выбрать из галереи", style: .default) { (action) in
            self.showImagePickerController(sourceType: .photoLibrary)
        }
        
        let cameraAction = UIAlertAction(title: "Сделать снимок", style: .default) { (action) in
            self.showImagePickerController(sourceType: .camera)
        }
        
        let cancelAction = UIAlertAction(title: "Отмена", style: .cancel, handler: nil)
        
        AlertService.showAlert(style: .actionSheet, title: nil, message: nil, actions: [photoLibraryAction, cameraAction, cancelAction], completion: nil)
    }
    
    func showImagePickerController(sourceType: UIImagePickerController.SourceType) {
        let imagePickerController = UIImagePickerController()
        imagePickerController.delegate = self
        imagePickerController.allowsEditing = true
        imagePickerController.sourceType = sourceType
        present(imagePickerController, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let editedImage = info[UIImagePickerController.InfoKey.editedImage] as? UIImage {
            profileView.userImage.image = editedImage
        } else if let originalImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            profileView.userImage.image = originalImage
        }
        
        dismiss(animated: true, completion: nil)

    }
}
