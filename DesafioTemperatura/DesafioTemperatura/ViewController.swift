//
//  ViewController.swift
//  DesafioTemperatura
//
//  Created by Lucas Gabriel Nascimento Miranda on 21/07/15.
//  Copyright (c) 2015 Nettwork. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Meu Slider de Temperatura
    @IBOutlet weak var sliderTemperatura: UISlider!
    
    // Minhas Labels
    @IBOutlet weak var lblCelsius: UILabel!
    @IBOutlet weak var lblFahrenheit: UILabel!
    @IBOutlet weak var lblKelvin: UILabel!
    
    // View que terá a cor alterada de acordo com a temperatura
    @IBOutlet weak var viewTemperatura: UIView!
    
    // Stepper que permite colocar valor em nosso slider
    @IBOutlet weak var stepperTemperatura: UIStepper!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Função que irá fazer a conversão de temperatura atráves do valor de nosso slider
    @IBAction func mudarTemperatura(sender: UISlider) {
        
        //Atribuindo o valor do Slider ao Stepper
        stepperTemperatura.value = Double(sliderTemperatura.value)
        
        /*
        * Atribuindo o os valores das Labels de Temperatura
        ** - lblCeusius  = valor Inteiro do Slider
        ** - lblFahrenheit = Utilizei o Tipo NSString para utilizar o formato de 2 casas decimais e apliquei a formula de conversão
        ** - lblKelvin = Utilizei o Tipo NSString para utilizar o formato de 2 casas decimais e apliquei a formula de conversão
        */
        lblCelsius.text = "Celsius: \(Int(sliderTemperatura.value)) ºC"
        lblFahrenheit.text = "Fahrenheit: " + (NSString(format: "%.2f", Float(sliderTemperatura.value * 1.8 + 32)) as String) + " ºF"
        lblKelvin.text = "Kelvin: " + (NSString(format: "%.2f", Float(sliderTemperatura.value + 273.15)) as String) + " ºK"
        
        // Atribuimos a cor branca para texto e para o stepper que mudarão de acordo com o nosso Slider
        lblCelsius.textColor = UIColor(white: CGFloat(sliderTemperatura.value)/100, alpha: 1.0)
        stepperTemperatura.tintColor = UIColor(white: CGFloat(sliderTemperatura.value)/100, alpha: 1.0)
        
        // Atribuimos a cor vermelha a view que terá sua transparencia alterada de acordo com o valor do Slider
        viewTemperatura.backgroundColor = UIColor(red: 255, green: 0, blue: 0, alpha:  CGFloat(sliderTemperatura.value)/100)
    }
    
    // Função responsável por configurar o Stepper
    @IBAction func actionStepper(sender: AnyObject) {
        
        // Atribuimos o valor do Stepper para o Slider
        sliderTemperatura.value = Float(stepperTemperatura.value)
        
        // Chamamos a função do Slider para que o Stepper possa alterar diretamente os valores das labels assim como o Slider
        mudarTemperatura(sliderTemperatura)
        
        
    }
}

