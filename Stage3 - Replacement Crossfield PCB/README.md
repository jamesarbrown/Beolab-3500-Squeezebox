## Stage 3 - Replacement Crossfield and Ribbon Cables

### Ribbon Cable Replacements

| Function            | New Length    | Ways | Socket on Beolab   | RS PN Plugs   |
| ------------------- |:-------------:| :---:| :----------------: | ------------: |
| Right Hand Side Amp | 380mm         | 8    | P2                 | 680-5148      |
| Left Hand Side Amp  | 520mm         | 8    | P2                 | 680-5148      |
| Right Hand Side Amp | 370mm         | 12   | P18                | 680-4933      |
| TX "Left"           | 520mm         | 4    | P21                | 341-7349      |

Note 10 way ribbon P17 to P5 is removed and not replaced. On ribbon cable bought a length of 14 way and cut down for other sections

In later stages the right hand side and left hand amps will be swapped around to create space for the crossfield PCB

## Crossfield PCB Folders

I made the PCB utilising laser printer thermal transfer method. 

In the following folders please finds

### PDFs

Crossfield PCB.pdf - The PCB to Print

![Alt text](./Images/pcb.jpg?raw=true "PCB")

Crossfield Schematic.pdf - The Schematic of the above PCB

![Alt text](./Images/Schematic.jpg?raw=true "PCB")

### Crossfield PCB Replacement (KiCAD Project)
The original KiCAD Design files, including the TE connectivity plugs and so on

#### Notes 
I had difficulty in nailing down the PFAIL and PLIM functions, so copied the way they originally were immplemented into the B&O microcomputer. Then used a BC549 to separate the circuit from the Raspberry. My suspicion was I could pull down the 3v3 directly, but went for this way to achieve some security.

### 3d from Kicad of PCB

![Alt text](./Images/3d.jpg?raw=true "3d")
 


