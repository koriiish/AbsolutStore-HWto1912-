//
//  ViewController.swift
//  AbsolutStore
//
//  Created by Карина Дьячина on 18.12.23.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet var stockPears: UITextField!
    @IBOutlet weak var stockMandarin: UITextField!
    @IBOutlet weak var stockWatermelon: UITextField!
    @IBOutlet weak var stockVanilla: UITextField!
    @IBOutlet weak var toBuy: UIButton!
    
    @IBOutlet weak var todayRevenue: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    @IBAction func startNewDay(_ sender: Any) {
//        todayRevenue.text = "\(AbsolutManager.shared.resetRevenue())"
        todayRevenue.text = "Cart is empty"
        stockPears.text = "\(AbsolutManager.shared.absolutChoose[0].price)$/ \(AbsolutManager.shared.absolutChoose[0].volume)vl in stock"
        stockMandarin.text = "\(AbsolutManager.shared.absolutChoose[1].price)$/ \(AbsolutManager.shared.absolutChoose[1].volume)vl in stock"
        stockWatermelon.text = "\(AbsolutManager.shared.absolutChoose[2].price)$/ \(AbsolutManager.shared.absolutChoose[2].volume)vl in stock"
        stockVanilla.text = "\(AbsolutManager.shared.absolutChoose[3].price)$/ \(AbsolutManager.shared.absolutChoose[3].volume)vl in stock"
    }
    
    @IBAction func todayRevenue(_ sender: Any) {
        todayRevenue.text = "\(AbsolutManager.shared.countTodaysRevenue())"
    }
    @IBAction func buyPears(_ sender: Any) {
        stockPears.text = "\(AbsolutManager.shared.absolutChoose[0].price)$ / \(AbsolutManager.shared.sellAbsolutPears())vl in stock"
        todayRevenue.text = "\(AbsolutManager.shared.countTodaysRevenue())"
     
        }
    @IBAction func buyMandarin(_ sender: Any) {
        stockMandarin.text = "\(AbsolutManager.shared.absolutChoose[1].price)$ / \(AbsolutManager.shared.sellAbsolutMandarin())vl in stock"
        todayRevenue.text = "\(AbsolutManager.shared.countTodaysRevenue())"
    }
    @IBAction func buyWatermelon(_ sender: Any) {
        stockWatermelon.text = "\(AbsolutManager.shared.absolutChoose[2].price)$ / \(AbsolutManager.shared.sellAbsolutWatermelon())vl in stock"
        todayRevenue.text = "\(AbsolutManager.shared.countTodaysRevenue())"
    }
    
    @IBAction func buyVanilla(_ sender: Any) {
        stockVanilla.text = "\(AbsolutManager.shared.absolutChoose[3].price)$ / \(AbsolutManager.shared.sellAbsolutVanilla())vl in stock"
        todayRevenue.text = "\(AbsolutManager.shared.countTodaysRevenue())"
    }
    
}

