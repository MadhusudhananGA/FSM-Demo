//
//  ServiceViewUtil.swift
//  FSM Demo
//
//  Created by Madhusudhanan G on 12/07/25.
//

import SwiftUI
import ServicesSampleData

struct ServiceViewUtil {
    
    static func getServiceStatusColor(for service: Service) -> Color {
        switch service.status {
        case .active:
            return Color.green
        case.completed:
            return Color.blue
        case .inProgress:
            return Color.yellow
        case .scheduled:
            return Color.gray
        case .urgent:
            return Color.red
        }
    }
    
    
}
