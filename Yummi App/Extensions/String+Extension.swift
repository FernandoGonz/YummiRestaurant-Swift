//
//  String+Extension.swift
//  Yummi App
//
//  Created by Fernando González on 02/07/22.
//

import Foundation

extension String {
    var asUrl: URL? {
        return URL(string: self)
    }
}
