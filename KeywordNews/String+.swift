//
//  String+.swift
//  KeywordNews
//
//  Created by Eunyeong Kim on 2021/08/24.
//

import Foundation

extension String {
    // html 코드를 string으로 변환하는 계산 속성 
    var htmlToString: String {
        guard let data = self.data(using: .utf8) else { return "" }

        do {
            return try NSAttributedString(
                data: data,
                options: [
                    .documentType: NSAttributedString.DocumentType.html,
                    .characterEncoding: String.Encoding.utf8.rawValue
                ],
                documentAttributes: nil
            ).string
        } catch {
            return ""
        }
    }
}
