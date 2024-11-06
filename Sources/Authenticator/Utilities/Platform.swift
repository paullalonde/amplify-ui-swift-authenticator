//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

enum Platform {
    case macOS
	case iOS
	case tvOS
    case unsupported

    static var current: Platform {
    #if os(macOS)
        return .macOS
	#elseif os(iOS)
        return .iOS
	#elseif os(tvOS)
        return .tvOS
    #else
        return .unsupported
    #endif
    }

    static var isMacOS: Bool {
        current == .macOS
    }

    static var isIOS: Bool {
        current == .iOS
    }
}
