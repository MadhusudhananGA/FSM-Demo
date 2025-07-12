//
//  ServiceListViewCell.swift
//  FSM Demo
//
//  Created by Madhusudhanan G on 12/07/25.
//

import SwiftUI
import ServicesSampleData

struct ServiceListViewCell: View {
    
    var service: Service
    
    var body: some View {
        VStack(alignment: .leading) {
            let statusColor = ServiceViewUtil.getServiceStatusColor(for: service)
            HStack {
                Text(service.title)
                    .font(.title)
                    .foregroundStyle(.black)
                Spacer()
                Circle()
                    .fill(statusColor)
                    .frame(width: 10, height: 10)
                    
            }
            Spacer()
            HStack {
                Image(systemName: "person.circle")
                    .foregroundStyle(.blue)
                    .padding(.trailing, 10)
                Text(service.customerName)
                    .foregroundStyle(.black)
                Spacer()
            }
            Spacer()
            HStack {
                Image(systemName: "doc.text")
                    .foregroundStyle(.blue)
                    .padding(.trailing, 10)
                Text(service.description)
                    .foregroundStyle(.black)
                    .multilineTextAlignment(.leading)
                Spacer()
            }
            Spacer()
            HStack {
                ServiceStatusView(statusColor: statusColor, status: service.status)
                    .frame(maxHeight: 20)
                Spacer()
                Text(ServiceDateFormatter.formattedDateString(from: service.scheduledDate))
                    .foregroundStyle(.black)
                    .padding()
            }
            
            
        }
        .frame(maxWidth: .infinity)
    }
}
