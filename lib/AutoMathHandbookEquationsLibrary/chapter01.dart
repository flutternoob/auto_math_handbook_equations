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