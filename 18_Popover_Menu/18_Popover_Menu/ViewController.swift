//
//  ViewController.swift
//  18_Popover_Menu
//
//  Created by Liuqing Du on 2018/2/28.
//  Copyright © 2018年 JuneDesign. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPopoverPresentationControllerDelegate {

    @IBOutlet weak var addBtn: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "微信"
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 73/255, green: 72/255, blue: 74/255, alpha: 1)
        
    }
    
    @IBAction func plusButtonDidTouch(_ sender: UIBarButtonItem) {
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        
        let popoverVC = sb.instantiateViewController(withIdentifier: "popoverViewController") as! PopoverMenuViewController
        popoverVC.modalPresentationStyle = .popover
        popoverVC.preferredContentSize = CGSize(width: 120, height: 200)
        popoverVC.popoverPresentationController?.permittedArrowDirections = .up
        popoverVC.popoverPresentationController?.backgroundColor = UIColor(red: 73/255, green: 72/255, blue: 74/255, alpha: 1)
        
        let popover = popoverVC.popoverPresentationController
        popover?.delegate = self
        popover?.barButtonItem = sender
        
        self.present(popoverVC, animated: true, completion: nil)
        
    }
    
    func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
        return .none
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

