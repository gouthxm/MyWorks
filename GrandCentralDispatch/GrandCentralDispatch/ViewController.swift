//
//  ViewController.swift
//  GrandCentralDispatch
//
//  Created by Goutham Raj N on 16/09/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var imageViews: [UIImageView]!
    
    
    private lazy var images: [URL] = [
        URL(string: "https://cdn.cocoacasts.com/7ba5c3e7df669703cd7f0f0d4cefa5e5947126a8/1.jpg")!,
        Bundle.main.url(forResource: "2", withExtension: "jpg")!,
        URL(string: "https://cdn.cocoacasts.com/7ba5c3e7df669703cd7f0f0d4cefa5e5947126a8/3.jpg")!,
        Bundle.main.url(forResource: "4", withExtension: "jpg")!
    ]
    

    
    private let dispatchQueue = DispatchQueue(label: "My Dispatch Queue")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Start \(Date())")
        
        for (index, imageView) in imageViews.enumerated() {
            // Fetch URL
            let url = images[index]
            
            dispatchQueue.async { [weak self] in
                // Populate Image View
                self?.loadImage(with: url, for: imageView)
            }
        }
        
        print("Finish \(Date())")
    }
    
    
    private func loadImage(with url: URL, for imageView: UIImageView) {
        // Load Data
        guard let data = try? Data(contentsOf: url) else {
            return
        }
        
        // Create Image
        let image = UIImage(data: data)
        
        DispatchQueue.main.async {
            // Update Image View
            imageView.image = image
        }
    }

}
