//
//  JSONAny+Hashable.swift
//  Core
//
//  Created by Rob Lokhorst on 12/10/2020.
//  Copyright © 2020 Q42. All rights reserved.
//

import Foundation

extension JSONAny: Hashable, Equatable {
  public func hash(into hasher: inout Hasher) {
    if let value = value as? Bool {
      hasher.combine(value)
    }
    if let value = value as? Int64 {
      hasher.combine(value)
    }
    if let value = value as? Double {
      hasher.combine(value)
    }
    if let value = value as? String {
      hasher.combine(value)
    }
//      TODO: crashes but why?
      print(value)
//    assertionFailure("Unknown JSONAny type")
  }

  public static func == (lhs: JSONAny, rhs: JSONAny) -> Bool {
    if let lhs = lhs.value as? Bool, let rhs = rhs.value as? Bool {
      return lhs == rhs
    }
    if let lhs = lhs.value as? Int64, let rhs = rhs.value as? Int64 {
      return lhs == rhs
    }
    if let lhs = lhs.value as? Double, let rhs = rhs.value as? Double {
      return lhs == rhs
    }
    if let lhs = lhs.value as? String, let rhs = rhs.value as? String {
      return lhs == rhs
    }
    return false
  }
    
    public func get(value: String) -> Data? {
        do {
            if let dic = self.value as? [String: Any],
                let data = dic[value]
            {
                let jsonData = try JSONSerialization.data(withJSONObject: data)
                return jsonData
            }
        } catch {}
        return nil
    }
}

extension JSONAny: Identifiable {
    
}
