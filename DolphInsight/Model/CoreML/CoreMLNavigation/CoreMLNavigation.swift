//
//  CoreMLNavigation.swift
//  DolphInsight
//
//  Created by M Khalid Assiddiq on 26/05/24.
//

import Foundation
import CoreML

// Fungsi untuk melakukan prediksi menggunakan model CoreML
func testModel(text: String) -> modeltaggermlOutput? {
    do {
        let config = MLModelConfiguration()
        let model = try modeltaggerml(configuration: config)
        
        let input = modeltaggermlInput(text: text)
        let prediction = try model.prediction(input: input)
        
        return prediction
    } catch {
        print("Error during prediction: \(error.localizedDescription)")
    }
    
    return nil
}

func goalsSoftwareEngineerModel(text: String) -> goalsSoftwareEngineerOutput?{
    do{
        let config = MLModelConfiguration()
        let model = try goalsSoftwareEngineer(configuration: config)
        
        let input = goalsSoftwareEngineerInput(text: text)
        let prediction = try model.prediction(input: input)
        
        return prediction
    }catch{
        print("Error during prediction: \(error.localizedDescription)")
    }
    
    return nil
}

func goalsDataScientistModel(text: String) -> goalsDataScientistOutput?{
    do{
        let config = MLModelConfiguration()
        let model = try goalsDataScientist(configuration: config)
        
        let input = goalsDataScientistInput(text: text)
        let prediction = try model.prediction(input: input)
        
        return prediction
    }catch{
        print("Error during prediction: \(error.localizedDescription)")
    }
    
    return nil
}
