//
//  main.swift
//  区号
//
//  Created by Gioures on 2022/11/23.
//

import Foundation

print("Hello, World!")

extension NSLocale {

    struct Locale {
        let countryCode: String // 国家代码
        let countryName: String // 国家名称
    }

    class func locales() -> [Locale] {

        var locales = [Locale]()
        let locale = NSLocale.current as NSLocale
        
        for countryCode in NSLocale.isoCountryCodes { // 遍历所有符合 ISO 标准的国家代码
            let countryName =  locale.displayName(forKey: NSLocale.Key.countryCode, value: countryCode) ?? ""
            let locale = Locale(countryCode: countryCode, countryName: countryName)
            locales.append(locale)
        }

        return locales
    }
}


print(NSLocale.locales())
