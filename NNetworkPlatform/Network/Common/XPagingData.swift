//
//  XPagingData.swift
//  NNetworkPlatform
//
//  Created by Duy Nguyen on 31/03/2022.
//

import Foundation

public struct XPagingData<T: Codable>: Codable {
    let total, limit, offset: Int
    let docs: [T]
    
    enum CodingKeys: String, CodingKey {
        case total, limit, offset, docs
    }
    
    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        total = values.decodex(key: .total, defaultValue: 0)
        limit = values.decodex(key: .limit, defaultValue: 0)
        offset = values.decodex(key: .offset, defaultValue: 0)
        docs = values.decodex(key: .docs, defaultValue: [])
    }
}
