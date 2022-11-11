//
//  EKEventStore+AsyncFetch.swift
//  HappyToday
//
//  Created by 1 on 2022/11/11.
//

import Foundation
import EventKit
//캘린더 이벤트 및 미리 알림 엑세스
extension EKEventStore {
    func fetchReminders(matching predicate: NSPredicate) async throws -> [EKReminder] {
        try await withCheckedThrowingContinuation { continuation in
            fetchReminders(matching: predicate) { reminders in
                if let reminders = reminders {
                    continuation.resume(returning: reminders)
                } else {
                    continuation.resume(throwing: TodayError.failedReadingReminders)
                }
            }
        }
    }
}

