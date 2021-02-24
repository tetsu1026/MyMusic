//
//  SoundPlayer.swift
//  MyMusic
//
//  Created by Tetsuro Watanabe on 2021/02/24.
//

import UIKit
import AVFoundation
class SoundPlayer: NSObject {
    // シンバルの音源データの読み込み
    let cymbalData = NSDataAsset(name: "cymbalSound")!.data
    
    // シンバル用のプレイヤーの変数
    var cymbalPlayer: AVAudioPlayer!
    
    func cymbalPlay() {
        do {
        // シンバル用のプレイヤーに音源データを指定
        cymbalPlayer = try AVAudioPlayer(data: cymbalData)
        //　シンバルの音源再生
        cymbalPlayer.play()
        } catch {
            print("シンバルでエラーが発生しました!")
        }
    } // cymbalPlayここまで

}
