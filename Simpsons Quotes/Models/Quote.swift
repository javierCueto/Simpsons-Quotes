//
//  Quote.swift
//  Simpsons Quotes
//
//  Created by José Javier Cueto Mejía on 12/04/20.
//  Copyright © 2020 Pozolx. All rights reserved.
//

import Foundation
import SwiftUI

struct SimpsonQuote: Decodable {
    var quote: String?
    var character: String?
    var image: String?
    var characterDirection: String?
}
