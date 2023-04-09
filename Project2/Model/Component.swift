//
//  Component.swift
//  Project2
//
//  Created by Prachit on 04/04/23.
//

import Foundation

//enum ComponentType: String, Codable {
//    case image
//    case grid
//    case list
//}
//
//struct Component: Codable {
//    let type: ComponentType
//    let data: [ComponentData]
//}
//
//enum ComponentData: Codable {
//    case imageData(ComponentImageData)
//    case gridData(ComponentGridData)
//    case listData(ComponentListData)
//
//    private enum CodingKeys: String, CodingKey {
//        case type
//        case data
//    }
//
//    private enum ComponentDataType: String, Codable {
//        case image
//        case grid
//        case list
//    }
//
//    init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        let type = try container.decode(ComponentDataType.self, forKey: .type)
//        switch type {
//        case .image:
//            let imageData = try container.decode(ComponentImageData.self, forKey: .data)
//            self = .imageData(imageData)
//        case .grid:
//            let gridData = try container.decode(ComponentGridData.self, forKey: .data)
//            self = .gridData(gridData)
//        case .list:
//            let listData = try container.decode(ComponentListData.self, forKey: .data)
//            self = .listData(listData)
//        }
//    }
//
//    func encode(to encoder: Encoder) throws {
//        var container = encoder.container(keyedBy: CodingKeys.self)
//        switch self {
//        case let .imageData(imageData):
//            try container.encode(ComponentDataType.image, forKey: .type)
//            try container.encode(imageData, forKey: .data)
//        case let .gridData(gridData):
//            try container.encode(ComponentDataType.grid, forKey: .type)
//            try container.encode(gridData, forKey: .data)
//        case let .listData(listData):
//            try container.encode(ComponentDataType.list, forKey: .type)
//            try container.encode(listData, forKey: .data)
//        }
//    }
//}
//
//struct ComponentImageData: Codable {
//    let imageUrl: String
//    let name: String
//    let value: String
//    let description: String
//}
//
//struct ComponentGridData: Codable {
//    let items: [ComponentGridItem]
//}
//
//struct ComponentGridItem: Codable {
//    let imageUrl: String
//    let name: String
//    let value: String
//}
//
//struct ComponentListData: Codable {
//    let items: [ComponentListItem]
//}
//
//struct ComponentListItem: Codable {
//    let imageUrl: String
//    let name: String
//    let description: String
//}
//


struct ResponseData: Codable {
    let components: [Component]
}

enum ComponentType: String, Codable {
    case image, grid, list
    case none = ""
}

struct Component: Codable {
    var type: ComponentType = .none
    let cells: [Cell]
}

struct Cell: Codable {
    let imageUrl: String
    let name: String
    let description: String
    let dmartValue: Int
    let saveValue: Int
    let mrpValue: Int
    let productType: String
    let veg: Bool
}

