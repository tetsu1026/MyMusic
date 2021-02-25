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
    
    // ギターの音源データの読み込み
    let guitarData = NSDataAsset(name: "guitarSound")!.data
    
    // ギター用プレイヤー変数
    var guitarPlayer: AVAudioPlayer!
    
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
    
    func guitarPlay() {
        do {
            // ギター用プレイヤーに音源データを指定
            self.guitarPlayer = try AVAudioPlayer(data: self.guitarData)
            self.guitarPlayer.play()
        
        } catch {
            print("ギターでエラーが発生しました！")
        }
    } //guitarPlayここまで

}
