//
//  Presenter.swift
//  MVP+AVFoundation
//
//  Created by Жеребцов Данил on 31.08.2021.
//

import Foundation
import UIKit
import AVKit

class Presenter {
    
    func presentPlayerController(url: String, vc: UIViewController) {
        let player = AVPlayer(url: URL(string: url)!)
        let playerControll = AVPlayerViewController()
        playerControll.player = player
        vc.present(playerControll, animated: true, completion: nil)
    }
    
    func setVideoImage(url: String) -> UIImage? {
        let asset = AVURLAsset(url: URL(string: url)!)
        let generator = AVAssetImageGenerator(asset: asset)
        generator.appliesPreferredTrackTransform = true
        if let cgImage = try? generator.copyCGImage(at: CMTime(seconds: 2, preferredTimescale: 5), actualTime: nil) {
            return UIImage(cgImage: cgImage)
        } else {
            return nil
        }
    }
}
