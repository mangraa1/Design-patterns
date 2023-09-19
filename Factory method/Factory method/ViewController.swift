//
//  ViewController.swift
//  Factory method
//
//  Created by mac on 19.09.2023.
//

import UIKit

class ViewController: UIViewController {

    private var exerciseArray = [Exercise]()

    //MARK: - Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()

        createExercise(type: .jumping)
        createExercise(type: .squats)

        runExercise()
    }

    //MARK: - Private

    private func createExercise(type: AllExercises) {
        let newExercise = FactoryExercises.shared.createExercices(type: type)
        exerciseArray.append(newExercise)
    }

    private func runExercise() {
        for exercise in exerciseArray {
            exercise.start()
            exercise.stop()
        }
    }
}

