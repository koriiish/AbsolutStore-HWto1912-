//
//  AbsolutManager.swift
//  AbsolutStore
//
//  Created by Карина Дьячина on 18.12.23.
//

import Foundation
class AbsolutManager {
    static let shared = AbsolutManager()
    private var revenue: Double = 0 // Выручка
    
        let absolutPearsVolume = 700
        let absolutMandarinVolume = 100
        let absolutWatermelonVolume = 500
        let absolutVanillaVolume = 1000
    
    let absolutChoose = 
    [Absolut(name: "Absolut Pears", price: 25, country: "Sweden", volume: 3500),//5 штук в наличии
    Absolut(name: "Absolut Mandarin", price: 5, country: "Sweden", volume: 700),//7 штук в наличии
    Absolut(name: "Absolut Watermelon", price: 15, country: "Sweden", volume: 5000),// 10 штук в наличии
    Absolut(name: "Absolut Vanilla", price: 30, country: "Sweden", volume: 9000)] // 9 штук в наличии
    private init() {}
    
    //Метод продажи пива
    func sellAbsolutPears() -> Int {
        if absolutChoose[0].volume != 0 {
            absolutChoose[0].volume -= 700
            self.revenue += absolutChoose[0].price
        }
        return absolutChoose[0].volume
    }
    
    func sellAbsolutMandarin() -> Int {
        if absolutChoose[1].volume != 0 {
            absolutChoose[1].volume -= 100
            self.revenue += absolutChoose[1].price
        }
        return absolutChoose[1].volume
    }
    
    func sellAbsolutWatermelon() -> Int {
        if absolutChoose[2].volume != 0 {
            absolutChoose[2].volume -= 500
            self.revenue += absolutChoose[2].price
        }
        return absolutChoose[2].volume
    }
    
    func sellAbsolutVanilla() -> Int {
        if absolutChoose[3].volume != 0 {
            absolutChoose[3].volume -= 1000
            self.revenue += absolutChoose[3].price
        }
        return absolutChoose[3].volume
    }
    
    //Метод проверки выручки за сегодня
    
        func countTodaysRevenue() -> String {
            return String(revenue)
        }
    
    //Метод обнуления выручки после наступления следующего дня
        func resetRevenue() -> String {
            self.revenue = 0.0
            absolutChoose[0].volume = absolutPearsVolume
            absolutChoose[1].volume = absolutMandarinVolume
            absolutChoose[2].volume = absolutWatermelonVolume
            absolutChoose[3].volume = absolutVanillaVolume
            return String(revenue)
        }
        
    }
    //Метод который проверяет и показывает остаток пива

