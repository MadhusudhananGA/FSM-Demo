//
//  ServiceDetailView.swift
//  FSM Demo
//
//  Created by Madhusudhanan G on 12/07/25.
//

import SwiftUI
import ServicesSampleData

struct ServiceDetailView: View {
    
    var service: Service
    
    var body: some View {
        NavigationStack {
            ScrollView {
                makeDetailView()
            }
            .navigationTitle("Service Detail")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    
    @ViewBuilder
    func makeDetailView() -> some View {
        VStack(alignment: .leading) {
            
            Spacer()
            
            MapView()
                .frame(maxHeight: 150)
                .padding()
            
            HStack {
                Text(service.title)
                    .font(.title)
                Spacer()
                ServiceStatusView(statusColor: ServiceViewUtil.getServiceStatusColor(for: service), status: service.status)
            }
            .padding(.horizontal, 10)
            .padding(.top, 10)
            
            makeDescriptionView(image: "person.circle", heading: "Customers", description: service.customerName)
                .padding(.horizontal, 10)
                .padding(.top, 10)
            
            makeDescriptionView(image: "doc.text", heading: "Description", description: service.description)
                .padding(.horizontal, 10)
                .padding(.top, 10)
            
            makeDescriptionView(image: "clock", heading: "Scheduled Time", description: ServiceDateFormatter.formattedDateString(from: service.scheduledDate))
                .padding(.horizontal, 10)
                .padding(.top, 10)
            
            makeDescriptionView(image: "location.circle", heading: "Location", description: service.location)
                .padding(.horizontal, 10)
                .padding(.top, 10)
            
            makeDescriptionView(image: "note.text", heading: "Service Notes", description: service.serviceNotes)
                .padding(.horizontal, 10)
                .padding(.top, 10)
        }
    }
    
    func makeDescriptionView(image: String, heading: String, description: String) -> some View {
        HStack {
            Image(systemName: image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundStyle(.blue)
                .frame(maxWidth: 20, maxHeight: 20)
                .padding(.trailing, 10)
            
            VStack(alignment: .leading) {
                Text(heading)
                    .font(.headline)
                Text(description)
            }
        }
    }
}
