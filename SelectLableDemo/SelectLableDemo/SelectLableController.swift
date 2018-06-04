//
//  SelectLableController.swift
//  SelectLableDemo
//
//  Created by XiaoLu on 2018/6/4.
//  Copyright © 2018年 xiaolu. All rights reserved.
//

import UIKit

class SelectLableController: UIViewController,ButtonTagViewDelegate,ButtonTagUpViewDelegate {

    
    
    var titleArr:Array<String> = ["aaa","aaa","dress","mini skirt","mirror","thirsty","classmate"]
    
    
    private var showView : ButtonTagView! = nil
    private var selectView : ButtonTagUpView! = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isTranslucent = false
        title = "确认助记词"
        didDrawSubViews()
        // Do any additional setup after loading the view.
    }
    
    func didDrawSubViews() {
        selectView = ButtonTagUpView.init(frame: CGRect(x: 15, y: 15+35, width: ScreenW - 30, height: 200))
        selectView.backgroundColor = ColorFromString(hex: "#f5f5f5")
        selectView.delegate = self
        view.addSubview(selectView)
        
        showView = ButtonTagView.init(frame: CGRect(x: 15, y: 15+35 + 200 , width: ScreenW - 30, height: 200))
        showView.titleArray = titleArr
        showView.delegate = self
        showView.backgroundColor = .white
        view.addSubview(showView)
    }
    
    //选择按钮的时候返回的选择的数组
    func callBackSelectButtonArray(array: Array<NSMutableDictionary>) {
        selectView.comArr = array
        for name in array {
            print(name)
        }
    }
    
    //点击删除标签的时候 下方按钮改变选中状态
    func didDeleteSelectedButton(backDict: NSMutableDictionary) {
        showView.deleteDict = backDict
    }
    

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
