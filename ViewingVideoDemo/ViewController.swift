//
//  ViewController.swift
//  ViewingVideoDemo
//
//  Created by Nidhi Manoj on 7/29/16.
//  Copyright © 2016 Facebook. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    override func prepareForSegue(segue: UIStoryboardSegue,
                                  sender: AnyObject?) {
        let destination = segue.destinationViewController as!
        AVPlayerViewController
        let url = NSURL(string:
            "https://fbcdn-video-a.akamaihd.net/hvideo-ak-xfa1/v/t43.1792-29/13698570_160024457753088_2125783660_n.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6ImhkX2Zyb21fbGl2ZV9kdnJfdjIifQ%3D%3D&_nc_eui=E6tId53gbD-qnRliRnhzUZ5Laz8&oh=15cbc304a3155ddccd0eaa7af13a3836&oe=579D7015&__gda__=1469996779_1c8d60f9c76460bfeec03679019652bd")
        
        if let movieURL = url {
            destination.player = AVPlayer(URL: movieURL)
        }
    }
}

