//
//  ZTFont.swift
//  Zatoory
//
//  Created by Tyrell_07 on 1/18/25.
//

import SwiftUI

enum ZTFont {
    static func thin(_ size: CGFloat) -> Font {
        Font.custom("IBMPlexSansKR-Thin", size: size)
    }
    static func light(_ size: CGFloat) -> Font {
        Font.custom("IBMPlexSansKR-Light", size: size)
    }
    static func extraLight(_ size: CGFloat) -> Font {
        Font.custom("IBMPlexSansKR-ExtraLight", size: size)
    }
    static func regular(_ size: CGFloat) -> Font {
        Font.custom("IBMPlexSansKR-Regular", size: size)
    }
    static func medium(_ size: CGFloat) -> Font {
        Font.custom("IBMPlexSansKR-Medium", size: size)
    }
    static func semiBold(_ size: CGFloat) -> Font {
        Font.custom("IBMPlexSansKR-SemiBold", size: size)
    }
    static func bold(_ size: CGFloat) -> Font {
        Font.custom("IBMPlexSansKR-Bold", size: size)
    }
}

