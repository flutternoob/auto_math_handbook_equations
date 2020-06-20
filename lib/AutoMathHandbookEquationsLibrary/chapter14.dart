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