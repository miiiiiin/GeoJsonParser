//
//  GMSPolygon+GeoPolygon.swift
//  GeoJsonParser
//
//  Created by Running Raccoon on 2021/09/16.
//

import Foundation
import ObjectMapper

//extension GMSPolygon {
//
//    static var polygons = [GMSPolygon]()
//
//    convenience init?(geoPolygon: GeoPolygon) {
//        guard geoPolygon.coordinates.count > 0 else {
//            return nil
//        }
//
//        let coordinates = geoPolygon.coordinates[0]
//        let path = GMSMutablePath()
//
//        for coordinate in coordinates {
//            path.add(coordinate)
//        }
//
//        self.init(path: path)
//    }
//
//    static func polygons(_ multiPolygon: GeoMultiPolygon) -> [GMSPolygon] {
//
//        for geoPolygon in multiPolygon.polygons {
//
//            guard let polygon = GMSPolygon(geoPolygon: geoPolygon) else {
//                continue
//            }
//
//            polygons.append(polygon)
//        }
//
//        return polygons
//    }
//
//    static func polygons(_ geoJSONString: String) -> [GMSPolygon]? {
//        guard let geoJSONObject = geoJSONString.toGeoJSONObject(json: geoJSONString) else {
//            return nil
//        }
//
//        if let geoPolygon = geoJSONObject as? GeoPolygon, let polygon = GMSPolygon(geoPolygon: geoPolygon) {
//            return [polygon]
//        }
//
//        else if let geoMultiPolygon = geoJSONObject as? GeoMultiPolygon {
//            return GMSPolygon.polygons(geoMultiPolygon)
//        }
//        else {
//            return nil
//        }
//    }
//}
