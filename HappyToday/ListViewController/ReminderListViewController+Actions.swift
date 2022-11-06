//
//  ReminderListViewController+Actions.swift
//  HappyToday
//
//  Created by 1 on 2022/11/06.
//

import UIKit

extension ReminderListViewController {
    @objc func didPressDoneButton(_ sender: ReminderDoneButton) {
        guard let id = sender.id else { return }
        completeReminder(with: id)
    }
}
