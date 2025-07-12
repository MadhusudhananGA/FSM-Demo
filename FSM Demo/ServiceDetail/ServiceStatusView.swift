//
//  ServiceStatusView.swift
//  FSM Demo
//
//  Created by Madhusudhanan G on 12/07/25.
//

import SwiftUI
import ServicesSampleData

struct ServiceStatusView: View {
    
    var statusColor: Color
    var status: ServiceStatus
    
    var body: some View {
        HStack {
            Rectangle()
                .fill(statusColor)
                .frame(width: 15, height: 15)
                .padding(.leading, 10)
                .padding(.vertical, 10)
            Text(status.rawValue)
                .foregroundStyle(statusColor)
                .padding(.trailing, 10)
        }
        .frame(maxHeight: .infinity)
        .overlay {
            RoundedRectangle(cornerRadius: 10, style: .circular)
                .fill(statusColor.opacity(0.2))
                .frame(maxHeight: 30)
        }
    }
    
}
