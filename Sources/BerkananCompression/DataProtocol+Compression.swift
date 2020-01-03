//
// Copyright © 2019 IZE Ltd. and the project authors
// Licensed under MIT License
//
// See LICENSE.txt for license information.
//

import Foundation
import Compression

@available(iOS 13.0, OSX 10.15, *)
extension DataProtocol {
  
  /// Returns compressed data using `algorithm`.
  /// - Parameter algorithm: The algorithm used to compress the data.
  public func compressed(using algorithm: Algorithm) throws -> Data {
    return try applyOutputFilter(with: .compress, algorithm: algorithm)
  }
  
  /// Returns decompressed data using `algorithm`.
  /// - Parameter algorithm: The algorithm used to decompress the data.
  public func decompressed(using algorithm: Algorithm) throws -> Data {
    return try applyOutputFilter(with: .decompress, algorithm: algorithm)
  }
  
  func applyOutputFilter(
    with operation: FilterOperation,
    algorithm: Algorithm
  ) throws -> Data {
    var buffer = Data()
    let outputFilter = try OutputFilter(operation, using: algorithm) { data in
      guard let data = data else { return }
      buffer.append(data)
    }
    try outputFilter.write(self)
    try outputFilter.finalize()
    return buffer
  }
}
