//
//  HabitCollectionViewController.swift
//  Habits App
//
//  Created by user@59 on 30/08/1946 Saka.
//

import UIKit

private let reuseIdentifier = "Cell"

class HabitCollectionViewController: UICollectionViewController {
    
    
    typealias DataSourceType =
       UICollectionViewDiffableDataSource<ViewModel.Section,
       ViewModel.Item>
    enum ViewModel {
        enum Section: Hashable {
            case favorites
            case category(_ category: Category)
        }
    
        typealias Item = Habit
    }
    
    struct Model {
        var habitsByName = [String: Habit]()
    }
    
    var dataSource: DataSourceType!
    var model = Model()
    
    var habitsRequestTask: Task<Void, Never>? = nil
    deinit { habitsRequestTask?.cancel() }
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func update() {
        habitsRequestTask?.cancel()
        habitsRequestTask = Task {
            if let habits = try? await HabitRequest().send() {
                self.model.habitsByName = habits
            } else {
                self.model.habitsByName = [:]
            }
            self.updateCollectionView()
    
            habitsRequestTask = nil
        }
    }
    
    func updateCollectionView() {
    }
    

}
