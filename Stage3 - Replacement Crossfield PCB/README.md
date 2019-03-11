## Stage 3 - Replacement Crossfield and Ribbon Cables

### Ribbon Cable Replacements

| Function            | New Length    | Ways | Socket on Beolab   | RS PN Plugs   |
| ------------------- |:-------------:| :---:| :----------------: | ------------: |
| Left Hand Side Amp  | 380mm         | 8    | P2                 | 680-5148      |
| Switch Mode PSU     | 220mm         | 14   | P24                | 680-4993      |
| Right Hand Side Amp | 520mm         | 8    | P2                 | 680-5148      |
| Right Hand Side Amp | 370mm         | 12   | P18                | 680-4933      |

Note 10 way ribbon P17 to P5 is removed and not replaced. On ribbon cabnle bought a length of 14 way and cut down for other sections

### Crossfield PCB

I made the PCB utilising laser printer thermal transfer method. 

In the following folders please finds

####PDFs
Crossfield PCB.pdf - The PCB to Print
![Alt text](./Images/pcb.jpg?raw=true "PCB")
Crossfield Schematic.pdf - The Schematic of the above PCB
![Alt text](./Images/Schematic.jpg?raw=true "PCB")

####KiCad
The original KiCAD Design files, including the TE connectivity plugs and so on

######Notes 
I had difficulty in nailing down the PFAIL and PLIM functions, so copied the way they originally were immplemented into the B&O microcomputer. Then used a BC549 to separate the circuit from the Raspberry. My suspicion was I could pull down the 3v3 directly, but went for this way to achieve some security.
 


