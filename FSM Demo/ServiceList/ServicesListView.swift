//
//  ViewController.swift
//  FSM Demo
//
//  Created by Madhusudhanan G on 12/07/25.
//

import ServicesSampleData
import SwiftUI

struct ServicesListView: View {

    @State var services: [Service]
    @State var searchText: String = ""

    var presenter: ServiceListViewDelegate = ServiceViewPresenter()

    var filteredServices: [Service] {
        return if searchText.isEmpty {
            services
        } else {
            presenter.filterServices(services, searchText: searchText)
        }
    }

    init() {
        services = presenter.getServicesData()
    }

    var body: some View {
        NavigationStack {
            ScrollView {
                ForEach(filteredServices) { service in
                    NavigationLink(destination: ServiceDetailView(service: service)) {
                        ServiceListViewCell(service: service)
                            .frame(maxHeight: .infinity)
                            .padding(20)
                            .overlay(
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(.gray, lineWidth: 0.5)
                                    .padding(.leading, 5)
                                    .padding(.trailing, 5)
                            )
                    }
                }
            }
            .refreshable {
                sleep(2)
                services = presenter.getServicesData()
            }
            .navigationTitle("Services")
            .searchable(text: $searchText, prompt: "Search")
        }
    }
}
