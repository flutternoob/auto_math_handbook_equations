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