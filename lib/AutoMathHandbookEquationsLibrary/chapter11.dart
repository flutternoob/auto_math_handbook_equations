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