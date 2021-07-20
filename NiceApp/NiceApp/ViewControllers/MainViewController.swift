//
//  ViewController.swift
//  NiceApp
//
//  Created by 김지인 on 2021/07/20.
//

import UIKit
import Lottie

class MainViewController: UIViewController {
    
    var titleLabel: UILabel = {

        let label = UILabel()
        label.textColor = .black
        label.text = "메인화면"
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 70)
        
        return label
        
    }()
    
    let animationView: AnimationView = {
       
        let animView = AnimationView(name: "68726-orange")
        animView.frame = CGRect(x: 0, y: 0, width: 400, height: 400) //크기
        animView.contentMode = .scaleAspectFill //이미지 확대축소 -> 맞춰서
        return animView
    }()
    
    //뷰가 생성되었을 때
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .black
        view.addSubview(animationView)
        animationView.center = view.center
        
        //애니메이션 실행
        animationView.play{ (finish) in
            //끝나면 이거 실행
            print("애니매이션 종료")
            self.view.backgroundColor = .white

            self.animationView.removeFromSuperview() //부모인 View를 제거
            
            self.view.addSubview(self.titleLabel)

            self.titleLabel.translatesAutoresizingMaskIntoConstraints = false //설정해야 적용
            self.titleLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
            self.titleLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        }
    }


}

