# OpenSCAD Portfolio
Parametric 3D Design

### about me
I specialize in **parametric 3D modeling using OpenSCAD**.  
I design **functional, technical models** mainly for **FDM 3D printing**, electronics, and enclosures.

Working with code instead of GUI tools gives me full control over geometry, easy customization, and fast adaptation to specific requirements.

---

### technologies
- OpenSCAD  
- 3D Printing (PLA, PETG)  
- Raspberry Pi / ESP32  
- Basic electronics and mechanics  

---

### why openscad?
- 100% control over geometry (code-based design)
- Fully **parametric** models
- Easy customization for clients
- Perfect for version control (Git)
- Scalable and reproducible designs

---

### skills
- Parametric modeling (variables, functions, modules)
- Designing for 3D printing tolerances
- Enclosures for PCB, Arduino, Raspberry Pi
- Technical and functional parts
- Strength and print-time optimization
- STL export for production

---

### selected projects

#### parametric electronics enclosure
**Technologies:** OpenSCAD, 3D printing  
- Adjustable dimensions (PCB size, height, wall thickness)
- Automatically generated connector cutouts
- Easy adaptation for different boards

---

#### functional 3d printed parts
- Mounts and holders
- Adapters
- Structural components
- Custom replacement parts

Each model is:
- optimized for FDM printing  
- tested in real-world use  

---

### code style example
Example of parametric repetition and edge smoothing using Minkowski sum:

```scad
for (i = [0:19]) {
    translate([-4 + (i * 5), -1, 10])
        minkowski() {
            cube([1, 62, 4], center = false);
            cylinder(h = 1, r = 1);
        }
}
