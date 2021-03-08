import RPi.GPIO as GPIO # Import Raspberry Pi GPIO library
import alsaaudio
GPIO.setwarnings(False) # Ignore warning for now
GPIO.setmode(GPIO.BOARD) # Use physical pin numbering
GPIO.setup(10, GPIO.IN, pull_up_down=GPIO.PUD_DOWN) # Set pin 10 to be an input pin and set initial value to be pulled low (off)
GPIO.setup(11, GPIO.IN, pull_up_down=GPIO.PUD_DOWN)
while True: # Run forever
    if GPIO.input(10) == GPIO.HIGH:
        m = alsaaudio.Mixer()
        current_volume = m.getvolume()
        new_volume = current_volume + 5
        m.setvolume(new_volume)
        print("lautstärke plus")
        
    if GPIO.input(11) == GPIO.HIGH:
        m = alsaaudio.Mixer()
        current_volume = m.getvolume()
        new_volume = current_volume - 5
        m.setvolume(new_volume)
        print("lautstärke minus")
