//
//  ViewController.swift
//  imagePickerDemo
//
//  Created by Goutham Raj N on 01/10/22.
//

import UIKit
import Foundation

class ViewController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {

    @IBOutlet weak var imgView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonAction(_ sender: Any) {
        let ac = UIAlertController(title: "Select Image", message: "Select Image from ?", preferredStyle: .actionSheet)
        let cameraBtn = UIAlertAction(title: "Camera", style: .default){ [weak self] (_) in
            self?.showImgPicker(selectedSource: .camera)
        }
        let library = UIAlertAction(title: "Library", style: .default){[weak self](_) in
            self?.showImgPicker(selectedSource: .photoLibrary)
        }
        let cancelBtn = UIAlertAction(title: "Cancel", style: .cancel,handler: nil)
        ac.addAction(cameraBtn)
        ac.addAction(library)
        ac.addAction(cancelBtn)
        self.present(ac, animated: true,completion: nil)
    }
    
    func showImgPicker(selectedSource: UIImagePickerController.SourceType){
        switch selectedSource{
            
        case .photoLibrary:
            let imagePickerController = UIImagePickerController()
            imagePickerController.delegate = self
            imagePickerController.sourceType = selectedSource
            imagePickerController.allowsEditing = false
            self.present(imagePickerController, animated: true,completion: nil)
//        case .camera:
//            if isCameraDeviceAvailable(UIImagePickerController.CameraDevice){
//                print("Camera is chosen and available")
//            }
//            else{
//                print("Camera is chosen... Oops not available")
//            }
            
        
        default:
            print("Nothing is chosen")
        }
        
        
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let selectedImage = info[.originalImage] as? UIImage{
            imgView.image = selectedImage
        } else{
            print("Image not found")
        }
        picker.dismiss(animated: true,completion: nil)
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true,completion: nil)
    }
}

