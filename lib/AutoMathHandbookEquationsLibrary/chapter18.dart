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