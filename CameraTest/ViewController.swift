//
//  ViewController.swift
//  CameraTest
//
//  Created by Phùng Hoàng Bắc on 9/15/15.
//  Copyright (c) 2015 Phùng Hoàng Bắc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        println("Camera is ")
        if isCameraAvailable() == false {
            print("not")
        }
        
        println("avaiable")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    /*
        kiểm tra tính sẵn sàng của các resource
        .Camera có camera hay không
        .PhotoLibrary có sử dụng thư viện ảnh được không
        .SavedPhotoAlbum có Camera Roll trong thư mục Photo được không
    */
    func isCameraAvailable() -> Bool {
        return UIImagePickerController.isSourceTypeAvailable(.PhotoLibrary)
    }
}

