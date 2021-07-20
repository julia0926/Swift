//
//  RegisterViewController.swift
//  NavigationViewController
//
//  Created by 김지인 on 2021/07/20.
//

import UIKit

class RegisterViewController: UIViewController {
    
    //pop하는 버튼
    @IBOutlet weak var btnForLoginViewController: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.navigationController?.isNavigationBarHidden = true
    }
    @IBAction func onLoginViewControllerButtonClicked(_ sender: UIButton) {
        print("RegisterViewController - onLoginViewControllerButtonClicked() called / 로그인 버튼 클릭!")
        // 네비게이션 뷰 컨트롤러를 팝
        self.navigationController?.popViewController(animated: true)
    }
}

