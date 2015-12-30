//
//  ViewController.swift
//  WorkingWithAudio
//
//  Created by Bat Computer on 11/4/15.
//  Copyright © 2015 HardSoft. All rights reserved.
//

import UIKit
import AVFoundation



class ViewController: UIViewController {
    
    @IBOutlet var slider: UISlider!
    
    @IBAction func play(sender: AnyObject) {
        
            
        player.play()
            
      
        
    }
    
    @IBAction func pause(sender: AnyObject) {
        
        player.pause()
        
    }
    
    @IBAction func adjustVolume(sender: AnyObject) {
        
        player.volume = slider.value
        
    }
    
    
    var player: AVAudioPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let audioPath = NSBundle.mainBundle().pathForResource("21 Boss", ofType: "mp3")!
        
        do {
            
            try player = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: audioPath))
            
            player.play()
            
        } catch {
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

