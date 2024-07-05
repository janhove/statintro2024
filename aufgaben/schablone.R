#' ---
#' author: 'Ihr Name'
#' title: 'Aufgabenblatt Nummer'
#' date: 'yyyy/mm/dd'
#' output: 
#'  html_document:
#'    toc: true
#'    toc_float: true
#'    number_sections: true
#'    theme: sandstone
#'    highlight: tango
#'    dev: svg
#'    df_print: paged
#' ---

#' # R Markdown-Berichte verfassen
#' In RStudio können Sie R-Scripts mit _File > Compile Report..._ zu einem
#' Bericht konvertieren. In dieser Schablone wurden einige der 
#' Defaulteinstellungen geändert, um diese Berichte etwas übersichtlicher
#' und leserlicher zu machen.
#' 
#' Wie Sie sehen, kann man einem Bericht Fliesstext hinzufügen, indem man
#' diesem `#' ` voranstellt. In solchem Fliesstext können Sie 
#' Markdown-Markierungen verwenden -- etwa um Text **fett** oder *kursiv*
#' zu machen. Auch URLs können eingefügt werden, wie dieser Link zur
#' [Hilfeseite](https://bookdown.org/yihui/rmarkdown/html-document.html)
#' von R Markdown zeigt.
#' 
#' Ihre Berichte können Sie einfach in Abschnitte und Unterabschnitte gliedern,
#' etwa so:
#' 
#' # Abschnitt
#' ## Unterabschnitt
#' ## Unterabschnitt
#' 
#' # Abschnitt
#' ## Unterabschnitt
#' ### Unterunterabschnitt

#' Die R-Befehle, die im Script vorkommen, werden beim Kompilieren ausgeführt
#' und ihr Output wird im Bericht angezeigt. Das Kompilieren bietet ausserdem
#' eine gewisse Qualitätskontrolle, denn wenn ein Befehl wegen eines
#' Syntaxfehlers nicht ausgeführt werden kann, kann der Bericht auch nicht
#' kompliert werden.
a <- c(12, -4, 8)
a * (a - 4)

#' Grafiken können wie gehabt erzeugt werden, wobei es manchmal noch praktisch
#' ist, ihre Grösse von Hand zu bestimmen. Dies kann man wie folgt machen;
#' man bemerke, dass der Zeile mit den Grafikeinstellungen mit `#+ ` anfängt.
#+ fig.width = 5, fig.height = 4
curve(2^(-x^2/2) * x/(1 + x^2), 
      from = -5, to = 5, 
      xlab = "x", ylab = "f(x)")


#' Auch mathematische Notation können Sie in diesen Berichten verwenden:
#' $\sqrt{16} = 4$. Oder
#' $$p(y) = \frac{1}{\sqrt{2\pi}}\exp\left(- \frac{y^2}{2}\right).$$
#' 
#' # Softwareversionen
sessionInfo()