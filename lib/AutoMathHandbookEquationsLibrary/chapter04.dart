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