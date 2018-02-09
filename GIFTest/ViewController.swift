//
//  ViewController.swift
//  GIFTest
//
//  Created by Bhagat  Singh on 06/02/18.
//  Copyright © 2018 Bhagat Singh. All rights reserved.
//

import UIKit
import FLAnimatedImage

class ViewController: UIViewController {

    let gifs = ["gif1", "gif2", "gif3"]
    
    @IBOutlet weak var image1: FLAnimatedImageView!
    @IBOutlet weak var image2: FLAnimatedImageView!
    @IBOutlet weak var image3: FLAnimatedImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //for image 1
        let path1 : String = Bundle.main.path(forResource: "gif1", ofType: "gif")!
        let imageData1 = try? FLAnimatedImage(animatedGIFData: Data(contentsOf: URL(fileURLWithPath: path1)))
        image1.animatedImage = imageData1
        
        //for image 2
        let path2 : String = Bundle.main.path(forResource: "gif2", ofType: "gif")!
        let imageData2 = try? FLAnimatedImage(animatedGIFData: Data(contentsOf: URL(fileURLWithPath: path2)))
        image2.animatedImage = imageData2
        
        //for image 3
        let urlString = "https://upload.wikimedia.org/wikipedia/commons/2/2c/Rotating_earth_%28large%29.gif"
        let url = URL(string: urlString)!
        let imageData = try? Data(contentsOf: url)
        let imageData3 = FLAnimatedImage(animatedGIFData: imageData)
        image3.animatedImage = imageData3
    }
    
}

