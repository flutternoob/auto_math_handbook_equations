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