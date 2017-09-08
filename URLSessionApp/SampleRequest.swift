//
//  SampleRequest.swift
//  URLSessionApp
//
//  Created by 川崎隆介 on 2017/09/08.
//  Copyright © 2017年 codable. All rights reserved.
//

import Foundation

class SampleRequest {
    func send() {
        let url = URL(string: "https://api.github.com/search/repositories?q=swift")!
        let urlRequest = URLRequest(url: url)
        let session = URLSession.shared
        let task = session.dataTask(with: urlRequest) {
            data, urlResponse, error in
            if let urlResponse = urlResponse as? HTTPURLResponse{
                if urlResponse.statusCode == 200 {
                    //status codeが200の場合
                }else{
                    //それ以外
                }
            }
        }
        task.resume()
    }
}

//iOSの標準ライブラリを用いたネットワーク処理

//ATSに関して
//http://dev.classmethod.jp/smartphone/ats-in-ios-10/
//https://www.lac.co.jp/lacwatch/people/20161017_001057.html
