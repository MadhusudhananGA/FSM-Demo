//
//  ServiceListViewDelegate.swift
//  FSM Demo
//
//  Created by Madhusudhanan G on 12/07/25.
//

import ServicesSampleData

protocol ServiceListViewDelegate {
    func getServicesData() -> [Service]
    func filterServices(_ services: [Service], searchText: String) -> [Service]
}
