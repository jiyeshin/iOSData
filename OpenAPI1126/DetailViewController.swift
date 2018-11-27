//
//  DetailViewController.swift
//  OpenAPI1126
//
//  Created by 503-12 on 27/11/2018.
//  Copyright © 2018 The. All rights reserved.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {

   
    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var indicatorView: UIActivityIndicatorView!
    
    var linkUrl : String?
   
    override func viewDidLoad() {
        super.viewDidLoad()

        //linkUrl의 데이터가 있으면 이런 형태로 코드를 작성: 예외가 발생하지 않도록 하기 위해서.
        //자바 코드라면 변수 != null
        if let addr = linkUrl{
            //URL 객체로 만들어졌다면
            if let url = URL(string:addr){
                let request = URLRequest(url: url)
                
                //웹 뷰가 로딩
                webView.load(request)
                webView.uiDelegate = self
                webView.navigationDelegate = self
            }
            //URL 객체로 만드는데 실패했다면
            else{
                let alert = UIAlertController(title: "잘못된 URL입니다.", message: "", preferredStyle: .alert)
                let ok = UIAlertAction(title: "확인", style: .cancel)
                alert.addAction(ok)
                self.present(alert, animated: true)
            }
        }
        //linkUrl에 데이터가 없다면
        else{
            let alert = UIAlertController(title: "잘못된 URL입니다.", message: "", preferredStyle: .alert)
            let ok = UIAlertAction(title: "확인", style: .cancel)
            alert.addAction(ok)
            self.present(alert, animated: true)
        }
    }
}

//extenstion: DetailViewController의 기능확장
//protocol: 인터페이스(메소드의 모양만 소유하는데, 이 클래스에는 이 메소드가 반드시 구현되어 있다는 것을 확인하는 용도
extension DetailViewController : WKNavigationDelegate, WKUIDelegate{
    //웹 뷰가 로딩을 시작했을 때 호출되는 메소드
    func webView(_ webView: WKWebView, didCommit navigation: WKNavigation!) {
        self.indicatorView.startAnimating()
    }
    //웹 뷰가 로딩을 종료했을 때 호출되는 메소드
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        self.indicatorView.stopAnimating()
    }
    //웹 뷰가 로딩에 실패했을 때 호출되는 메소드
    func webView(_ webView: WKWebView, didFailProvisionalNavigation navigation: WKNavigation!, withError error: Error) {
        self.indicatorView.startAnimating()
    }
}
