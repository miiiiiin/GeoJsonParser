//
//  MapUtil.swift
//  GeoJsonParser
//
//  Created by Running Raccoon on 2021/09/16.
//

import Foundation
import CoreLocation

class MapUtil {
    
    static let shared: MapUtil = {
        return MapUtil()
    }()
    
//    func isContains(_ point: CLLocationCoordinate2D, _ geo: GeoMultiPolygon) -> Bool {
//        if (geo == nil) {
//            return false
//        }
//
//        if (geo.isMultiPolygon() || geo.isPolygon()) {
//            let polygons = geo.getMultiPolygon()
//            for polygon in polygons {
//                if (self.isContains(point, polygon)) {
//                    return true
//                }
//            }
//        }
//
//        return false;
//    }
//
//    func isContains(_ point: CLLocationCoordinate2D, _ polygon: GeoPolygon) -> Bool {
//        var crossings = 0;
//        var path: [CLLocationCoordinate2D] = polygon.outer
//
//        for i in 0..<path.count {
//            var mapPointA: CLLocationCoordinate2D = path[i]
//            var j = i + 1
//            if j >= path.count {
//                j = 0
//            }
//
//            var mapPointB = path[j]
//            if rayCrossesSegment(point, mapPointA, mapPointB) {
//                crossings += 1
//            }
//        }
//        return crossings % 2 == 1
//    }
    
    func rayCrossesSegment(_ point: CLLocationCoordinate2D, _ a: CLLocationCoordinate2D, _ b: CLLocationCoordinate2D) -> Bool {
        var px: Double = point.longitude
        var py: Double = point.latitude
        var ax: Double = a.longitude
        var ay: Double = a.latitude
        var bx: Double = b.longitude
        var by: Double = b.latitude
        if (ay > by) {
            ax = b.longitude
            ay = b.latitude
            bx = a.longitude
            by = a.latitude
        }
        
        if (px < 0) {
            px += 360
        }
        if (ax < 0) {
            ax += 360
        }
        if (bx < 0) {
            bx += 360
        }
        
        if (py == ay || py == by) {
            py += 0.00000001
        }
        if (py > by || py < ay || px > max(ax, bx)) {
            return false
        }
        if (px < min(ax, bx)) {
            return true
        }
        
        
        let red = ax != bx ? (by - ay) / (bx - ax) : .greatestFiniteMagnitude
        let blue = ax != px ? (py - ay) / (px - ax) : .greatestFiniteMagnitude
        
        return blue >= red
    }
}
