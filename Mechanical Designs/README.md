# Mechanical Designs

## Final Full Assembly

This final design was implemented with a combination of 3d printing PLA parts and Laser cutting Acryllic parts. The Full Assembly can be found [here](Full_Assembly.stl). As can be seen, it is comprised of a few different components which are described bewlow.

## 3D Printables

The design of the [Base and Ukulele Housing](3D Prints/Base_and_Uke_Housing.stl) was 3d printed out of PLA plastic. This serves as the base of the design and is where the neck of the Ukulele rests. It is made out of a [base](3D Prints/base.stl) and a [housing](3D Prints/Housing_Base.stl) for the Ukulele. It was designed such that the Ukulele can rest with it's first four frets accessable to the solenoids. This is a big chunk of plastic and was designed as such, so as to provide overall stability to the system.

Further parts that were 3D printed include the [Housing Aligners](3D Prints/Housing_Aligners.stl), the [Pins](3D Prints/Pin.stl) and the [Fingertips](3D Prints/Fingertips.stl). The Housing Aligners are used to connect the 3D printed Base and Ukulele Housing to the laser cut parts that house the solenoids described below. This is done as a way of ensuring the parts line up such that the solenoids are above the correct part of the Ukulele neck. The Pins are used simply to connect the Housing Aligners to the Base and Ukulele Housing to improve stability.

The Fingertips were printed out of NinjaFlex 3D printer filament. This was done as it produces a much more flexibale part. These fingertips were connected to the end of the solenoid plunger, as an end-effector to press chords on the Ukulele.


## Laser Cuttables

In order to both house and align the solenoids such that they are able to press the correct chords, the solution was designed to be done in three layers. This decision was made in order to allow for as much air flow through the system as possible - necessary since the solenoids are being driven over voltage. Each layer was drawn and saved in '.svg' format, these drawings were then cut out of Acryllic using a laser cutter.

As such, the [bottom layer](Laser Cuts/bottom_solenoid_holder.svg) was drawn to have holes for the solenoid plunger to be able to press down on the correct part of the Ukulele neck, but these holes are only big enough for the plunger, that is to say, this layer holds the solenoids from the bottom. It also includes square holes for the 3D printed Housing Aligners to fit through, so as to ensure accurate alignment. The [middle layer](Laser Cuts/middle_solenoid_holder.svg) was drawn to house the solenoids and ensure their alignment is such that their plungers go through the holes on the bottom layer. Lastly, the [top layer](Laser Cuts/top_solenoid_holder.svg), similarly to the bottom layer, has holes large enough only for the solenoid plungers and secondary holes for the solenoid wiring. This layer serves to compress the solenoids so that when they are activated, all of their force goes into pressing the plunger down onto the Ukulele.

## Other Parts
The [Solenoid](Other Parts/Solenoid.stl) and [Ukulele Neck](Other Parts/Ukulele.stl) designs were used within the CAD design of all of the necessary parts that make the final full assembly. They were made to be the same size as the real part such that the designed parts were accurate and reliable.

Threadbars and appropriately sized nuts were ordered from McMaster-Carr to be used in the real life assembly of the design. In CAD, this [Threadbar](Other Parts/Threadbar.stl) was used as a placeholder for the final full assembly design. The parts ordered and used were:
* Low-Strength Steel Hex Nut, Grade 2, Zinc-Plated, 3/8"-16 Thread Size
* Low-Strength Zinc-Plated Steel Hex Head Screw, 3/8"-16 Thread Size, 5" Long, Fully Threaded

The threadbar and nut combination was used to both compress and space the three laser cut-out layers that house the solenoids.

## Unused Designs
This folder holds some of the unused designs that were iterated through in the process of getting to the final design shown in the root of this directory.
