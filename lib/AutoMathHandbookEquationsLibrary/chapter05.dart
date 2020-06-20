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