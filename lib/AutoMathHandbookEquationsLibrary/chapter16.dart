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