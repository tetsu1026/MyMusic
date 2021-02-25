//
//  ButtonImageView.swift
//  MyMusic
//
//  Created by Tetsuro Watanabe on 2021/02/25.
//

import SwiftUI

struct ButtonImageView: View {
    //画像ファイル名
    let imageName: String
    var body: some View {
        //画像を表示する
        Image(imageName)
            //ボタン内の画像がカラーになるように指定
            .renderingMode(.original)
    }
}

struct ButtonImageView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonImageView(imageName: "cymbal")
    }
}
