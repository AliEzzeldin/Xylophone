//
//  ViewController.swift
//  Xylophone
//
//  Created by Ali on 5/4/19.
//  Copyright © 2019 Ali Mostafa. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    var audioPlayer: AVAudioPlayer!
    let soundArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func notePressed(_ sender: UIButton) {
        
        playSound(soundFileName: soundArray[sender.tag - 1])
        
    }
    
    func playSound(soundFileName: String) {
        
        let soundURl = Bundle.main.url(forResource: soundFileName, withExtension: "wav")
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURl!)
        } catch {
            print(error)
        }
        
        audioPlayer.play()
    }

}

