clear;close all; clc;
button_arduino = arduino();
Rbutton_pin='D8';
Ybutton_pin = 'D9';
Gbutton_pin = 'D10';
Rbutton_state = readDigitalPin(button_arduino,Rbutton_pin);
Ybutton_state = readDigitalPin(button_arduino,Ybutton_pin);
Gbutton_state = readDigitalPin(button_arduino,Gbutton_pin);
for outer_loop = 1:5
    for inner_loop = 1:10
        fprintf("Outer loop number: %d and Inner loop number: %d", outer_loop,inner_loop); 
    end
end
SPEAK_PIN = 'D3';
RledPin = 'D4';
    Rbutton_state = readDigitalPin(button_arduino,Rbutton_pin);
    if Rbutton_state == 1
            playTone(button_arduino,SPEAK_PIN,440,0.1);       
            for interval = 1:4
                writeDigitalPin(button_arduino,RledPin,1);
                pause(0.125);
                 writeDigitalPin(button_arduino,RledPin,0);
                 pause(0.125);
            end
     while (Rbutton_state == 1)
            playTone(button_arduino,SPEAK_PIN,440,0.1);
            writeDigitalPin(button_arduino,RledPin,0);
            Rbutton_state = readDigitalPin(button_arduino, Rbutton_pin)
            writeDigitalPin(button_arduino,RledPin,1);
        end
    end
    SPEAK_PIN = 'D3';
YledPin = 'D5';
    Ybutton_state = readDigitalPin(button_arduino,Ybutton_pin);
    if Ybutton_state == 1
            playTone(button_arduino,SPEAK_PIN,350,0.1);       
            for interval = 1:4
                writeDigitalPin(button_arduino,YledPin,1);
                pause(0.125);
                 writeDigitalPin(button_arduino,YledPin,0);
                 pause(0.125);
            end
     while (Ybutton_state == 1)
            playTone(button_arduino,SPEAK_PIN,350,0.1);
            writeDigitalPin(button_arduino,YledPin,0);
            Ybutton_state = readDigitalPin(button_arduino, Ybutton_pin)
                writeDigitalPin(button_arduino,YledPin,1);
        end
    end
      SPEAK_PIN = 'D3';
GledPin = 'D6';
    Gbutton_state = readDigitalPin(button_arduino,Gbutton_pin);
    if Gbutton_state == 1
            playTone(button_arduino,SPEAK_PIN,200,0.1);       
            for interval = 1:4
                writeDigitalPin(button_arduino,GledPin,1);
                pause(0.125);
                 writeDigitalPin(button_arduino,GledPin,0);
                 pause(0.125);
            end
     while (Gbutton_state == 1)
            playTone(button_arduino,SPEAK_PIN,200,0.1);
            writeDigitalPin(button_arduino,GledPin,0);
            Gbutton_state = readDigitalPin(button_arduino, Gbutton_pin)
            writeDigitalPin(button_arduino,GledPin,1);
        end
    end

    
    
