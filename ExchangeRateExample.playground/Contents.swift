

import Foundation

struct ExchangeRate{

    
    var currencyRate: Double{
        willSet{
            print("환율 변동 예정 : \(currencyRate) -> \(newValue)")
        }
        
        didSet{
            print("환율 변동 완료 : \(oldValue) -> \(currencyRate)")
        }
    }
    
    var KRW: Double{
        get{
            currencyRate * USD
        }
        set{
            USD = newValue / currencyRate
        }
    }
    
    var USD: Double{
        willSet{
            print("환전 금액 : \(newValue) USD로 환전 예정")
        }
        didSet{
            print("\(KRW) KRW -> \(USD) USD로 환전 됐음")
        }
    }
}


var rate = ExchangeRate(currencyRate: 1100, USD: 1)
rate.KRW = 500000
rate.currencyRate = 1350
rate.KRW = 500000
