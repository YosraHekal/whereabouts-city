//
//  PopVC.swift
//  whereabouts-city
//
//  Created by Yosra H. Hekal on 12.08.18.
//  Copyright © 2018 Yosra H. Hekal. All rights reserved.
//

import UIKit

class PopVC: UIViewController {

    //Outlets
    @IBOutlet weak var popImageView: UIImageView!
    
    //Variables
    var passedImage: UIImage!
    
    func initData(forImage image: UIImage){
        self.passedImage = image
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        popImageView.image = passedImage
        dismissPhotoTap()
    }
    
    func dismissPhotoTap() {
        popImageView.isUserInteractionEnabled = true
        let tap = UITapGestureRecognizer(target: self, action: #selector(PopVC.closeTap(_:)))
        popImageView.addGestureRecognizer(tap)
        print(tap)
    }
    
    @objc func closeTap(_ recogzier: UITapGestureRecognizer){
        dismiss(animated: true, completion: nil)
    }
}
