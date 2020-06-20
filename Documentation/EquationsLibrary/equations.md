# Auto Math Handbook Equations (App Documentation)

## Raw Equation Strings

#### All equations are stored as raw strings in individual dart files. The raw Strings contain a combination of HTML and LaTeX code (the equations are represented as LaTeX code).

**chapter01.dart**
```Java
String chapter01TeX = r"""
    <B>1) Cylinder Volume</B><BR><BR>

    \begin{gather*}
        Cylinder{\hspace{1mm}}Volume = \frac{\pi}{4}*(Bore)^2*(Stroke)\\
    \end{gather*}
    
    \begin{array}
        \text{\textbf{Where:}}\\
        \text{Bore is in "Inches"}\\
        \text{Stroke is in "Inches"}\\
        \text{Cylinder Volume is in "Cubic Inches" or "c.c."}\\
    \end{array}
<BR>
    <B>2) Engine Displacement</B><BR><BR>

    \begin{gather*}
        Engine{\hspace{1mm}}Displacement = \frac{\pi}{4}*(Bore)^2*(Stroke)*(Number{\hspace{1mm}}of{\hspace{1mm}}Cylinders)\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{Engine Displacement is in "Cubic Inches" or "c.c."}\\
        \text{Bore is in "Inches"}\\
        \text{Stroke is in "Inches"}\\
    \end{array}
<BR>
    <B>3) Stroke</B><BR><BR>

    \begin{gather*}
        Stroke = \frac{Engine{\hspace{1mm}}Displacement}{\frac{\pi}{4}*(Bore)^2(Number{\hspace{1mm}}of{\hspace{1mm}}Cylinders)}\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{Stroke is in "Inches"}\\
        \text{Bore is in "Inches"}\\
        \text{Engine Displacement is in "Cubic Inches" or "c.c."}\\
    \end{array}
<BR>
    <B>4) Bore</B><BR><BR>

    \begin{gather*}
        Bore = \sqrt{\frac{Engine{\hspace{1mm}}Displacement}{\frac{\pi}{4}*(Stroke)*(Number{\hspace{1mm}}of{\hspace{1mm}}Cylinders)}}\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{Bore is in "Inches"}\\
        \text{Engine Displacement is in "Cubic Inches" or "c.c."}\\
        \text{Stroke is in "Inches"}\\
    \end{array}
""";
```

**chapter02.dart**
```Java
String chapter02TeX = r"""
    <B>1) Compression Ratio</B><BR><BR>

    \begin{gather*}
        Compression{\hspace{1mm}}Ratio = \frac{Cylinder{\hspace{1mm}}Volume+Total{\hspace{1mm}}Chamber{\hspace{1mm}}Volume}{Total{\hspace{1mm}}Chamber{\hspace{1mm}}Volume}\\
    \end{gather*}
    
    \begin{array}
        \text{\textbf{Where:}}\\
        \text{Cylinder Volume is in "c.c."}\\
        \text{Total Chamber Volume is in "c.c."}\\
    \end{array}
<BR>
    <B>2) Chamber Volume</B><BR><BR>

    \begin{gather*}
        Chamber{\hspace{1mm}}Volume = \frac{Cylinder{\hspace{1mm}Volume}}{Compression{\hspace{1mm}}Ratio-1}\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{Chamber Volume is in "c.c."}\\
        \text{Cylinder Volume is in "c.c."}\\
    \end{array}
<BR>
    <B>3) Gasket Volume</B><BR><BR>

    \begin{gather*}
        Gasket{\hspace{1mm}}Volume = \frac{\pi}{4}*(Bore)^2*(Gasket{\hspace{1mm}}Thickness)\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{Gasket Volume is in "Cubic Inches" or "c.c."}\\
        \text{Bore is in "Inches"}\\
        \text{Gasket Thickness is in "Inches"}\\
    \end{array}
<BR>
    <B>4) Total Chamber Volume</B><BR><BR>

    \begin{gather*}
        Total{\hspace{1mm}}Chamber{\hspace{1mm}}Volume = Chamber{\hspace{1mm}}Volume+Gasket{\hspace{1mm}}Volume\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{Total Chamber Volume is in "c.c." or "Cubic Inches"}\\
        \text{Gasket Volume is in "c.c."}\\
        \text{Chamber Volume is in "c.c."}\\
    \end{array}
<BR>
    <B>5) Displacement Ratio (Method 1)</B><BR><BR>

    \begin{gather*}
        Displacement{\hspace{1mm}}Ratio = \frac{Cylinder{1mm}Volume}{Chamber{1mm}Volume}\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{Cylinder Volume is in "c.c."}\\
        \text{Chamber Volume is in "c.c."}\\
    \end{array}
<BR>
    <B>6) Displacement Ratio (Method 2)</B><BR><BR>

    \begin{gather*}
        Displacement{\hspace{1mm}}Ratio = Compression{\hspace{1mm}}Ratio-1\\
    \end{gather*}
<BR>
    <B>7) Amount to Mill</B><BR><BR>

    \begin{gather*}
        Amount{\hspace{1mm}}to{\hspace{1mm}}Mill = \Bigg(\frac{New{\hspace{1mm}}Displacement{\hspace{1mm}}Ratio-Old{\hspace{1mm}}Displacement{\hspace{1mm}}Ratio}{New{\hspace{1mm}}Displacement{\hspace{1mm}}Ratio*Old{\hspace{1mm}}Displacement{\hspace{1mm}}Ratio}\Bigg)*Stroke\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{Amount to Mill is in "Inches"}\\
        \text{Stroke is in "Inches" or "Centimeters" or "Millimeters"}\\
    \end{array}
""";
```

**chapter03.dart**
```Java
String chapter03TeX = r"""

    <B>1) Piston Speed</B><BR><BR>

    \begin{gather*}
        Piston{\hspace{1mm}}Speed = \frac{Stroke*Engine{\hspace{1mm}}Speed}{6}\\
    \end{gather*}
    
    \begin{array}
        \text{\textbf{Where:}}\\
        \text{Piston Speed is in "Feet per Minute"}\\
        \text{Stroke is in "Inches"}\\
        \text{Engine Speed is in "RPM"}\\
    \end{array}
<BR>
    <B>2) Engine Speed or Rev Limit</B><BR><BR>

    \begin{gather*}
        Engine{\hspace{1mm}}Speed{\hspace{1mm}}or{\hspace{1mm}}Rev{\hspace{1mm}}Limit = \frac{Piston{\hspace{1mm}}Speed*6}{Stroke}\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{Engine Speed is in "RPM"}\\
        \text{Piston Speed is in "Feet per Minute"}\\
        \text{Stroke is in "Inches"}\\
    \end{array}
""";
```

**chapter04.dart**
```Java
String chapter04TeX = r"""

    <B>1) Engine Power</B><BR><BR>

    \begin{gather*}
        Engine{\hspace{1mm}}Power = \frac{Engine{\hspace{1mm}}Speed*Engine{\hspace{1mm}}Torque}{5252}\\
    \end{gather*}
    
    \begin{array}
        \text{\textbf{Where:}}\\
        \text{Engine Power is in "Brake Horsepower"}\\
        \text{Engine Speed is in "RPM"}\\
        \text{Engine Torque is in "Pounds-Feet"}\\
    \end{array}
<BR>
    <B>2) Engine Torque</B><BR><BR>

    \begin{gather*}
        Engine{\hspace{1mm}}Torque = \frac{5252*Engine{\hspace{1mm}}Power}{Engine{\hspace{1mm}}Speed}\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{Engine Torque is in "Pounds-Feet"}\\
        \text{Engine Power is in "Brake Horsepower"}\\
        \text{Engine Speed is in "RPM"}\\
    \end{array}
<BR>
    <B>3) BSFC</B><BR><BR>

    \begin{gather*}
        BSFC = \frac{Fuel{\hspace{1mm}}Flow{\hspace{1mm}}Rate}{Engine{\hspace{1mm}}Speed}\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{BSFC is Brake Specific Fuel Consumption}\\
        \text{Fuel Flow Rate is in "Pounds per Hour"}\\
        \text{Engine Power is in "Brake Horsepower"}\\
    \end{array}
<BR>
    <B>4) Engine Power Loss</B><BR><BR>

    \begin{gather*}
        Engine{\hspace{1mm}}Power{\hspace{1mm}}Loss = \Big(\frac{Elevation}{1000}\Big)*0.03*(Engine{\hspace{1mm}}Power{\hspace{1mm}}at{\hspace{1mm}}Sea{\hspace{1mm}}Level)\\
    \end{gather*}

    \begin{array}
    \text{\textbf{Where:}}\\
        \text{Engine Power Loss (Naturally Aspirated engine) is in "Brake Horsepower"}\\
        \text{Elevation is in "Feet"}\\
        \text{Engine Power at Sea Level is in "Brake Horsepower"}\\
    \end{array}
<BR>
    <B>5) Correction Factor</B><BR><BR>

    \begin{gather*}
        Atmospheric{\hspace{1mm}}Correction{\hspace{1mm}}Factor = \frac{29.92}{(T_{p}-V_{p})*\Bigg(\sqrt{\frac{IAT+460}{520}}\Bigg)}\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{$T_{p}$ = Test Pressure in "Inches in Mercury"}\\
        \text{$V_{p}$ = Vapor Pressure in "Inches in Mercury"}\\
        \text{$IAT$ = Inlet Air Temperature in "Farenheit"}\\
    \end{array}
<BR>
    <B>6) Actual Engine Power</B><BR><BR>

    \begin{gather*}
        Actual{\hspace{1mm}}Engine{\hspace{1mm}}Power = Engine{\hspace{1mm}}Power*Atmospheric{\hspace{1mm}}Correction{\hspace{1mm}}Factor\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{Actual Engine Power is in "Brake Horsepower"}\\
        \text{Engine Power is in "Brake Horsepower"}\\
    \end{array}
""";
```

**chapter05.dart**
```Java
String chapter05TeX = r"""

    <B>1) Indicated Horsepower</B><BR><BR>

    \begin{gather*}
        Indicated{\hspace{1mm}}Horsepower = \frac{IMEP*Engine{\hspace{1mm}}Displacement*Engine{\hspace{1mm}}Speed}{792,000}\\
    \end{gather*}
    
    \begin{array}
        \text{\textbf{Where:}}\\
        \text{$IMEP$ = Indicated Mean Effective Pressure in "psi"}\\
        \text{Engine Displacement is in "Cubic Inches"}\\
        \text{Engine Speed is in "RPM"}\\
    \end{array}
<BR>
    <B>2) Brake Horsepower</B><BR><BR>

    \begin{gather*}
        Brake{\hspace{1mm}}Horsepower = \frac{BMEP*Engine{\hspace{1mm}}Displacement*Engine{\hspace{1mm}}Speed}{792,000}\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{$BMEP$ = Brake Mean Effective Pressure in "psi"}\\
        \text{Engine Displacement is in "Cubic Inches"}\\
        \text{Engine Speed is in "RPM"}\\
    \end{array}
<BR>
    <B>3) Indicated Torque</B><BR><BR>

    \begin{gather*}
        Indicated{\hspace{1mm}}Torque = \frac{IMEP*Engine{\hspace{1mm}}Displacement}{150.8}\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{Indicated Torque is in "Pounds-Feet"}\\
        \text{$IMEP$ = Indicated Mean Effective Pressure in "psi"}\\
        \text{Engine Displacement is in "Cubic Inches"}\\
    \end{array}
<BR>
    <B>4) Brake Torque</B><BR><BR>

    \begin{gather*}
        Brake{\hspace{1mm}}Torque = \frac{BMEP*Engine{\hspace{1mm}}Displacement}{150.8}\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{Brake Torque is in "Pounds-Feet"}\\
        \text{$BMEP$ = Brake Mean Effective Pressure in "psi"}\\
        \text{Engine Displacement is in "Cubic Inches"}\\
    \end{array}
<BR>
    <B>5) Brake Mean Effective Pressure (from Engine Power)</B><BR><BR>

    \begin{gather*}
        BMEP = \frac{Engine{\hspace{1mm}}Power*792,000}{Engine{\hspace{1mm}}Displacement*Engine{\hspace{1mm}}Speed}\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{$BMEP$ = Brake Mean Effective Pressure in "psi"}\\
        \text{Engine Power is in "BHP"}\\
        \text{Engine Displacement is in "Cubic Inches"}\\
        \text{Engine Speed is in "RPM"}\\
    \end{array}
<BR>
    <B>6) Brake Mean Effective Pressure (from Engine Torque)</B><BR><BR>

    \begin{gather*}
        BMEP = \frac{Engine{\hspace{1mm}}Torque*150.8}{Engine{\hspace{1mm}}Displacement}\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{$BMEP$ = Brake Mean Effective Pressure in "psi"}\\
        \text{Engine Torque is in "Pounds-Feet"}\\
        \text{Engine Displacement is in "Cubic Inches"}\\
    \end{array}
<BR>
    <B>7) Mechanical Efficiency (from Engine Power)</B><BR><BR>

    \begin{gather*}
        Mechanical{\hspace{1mm}}Efficiency = \Bigg(\frac{Output{\hspace{1mm}}BHP}{Output{\hspace{1mm}}IHP}\Bigg)*100\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{$IHP$ = Indicated Horsepower}\\
        \text{$BHP$ = Brake Horsepower}\\
    \end{array}
<BR>
    <B>8) Mechanical Efficiency (from Engine Torque)</B><BR><BR>

    \begin{gather*}
        Mechanical{\hspace{1mm}}Efficiency = \Bigg(\frac{Output{\hspace{1mm}}Brake{\hspace{1mm}}Torque}{Output{\hspace{1mm}}Indicated{\hspace{1mm}}Torque}\Bigg)*100\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{Output Brake Torque is in "Pounds-Feet"}\\
        \text{Output Indicated Torque is in "Pounds-Feet"}\\
    \end{array}
""";
```

**chapter06.dart**
```Java
String chapter06TeX = r"""

    <B>1) Theoretical Air Capacity</B><BR><BR>

    \begin{gather*}
        Theoretical{\hspace{1mm}}Air{\hspace{1mm}}Capacity = \frac{Engine{\hspace{1mm}}Speed*Engine{\hspace{1mm}}Displacement}{3456}\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{Theoretical Air Capacity is in "Cubic Feet per Minute"}\\
        \text{Engine Displacement is in "Cubic Inches"}\\
        \text{Engine Speed is in "RPM"}\\
    \end{array}
<BR>
    <B>2) Volumetric Efficiency</B><BR><BR>

    \begin{gather*}
        Volumetric{\hspace{1mm}}Efficiency = \Bigg(\frac{Actual{\hspace{1mm}}Air{\hspace{1mm}}Capacity}{Theoretical{\hspace{1mm}}Air{\hspace{1mm}}Capacity}\Bigg)*100\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{Theoretical Air Capacity is in "Cubic Feet per Minute"}\\
        \text{Actual Air Capacity is in "Cubic Feet per Minute"}\\
    \end{array}
<BR>
    <B>3) Street Carb Air Capacity</B><BR><BR>

    \begin{gather*}
        Street{\hspace{1mm}}Carb{\hspace{1mm}}Air{\hspace{1mm}}Capacity = \Bigg(\frac{Engine{\hspace{1mm}}Speed*Engine{\hspace{1mm}}Displacement}{3456}\Bigg)*0.85\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{Street Carb Air Capacity is in "Cubic Feet per Minute"}\\
        \text{Engine Displacement is in "Cubic Inches"}\\
        \text{Engine Speed is in "RPM"}\\
    \end{array}
<BR>
    <B>4) Racing Carb Air Capacity</B><BR><BR>

    \begin{gather*}
        Racing{\hspace{1mm}}Carb{\hspace{1mm}}Air{\hspace{1mm}}Capacity = \Bigg(\frac{Engine{\hspace{1mm}}Speed*Engine{\hspace{1mm}}Displacement}{3456}\Bigg)*1.1\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{Racing Carb Air Capacity is in "Cubic Feet per Minute"}\\
        \text{Engine Displacement is in "Cubic Inches"}\\
        \text{Engine Speed is in "RPM"}\\
    \end{array}
""";
```

**chapter07.dart**
```Java
String chapter07TeX = r"""

    <B>1) Percent of Weight on Wheels</B><BR><BR>

    \begin{gather*}
        Percent{\hspace{1mm}}of{\hspace{1mm}}Weight{\hspace{1mm}}on{\hspace{1mm}}Wheels = \Bigg(\frac{Weight{\hspace{1mm}}on{\hspace{1mm}}Wheels}{Vehicle{\hspace{1mm}}Weight}\Bigg)*100\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{Weight on Wheels is in "Pounds"}\\
        \text{Vehicle Weight is in "Pounds"}\\
    \end{array}
<BR>
    <B>2) Increased Weight on Wheels</B><BR><BR>

    \begin{gather*}
        Increased{\hspace{1mm}}Weight{\hspace{1mm}}on{\hspace{1mm}}Wheels = \Bigg[\Bigg(\frac{Distance{\hspace{1mm}}of{\hspace{1mm}}CG{\hspace{1mm}}from{\hspace{1mm}}Wheels}{Wheelbase}\Bigg)*Vehicle{\hspace{1mm}}Weight\Bigg]+Vehicle{\hspace{1mm}}Weight\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{Increased Weight on Wheels is in "Pounds"}\\
        \text{Distance of CG from wheels is in "Inches"}\\
        \text{Wheelbase is in "Inches"}\\
        \text{Vehicle Weight is in "Pounds"}\\
    \end{array}
""";
```

**chapter08.dart**
```Java
String chapter08TeX = r"""

    <B>1) CG Location behind Front Wheels</B><BR><BR>

    \begin{gather*}
        CG{\hspace{1mm}}Location{\hspace{1mm}}behind{\hspace{1mm}}Front{\hspace{1mm}}Wheels = \Bigg(\frac{Weight{\hspace{1mm}}on{\hspace{1mm}}Rear{\hspace{1mm}}Wheels}{Vehicle{\hspace{1mm}}Weight}\Bigg)*Wheelbase\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{CG Location behind Front Wheels is in "Inches"}\\
        \text{Weight on Rear Wheels is in "Pounds"}\\
        \text{Vehicle Weight is in "Pounds"}\\
        \text{Wheelbase is in "Inches"}\\
    \end{array}
<BR>
    <B>2) CG Location Off-center to Heavy Side</B><BR><BR>

    \begin{gather*}
        CG{\hspace{1mm}}Location{\hspace{1mm}}Off center{\hspace{1mm}}to{\hspace{1mm}}Heavy{\hspace{1mm}}Side = \Bigg(\frac{Average{\hspace{1mm}}Track}{2}\Bigg)-\Bigg(\frac{Weight{\hspace{1mm}}on{\hspace{1mm}}Light{\hspace{1mm}}Side}{Vehicle{\hspace{1mm}}Weight}*Average{\hspace{1mm}}Track\Bigg)\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{CG Location Off center to Heavy Side is in "Inches"}\\
        \text{$Average{\hspace{1mm}}Track$ = Average of the vehicle's front and rear track in "Inches"}\\
        \text{Weight on Light Side is in "Pounds"}\\
        \text{Vehicle Weight is in "Pounds"}\\
    \end{array}
<BR>
    <B>3) CG Height</B><BR><BR>

    \begin{gather*}
        CG{\hspace{1mm}}Height = \frac{Level{\hspace{1mm}}Wheelbase*Raised{\hspace{1mm}}Wheelbase*Added{\hspace{1mm}}Weight{\hspace{1mm}}on{\hspace{1mm}}Scales}{Distance{\hspace{1mm}}Raised*Vehicle{\hspace{1mm}}Weight}\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{CG Height is in "Inches"}\\
        \text{$Level{\hspace{1mm}}Wheelbase$ = Wheelbase of the vehicle on level ground in "Inches"}\\
        \text{$Raised{\hspace{1mm}}Wheelbase$ = Wheelbase of the vehicle when it is raised by}\\
        \text{$\hspace{5cm}$ a certain distance, in "Inches"}\\
        \text{Added Weight on Scales is in "Pounds"}\\
        \text{Distance Raised is in "Inches"}\\
        \text{Vehicle Weight is in "Pounds"}\\
    \end{array}
""";
```

**chapter09.dart**
```Java
String chapter09TeX = r"""

    <B>1) Drive Wheel Torque</B><BR><BR>

    \begin{gather*}
        Drive{\hspace{1mm}}Wheel{\hspace{1mm}}Torque = (Flywheel{\hspace{1mm}}Torque*Gear{\hspace{1mm}}Ratio*Final{\hspace{1mm}}Drive{\hspace{1mm}}Ratio)*Transmission{\hspace{1mm}}Efficiency\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{Flywheel Torque is in "Pounds-Feet"}\\
        \text{Drive Wheel Torque is in "Pounds-Feet"}\\
    \end{array}
<BR>
    <B>2) Wheel Force</B><BR><BR>

    \begin{gather*}
        Wheel{\hspace{1mm}}Thrust{\hspace{1mm}}or{\hspace{1mm}}Force = \frac{Drive{\hspace{1mm}}Wheel{\hspace{1mm}}Torque}{Tire{\hspace{1mm}}Radius}\\
    \end{gather*}

    \begin{array}
    \text{\textbf{Where:}}\\
        \text{Wheel Thrust or Force is in "Pounds"}\\
        \text{Drive Wheel Torque is in "Pounds-Feet"}\\
        \text{Tire Radius is in "Feet"}\\
    \end{array}
<BR>
    <B>3) g-Force</B><BR><BR>

    \begin{gather*}
        g{\hspace{1mm}}Force = \frac{Wheel{\hspace{1mm}}Force}{Vehicle{\hspace{1mm}}Weight}\\
    \end{gather*}

    \begin{array}
    \text{\textbf{Where:}}\\
        \text{g Force is in "g's"}\\
        \text{Wheel Force is in "Pounds"}\\
        \text{Vehicle Weight is in "Pounds"}\\
    \end{array}
<BR>
    <B>4) Weight Transfer</B><BR><BR>

    \begin{gather*}
        Weight{\hspace{1mm}}Transfer = \frac{Vehicle{\hspace{1mm}}Weight*CG{\hspace{1mm}}Height}{Wheelbase}*g\hspace{1mm}Force\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{Weight Transfer is in "Pounds"}\\
        \text{Vehicle Weight is in "Pounds"}\\
        \text{CG Height is in "Inches"}\\
        \text{Wheelbase is in "Inches"}\\
        \text{g Force is in "g's"}\\
    \end{array}
<BR>
    <B>5) Lateral Acceleration</B><BR><BR>

    \begin{gather*}
        Lateral{\hspace{1mm}}Acceleration = \frac{1.227*Skid{\hspace{1mm}}Pad{\hspace{1mm}}Radius}{Time^2}\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{Lateral Acceleration is in "g's"}\\
        \text{Skid Pad Radius is in "Feet"}\\
        \text{Time is in "Seconds"}\\
    \end{array}
<BR>
    <B>6) Lateral Weight Transfer</B><BR><BR>

    \begin{gather*}
        Lateral{\hspace{1mm}}Weight{\hspace{1mm}}Transfer = \Bigg(\frac{Vehicle{\hspace{1mm}}Weight*CG{\hspace{1mm}}Height}{Average{\hspace{1mm}}Wheel{\hspace{1mm}}Track}\Bigg)*Lateral{\hspace{1mm}}Acceleration\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{Lateral Weight Transfer is in "Pounds"}\\
        \text{Vehicle Weight is in "Pounds"}\\
        \text{CG Height is in "Inches"}\\
        \text{Average Wheel Track is in "Inches"}\\
        \text{Lateral Acceleration is in "g's"}\\
    \end{array}
<BR>
    <B>7) Centrifugal Force</B><BR><BR>

    \begin{gather*}
        Centrifugal{\hspace{1mm}}Force = Vehicle{\hspace{1mm}}Weight*Lateral{\hspace{1mm}}Acceleration\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{Centrifugal Force is in "Pounds"}\\
        \text{Vehicle Weight is in "Pounds"}\\
        \text{Lateral Acceleration is in "g's"}\\
    \end{array}
""";
```

**chapter10.dart**
```Java
String chapter10TeX = r"""

    <B>1) Vehicle Inertia</B><BR><BR>

    \begin{gather*}
        I = \frac{6.098*Vehicle{\hspace{1mm}}Weight}{\Big(\frac{Driveshaft{\hspace{1mm}}RPM}{Vehicle{\hspace{1mm}}Speed}\Big)^2}\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{$I$ = Vehicle Inertia is in "Slug-Feet"}\\
        \text{Vehicle Weight is in "Pounds"}\\
        \text{Vehicle Speed is in "MPH"}\\
    \end{array}
<BR>
    <B>Steps to calculate Driveshaft RPM</B><BR><BR>
<P>
a) Find circumference of Tire<BR>
b) Find Number of Tire Revolutions per Mile<BR>
c) Find Number of Driveshaft Revolutions per Mile<BR>
d) Find Number of Driveshaft Revolutions per Hour<BR>
e) Find Number of Driveshaft Revolutions per Minute<BR>
</P>
<BR><BR>
    <B>a) Circumference of Tire</B><BR><BR>

    \begin{gather*}
        Tire{\hspace{1mm}}Circumference = \frac{(\pi*Tire{\hspace{1mm}}Diameter)}{12}\\
    \end{gather*}

    \begin{array}
    \text{\textbf{Where:}}\\
        \text{Tire Circumference is in "Feet"}\\
        \text{Tire Diameter is in "Inches"}\\
    \end{array}
<BR>
    <B>b) Number of Tire Revolutions per Mile</B><BR><BR>

    \begin{gather*}
        Tire{\hspace{1mm}}Revolutions{\hspace{1mm}}Per{\hspace{1mm}}Mile = \frac{5280}{Tire{\hspace{1mm}}Circumference}\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{Tire Circumference is in "Feet"}\\
    \end{array}
<BR>
    <B>c) Number of Driveshaft Revolutions per Mile</B><BR><BR>

    \begin{gather*}
        Driveshaft{\hspace{1mm}}Revolutions{\hspace{1mm}}Per{\hspace{1mm}}Mile = Tire{\hspace{1mm}}Revolutions{\hspace{1mm}}Per{\hspace{1mm}}Mile*Final{\hspace{1mm}}Drive{\hspace{1mm}}Ratio\\
    \end{gather*}
<BR>
    <B>d) Number of Driveshaft Revolutions per Hour</B><BR><BR>

    \begin{gather*}
        Driveshaft{\hspace{1mm}}Revolutions{\hspace{1mm}}Per{\hspace{1mm}}Hour = Vehicle{\hspace{1mm}}Speed*Driveshaft{\hspace{1mm}}Revolutions{\hspace{1mm}}Per{\hspace{1mm}}Mile\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{Vehicle Speed is in "MPH"}\\
    \end{array}
<BR>
    <B>e) Number of Driveshaft Revolutions per Minute</B><BR><BR>

    \begin{gather*}
        Driveshaft{\hspace{1mm}}Revolutions{\hspace{1mm}}Per{\hspace{1mm}}Minute = \frac{Driveshaft{\hspace{1mm}}Revolutions{\hspace{1mm}}Per{\hspace{1mm}}Hour}{60}\\
    \end{gather*}
<BR>
    <B>2) Moment of Inertia of a Flat Disc</B><BR><BR>

    \begin{gather*}
        J_{0} = \frac{1}{2}MR^2\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{$J_{0}$ = Moment of Inertia of the Disc in "Slug-Feet"}\\
        \text{$M$ = Mass of the Disc in "Pounds"}\\
        \text{$R$ = Radius of the Disc in "Inches"}\\
    \end{array}
""";
```

**chapter11.dart**
```Java
String chapter11TeX = r"""

    <B>1) Aerodynamic Resistance</B><BR><BR>

    \begin{gather*}
        R = A_{f}*0.0025*V^2\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{$R$ = Aerodynamic Resistance is in "Pounds-Force"}\\
        \text{$A_{f}$ = Frontal Area is in "Square-Feet"}\\
        \text{$V$ = Vehicle Speed is in "MPH"}\\
    \end{array}
<BR>
    <B>2) Required Engine Power</B><BR><BR>

    \begin{gather*}
        Required{\hspace{1mm}}Engine{\hspace{1mm}}Power = \frac{V^3*A_{f}}{150,000}\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{Required Engine Power is in "BHP"}\\
        \text{$A_{f}$ = Frontal Area is in "Square-Feet"}\\
        \text{$V$ = Vehicle Speed is in "MPH"}\\
    \end{array}
<BR>
    <B>3) Frontal Area</B><BR><BR>

    \begin{gather*}
        A_{f} = \frac{W*H}{144}*0.8\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{$A_{f}$ = Frontal Area is in "Square-Feet"}\\
        \text{$W$ = Vehicle Width in "Inches"}\\
        \text{$H$ = Vehicle Height in "Inches"}\\
    \end{array}
<BR>
    <B>4) Vehicle Speed</B><BR><BR>

    \begin{gather*}
        Vehicle{\hspace{1mm}}Speed = \sqrt[3]{\frac{150,000*Engine{\hspace{1mm}}Power}{Frontal{\hspace{1mm}}Area}}\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{$A_{f}$ = Frontal Area is in "Square-Feet"}\\
        \text{$W$ = Vehicle Width in "Inches"}\\
        \text{$H$ = Vehicle Height in "Inches"}\\
    \end{array}
<BR>
    <B>5) Ram Air Pressure</B><BR><BR>

    \begin{gather*}
        R_{air} = \frac{V^2}{56,725}\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{$R_{air}$ = Ram Air Pressure is in "psi"}\\
        \text{$V$ = Vehicle Speed in "MPH"}\\
    \end{array}
""";
```

**chapter13.dart**
```Java
String chapter13TeX = r"""

    <B>1) Engine Speed After Shift</B><BR><BR>

    \begin{gather*}
        Engine{\hspace{1mm}}Speed{\hspace{1mm}}After{\hspace{1mm}}Shift = \Bigg(\frac{Ratio{\hspace{1mm}}Shift{\hspace{1mm}}Into}{Ratio{\hspace{1mm}}Shift{\hspace{1mm}}From}\Bigg)*Engine{\hspace{1mm}}Speed{\hspace{1mm}}Before{\hspace{1mm}}Shift\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{Engine Speed After Shift is in "RPM"}\\
        \text{Engine Speed Before Shift is in "RPM"}\\
    \end{array}
<BR>
    <B>2) Driveshaft Torque</B><BR><BR>

    \begin{gather*}
        Driveshaft{\hspace{1mm}}Torque = Flywheel{\hspace{1mm}}Torque*Overall{\hspace{1mm}}Transmission{\hspace{1mm}}Ratio\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{Flywheel Torque is in "Pounds-Feet"}\\
        \text{Driveshaft Torque is in "Pounds-Feet"}\\
    \end{array}
""";
```

**chapter14.dart**
```Java
String chapter14TeX = r"""

    <B>1) Elapsed Time</B><BR><BR>

    \begin{gather*}
        E.T. = \Bigg(\sqrt[3]{\frac{Vehicle{\hspace{1mm}}Weight}{Engine{\hspace{1mm}}Power}}\Bigg)*5.825\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{$E.T.$ = Quarter Mile Elapsed Time is in "Seconds"}\\
        \text{Vehicle Weight is in "Pounds"}\\
        \text{Engine Power is in "BHP"}\\
    \end{array}
<BR>
    <B>2) Engine Power (Method 1)</B><BR><BR>

    \begin{gather*}
        Engine{\hspace{1mm}}Power = \frac{Vehicle{\hspace{1mm}}Weight}{\Big(\frac{E.T.}{5.825}\Big)^3}\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{Engine Power is in "BHP"}\\
        \text{Vehicle Weight is in "Pounds"}\\
        \text{$E.T.$ = Quarter Mile Elapsed Time is in "Seconds"}\\
    \end{array}
<BR>
    <B>3) Engine Power (Method 2)</B><BR><BR>

    \begin{gather*}
        Engine{\hspace{1mm}}Power = \Bigg(\frac{Vehicle{\hspace{1mm}}Speed}{234}\Bigg)^3*Vehicle{\hspace{1mm}}Weight\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{Engine Power is in "BHP"}\\
        \text{Vehicle Speed is in "MPH"}\\
        \text{Vehicle Weight is in "Pounds"}\\
    \end{array}
<BR>
    <B>4) Vehicle Weight (Method 1)</B><BR><BR>

    \begin{gather*}
        Vehicle{\hspace{1mm}}Weight = \Bigg(\frac{E.T.}{5.825}\Bigg)^3*Engine{\hspace{1mm}}Power\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{Vehicle Weight is in "Pounds"}\\
        \text{$E.T.$ = Quarter Mile Elapsed Time is in "Seconds"}\\
        \text{Engine Power is in "BHP"}\\
    \end{array}
<BR>
    <B>5) Vehicle Weight (Method 2)</B><BR><BR>

    \begin{gather*}
        Vehicle{\hspace{1mm}}Weight = \Bigg(\frac{234}{Vehicle{\hspace{1mm}}Speed}\Bigg)^3*Engine{\hspace{1mm}}Power\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{Vehicle Weight is in "Pounds"}\\
        \text{Vehicle Speed is in "MPH"}\\
        \text{Engine Power is in "BHP"}\\
    \end{array}
<BR>
    <B>6) Vehicle Speed</B><BR><BR>

    \begin{gather*}
        Vehicle{\hspace{1mm}}Speed = \Bigg(\sqrt[3]{\frac{Engine{\hspace{1mm}}Power}{Vehicle{\hspace{1mm}}Weight}}\Bigg)*234\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{Vehicle Speed is in "MPH"}\\
        \text{Engine Power is in "BHP"}\\
        \text{Vehicle Weight is in "Pounds"}\\
    \end{array}
<BR>
    <B>7) Overall Gear Ratio - Manual Transmission</B><BR><BR>

    \begin{gather*}
        Overall{\hspace{1mm}}Gear{\hspace{1mm}}Ratio = \Bigg(\frac{Tire{\hspace{1mm}}Diameter}{340}\Bigg)*\Bigg(\frac{Engine{\hspace{1mm}}Speed}{Vehicle{\hspace{1mm}}Speed}\Bigg)\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{Tire Diameter is in "Inches"}\\
        \text{Engine Speed is in "RPM"}\\
        \text{Vehicle Speed is in "MPH"}\\
    \end{array}
<BR>
    <B>8) Overall Gear Ratio - Automatic Transmission</B><BR><BR>

    \begin{gather*}
        Overall{\hspace{1mm}}Gear{\hspace{1mm}}Ratio = \Bigg(\frac{Tire{\hspace{1mm}}Diameter}{335}\Bigg)*\Bigg(\frac{Engine{\hspace{1mm}}Speed}{Vehicle{\hspace{1mm}}Speed}\Bigg)\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{Tire Diameter is in "Inches"}\\
        \text{Engine Speed is in "RPM"}\\
        \text{Vehicle Speed is in "MPH"}\\
    \end{array}
""";
```

**chapter16.dart**
```Java
String chapter16TeX = r"""

    <B>1) Actual Speed</B><BR><BR>

    \begin{gather*}
        Actual{\hspace{1mm}}Speed = \frac{3600}{Seconds{\hspace{1mm}}Per{\hspace{1mm}}Mile}\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{Actual Speed is in "MPH"}\\
    \end{array}
<BR>
    <B>2) Speedometer Error</B><BR><BR>

    \begin{gather*}
        Speedometer{\hspace{1mm}}Error{\hspace{1mm}}\% = \frac{Actual{\hspace{1mm}}Speed-Indicated{\hspace{1mm}}Speed}{Actual{\hspace{1mm}}Speed}*100\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{Actual Speed is in "MPH"}\\
        \text{Indicated Speed is in "MPH"}\\
    \end{array}
<BR>
    <B>3) Indicated Distance</B><BR><BR>

    \begin{gather*}
        Indicated{\hspace{1mm}}Distance = Odometer{\hspace{1mm}}Reading{\hspace{1mm}}at{\hspace{1mm}}Finish-Odometer{\hspace{1mm}}Reading{\hspace{1mm}}at{\hspace{1mm}}Start\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{Indicated Distance is in "Miles"}\\
        \text{Odometer Reading at Finish is in "Miles"}\\
        \text{Odometer Reading at Start is in "Miles"}\\
    \end{array}
<BR>
    <B>4) Odometer Error</B><BR><BR>

    \begin{gather*}
        Odometer{\hspace{1mm}}Error{\hspace{1mm}}\% = \frac{Actual{\hspace{1mm}}Distance-Indicated{\hspace{1mm}}Distance}{Actual{\hspace{1mm}}Distance}*100\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{Actual Distance is in "Miles"}\\
        \text{Indicated Distance is in "Miles"}\\
    \end{array}
""";
```

**chapter17.dart**
```Java
String chapter17TeX = r"""

    <B>1) Vehicle Speed</B><BR><BR>

    \begin{gather*}
        Vehicle{\hspace{1mm}}Speed = \frac{Engine{\hspace{1mm}}Speed*Tire{\hspace{1mm}}Diameter}{Overall{\hspace{1mm}}Transmission{\hspace{1mm}}Ratio*336}\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{Vehicle Speed is in "MPH"}\\
        \text{Engine Speed is in "RPM"}\\
        \text{Tire Diameter is in "Inches"}\\
    \end{array}
<BR>
    <B>2) Engine Speed</B><BR><BR>

    \begin{gather*}
        Engine{\hspace{1mm}}Speed = \frac{Vehicle{\hspace{1mm}}Speed*Gear{\hspace{1mm}}Ratio*336}{Tire{\hspace{1mm}}Diameter}\\
    \end{gather*}

    \begin{array}
    \text{\textbf{Where:}}\\
        \text{Engine Speed is in "RPM"}\\
        \text{Vehicle Speed is in "MPH"}\\
        \text{Tire Diameter is in "Inches"}\\
    \end{array}
<BR>
    <B>3) Overall Transmission Ratio</B><BR><BR>

    \begin{gather*}
        Overall{\hspace{1mm}}Transmission{\hspace{1mm}}Ratio = \frac{Engine{\hspace{1mm}}Speed*Tire{\hspace{1mm}}Diameter}{Vehicle{\hspace{1mm}}Speed*336}\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{Engine Speed is in "RPM"}\\
        \text{Tire Diameter is in "Inches"}\\
        \text{Vehicle Speed is in "MPH"}\\
    \end{array}
<BR>
    <B>4) Tire Diameter</B><BR><BR>

    \begin{gather*}
        Tire{\hspace{1mm}}Diameter = \frac{Vehicle{\hspace{1mm}}Speed*Overall{\hspace{1mm}}Transmission{\hspace{1mm}}Ratio*336}{Engine{\hspace{1mm}}Speed}\\
    \end{gather*}

    \begin{array}
    \text{\textbf{Where:}}\\
        \text{Vehicle Speed is in "MPH"}\\
        \text{Engine Speed is in "RPM"}\\
        \text{Tire Diameter is in "Inches"}\\
    \end{array}
""";
```

**chapter18.dart**
```Java
String chapter18TeX = r"""

    <B>1) Tire Diameter</B><BR><BR>

    \begin{gather*}
        Tire{\hspace{1mm}}Diameter = \Bigg[2*\Bigg(\frac{Section{\hspace{1mm}}Width*Aspect{\hspace{1mm}}Ratio}{2540}\Bigg)\Bigg]+Rim{\hspace{1mm}}Diameter\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{Tire Diameter is in "Inches"}\\
        \text{Section Width is in "Millimeters"}\\
        \text{Aspect Ratio is in "Percent/100"}\\
        \text{Rim Diameter is in "Inches"}\\
    \end{array}
<BR>
    <B>2) Effective Ratio</B><BR><BR>

    \begin{gather*}
        Effective{\hspace{1mm}}Ratio = \Bigg(\frac{Old{\hspace{1mm}}Tire{\hspace{1mm}}Diameter}{New{\hspace{1mm}}Tire{\hspace{1mm}}Diameter}\Bigg)*Original{\hspace{1mm}}Gear{\hspace{1mm}}Ratio\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{Old Tire Diameter is in "Inches"}\\
        \text{New Tire Diameter is in "Inches"}\\
    \end{array}
<BR>
    <B>3) Equivalent Ratio</B><BR><BR>

    \begin{gather*}
        Equivalent{\hspace{1mm}}Ratio = \Bigg(\frac{New{\hspace{1mm}}Tire{\hspace{1mm}}Diameter}{Old{\hspace{1mm}}Tire{\hspace{1mm}}Diameter}\Bigg)*Original{\hspace{1mm}}Gear{\hspace{1mm}}Ratio\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{New Tire Diameter is in "Inches"}\\
        \text{Old Tire Diameter is in "Inches"}\\
    \end{array}
<BR>
    <B>4) Actual Vehicle Speed</B><BR><BR>

    \begin{gather*}
        Actual{\hspace{1mm}}Vehicle{\hspace{1mm}}Speed = \Bigg(\frac{New{\hspace{1mm}}Tire{\hspace{1mm}}Diameter}{Old{\hspace{1mm}}Tire{\hspace{1mm}}Diameter}\Bigg)*Indicated{\hspace{1mm}}Vehicle{\hspace{1mm}}Speed\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{Actual Vehicle Speed is in "MPH"}\\
        \text{New Tire Diameter is in "Inches"}\\
        \text{Old Tire Diameter is in "Inches"}\\
        \text{Indicated Vehicle Speed is in "MPH"}\\
    \end{array}
<BR>
    <B>5) Indicated Vehicle Speed</B><BR><BR>

    \begin{gather*}
        Indicated{\hspace{1mm}}Vehicle{\hspace{1mm}}Speed = \Bigg(\frac{Old{\hspace{1mm}}Tire{\hspace{1mm}}Diameter}{New{\hspace{1mm}}Tire{\hspace{1mm}}Diameter}\Bigg)*Actual{\hspace{1mm}}Vehicle{\hspace{1mm}}Speed\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{Indicated Vehicle Speed is in "MPH"}\\
        \text{New Tire Diameter is in "Inches"}\\
        \text{Old Tire Diameter is in "Inches"}\\
        \text{Actual Vehicle Speed is in "MPH"}\\
    \end{array}
""";
```

**chapter19.dart**
```Java
String chapter19TeX = r"""

    <B>1) Miles Per Gallon</B><BR><BR>

    \begin{gather*}
        Miles{\hspace{1mm}}Per{\hspace{1mm}}Gallon = \frac{Miles}{Fuel{\hspace{1mm}}Used}\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{Fuel Used is in "Gallons"}\\
    \end{array}
<BR>
    <B>2) Miles Covered (Method 1)</B><BR><BR>

    \begin{gather*}
        Miles{\hspace{1mm}}Covered = Miles{\hspace{1mm}}Per{\hspace{1mm}}Gallon*Fuel{\hspace{1mm}}Tank{\hspace{1mm}}Capacity\\
    \end{gather*}

    \begin{array}
    \text{\textbf{Where:}}\\
    \text{Fuel Tank Capacity is in "Gallons"}\\
    \end{array}
<BR>
    <B>3) Miles Covered (Method 2)</B><BR><BR>

    \begin{gather*}
        Miles{\hspace{1mm}}Covered = Average{\hspace{1mm}}Speed*Time{\hspace{1mm}}Taken\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{Average Speed is in "MPH"}\\
        \text{Time Taken is in "Hours"}\\
    \end{array}
<BR>
    <B>4) Fuel Used</B><BR><BR>

    \begin{gather*}
        Fuel{\hspace{1mm}}Used = \frac{Miles{\hspace{1mm}}Covered}{Miles{\hspace{1mm}}Per{\hspace{1mm}}Gallon}\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{Fuel Used is in "Gallons"}\\
    \end{array}
<BR>
    <B>5) Average Speed</B><BR><BR>

    \begin{gather*}
        Average{\hspace{1mm}}Speed = \frac{Miles{\hspace{1mm}}Covered}{Hours{\hspace{1mm}}Taken}\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{Average Speed is in "MPH"}\\
    \end{array}
<BR>
    <B>6) Time Taken</B><BR><BR>

    \begin{gather*}
        Time{\hspace{1mm}}Taken = \frac{Miles{\hspace{1mm}}Covered}{Average{\hspace{1mm}}Speed}\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{Time Taken is in "Hours"}\\
        \text{Average Speed is in "MPH"}\\
    \end{array}
<BR>
    <B>7) Raceway Speed</B><BR><BR>

    \begin{gather*}
        Raceway{\hspace{1mm}}Speed = \frac{Track{\hspace{1mm}}Length*3600}{Lap{\hspace{1mm}}Time}\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{Raceway Speed is in "MPH"}\\
        \text{Track Length is in "Miles"}\\
        \text{Lap Time is in "Seconds"}\\
    \end{array}
<BR>
    <B>8) Lap Time</B><BR><BR>

    \begin{gather*}
        Lap{\hspace{1mm}}Time = \frac{Track{\hspace{1mm}}Length*3600}{Raceway{\hspace{1mm}}Speed}\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{Lap Time is in "Seconds"}\\
        \text{Track Length is in "Miles"}\\
        \text{Raceway Speed is in "MPH"}\\
    \end{array}
""";
```

**chapter20.dart**
```Java
String chapter20TeX = r"""

    <B>1) Miles Per Gallon</B><BR><BR>

    \begin{gather*}
        Miles{\hspace{1mm}}Per{\hspace{1mm}}Gallon = \frac{Miles}{Fuel{\hspace{1mm}}Used}\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{Fuel Used is in "Gallons"}\\
    \end{array}
<BR>
    <B>2) Range</B><BR><BR>

    \begin{gather*}
        Range = Miles{\hspace{1mm}}Per{\hspace{1mm}}Gallon*Fuel{\hspace{1mm}}Tank{\hspace{1mm}}Capacity\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{Range is in "Miles"}\\
        \text{Fuel Tank Capacity is in "Gallons"}\\
    \end{array}
<BR>
    <B>3) Fuel Used Per Hour</B><BR><BR>

    \begin{gather*}
        Fuel{\hspace{1mm}}Used{\hspace{1mm}}Per{\hspace{1mm}}Hour = \frac{Amount{\hspace{1mm}}of{\hspace{1mm}}Fuel{\hspace{1mm}}Used}{Hours{\hspace{1mm}}Taken}\\
    \end{gather*}

    \begin{array}
    \text{\textbf{Where:}}\\
    \text{Fuel Used Per Hour is in "Gallons Per Hour"}\\
    \text{Amount of Fuel Used is in "Gallons"}\\
    \end{array}
<BR>
    <B>4) Fuel Used</B><BR><BR>

    \begin{gather*}
        Fuel\hspace{1mm}{}Used = \frac{Miles{\hspace{1mm}}Covered}{Miles{\hspace{1mm}}Per{\hspace{1mm}}Gallon}\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{Fuel Used is in "Gallons"}\\
    \end{array}
""";
```

**chapter21.dart**
```Java
String chapter21TeX = r"""

    <B>1) Imbalance</B><BR><BR>

    \begin{gather*}
        Imbalance = Lever{\hspace{1mm}}Arm*Weight\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{Imbalance is in "Inch-Grams"}\\
        \text{Lever Arm is in "Inches"}\\
        \text{Weight is in "Grams"}\\
    \end{array}
<BR>
    <B>2) Bobweight</B><BR><BR>

    \begin{gather*}
        Bobweight = 50\%Reciprocating{\hspace{1mm}}Weight+100\%Rotating{\hspace{1mm}}Weight\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{Bobweight is in "Grams"}\\
        \text{Reciprocating Weight is in "Grams"}\\
        \text{Rotating Weight is in "Grams"}\\
    \end{array}
""";
```