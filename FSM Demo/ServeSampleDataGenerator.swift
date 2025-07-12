//
//  ServeSampleDataGenerator.swift
//  FSM Demo
//
//  Created by Madhusudhanan G on 12/07/25.
//
import ServicesSampleData

class ServeSampleDataGenerator {
    
    func getSampleData() -> [Service] {
        SampleData.generateServices()
    }
    
}
