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