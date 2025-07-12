//
//  ServiceDateFormatter.swift
//  FSM Demo
//
//  Created by Madhusudhanan G on 12/07/25.
//

import Foundation

class ServiceDateFormatter {
    
    static func formattedDateString(from dateString: String) -> String {
        let calendar = Calendar.current
        let date = getDate(from: dateString)
        
        if calendar.isDateInToday(date) {
            return "Today, \(formatTime(from: date))"
        } else if calendar.isDateInTomorrow(date) {
            return "Tomorrow, \(formatTime(from: date))"
        } else if calendar.isDateInYesterday(date) {
            return "Yesterday, \(formatTime(from: date))"
        } else {
            return "\(formatDate(from: date)), \(formatTime(from: date))"
        }
    }
    
    private static func formatTime(from date: Date) -> String {
        let timeFormatter = DateFormatter()
        timeFormatter.dateFormat = "h:mm a"
        timeFormatter.amSymbol = "AM"
        timeFormatter.pmSymbol = "PM"
        return timeFormatter.string(from: date)
    }
    
    private static func formatDate(from date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        return dateFormatter.string(from: date)
    }
    
    private static func getDate(from dateString: String) ->  Date {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy'-'MM'-'dd'T'HH':'mm':'ssZZZ"
        return dateFormatter.date(from: dateString) ?? Date.now
    }
    
    
}
