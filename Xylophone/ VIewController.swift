//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController{
    
    var audioPlayer : AVAudioPlayer!
    
    let musicFormat = "wav"
    let musicFileNames = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
    
    }


    //Click event handler
    @IBAction func notePressed(_ sender: UIButton) {
        //Which button was clicked?(Fetch its TAG)
        let tagBtn = sender.tag
        
        //Find local Sound Url
        let soundURL = Bundle.main.url(forResource: musicFileNames[tagBtn - 1], withExtension: musicFormat)
        
        do{
            //Create an audio player connected to the url.
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
            audioPlayer.play()
        }catch{
            //Hmm, something went wrong.
            print(error)
        }
        
    }
    
    
  

}

