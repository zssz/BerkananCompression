//
// Copyright © 2019 IZE Ltd. and the project authors
// Licensed under MIT License
//
// See LICENSE.txt for license information.
//

import Foundation
import Compression

@available(iOS 13.0, OSX 10.15, tvOS 13.0, *)
extension Algorithm: CustomStringConvertible {
  
  public var description: String {
    switch self {
      case .lzfse: return "LZFSE"
      case .zlib: return "ZLIB"
      case .lz4: return "LZ4"
      case .lzma: return "LZMA"
      default: return ""
    }
  }
}
