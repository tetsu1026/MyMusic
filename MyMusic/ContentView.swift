//
//  ContentView.swift
//  MyMusic
//
//  Created by Tetsuro Watanabe on 2021/02/24.
//

import SwiftUI

struct ContentView: View {
    // 音を鳴らすためのsoundplayerクラスのインスタンスを生成
    let soundPlayer = SoundPlayer()
    var body: some View {
        ZStack {
          //背景画像を指定する
          Image("background")
            //リサイズする
            .resizable()
            //アスペクト比(縦横比)を維持して短辺基準に収まるようにする
            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
            HStack {
                //シンバルボタン
                Button(action: {
                    //ボタンをタップした時のアクション
                    //シンバルの音を鳴らす
                    soundPlayer.cymbalPlay()
                }) {
                    //画像を表示する
                    Image("cymbal")
                         //ボタン内の画像がカラーになるように指定する
                        .renderingMode(.original)
                } //シンバルここまで
                
                //ギターボタン
                Button(action: {
                    //ボタンをタップした時のアクション
                    //ギターの音を鳴らす
                    soundPlayer.guitarPlay()
                }) {
                    //画像を表示する
                    Image("guitar")
                         //ボタン内の画像がカラーになるように指定する
                        .renderingMode(.original)
                } //ギターボタンここまで
            }
        } //zstockここまで
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
