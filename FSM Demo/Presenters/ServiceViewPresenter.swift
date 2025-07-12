//
//  ServiceViewPresenter.swift
//  FSM Demo
//
//  Created by Madhusudhanan G on 12/07/25.
//
import ServicesSampleData
import SwiftUI

class ServiceViewPresenter: ServiceListViewDelegate {
    
    func getServicesData() -> [Service] {
        return SampleData.generateServices()
    }
    
    func filterServices(_ services: [Service], searchText: String) -> [Service] {
        let searchString = searchText.lowercased()
        
        return services.filter {
            $0.title.lowercased().contains(searchString) ||
            $0.customerName.lowercased().contains(searchString) || $0.description.contains(searchString)
        }
    }
    
}
