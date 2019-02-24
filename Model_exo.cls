\NeedsTeXFormat{LaTeX2e}

\ProvidesPackage{modelexo}[2019/02/20 Modèle de planche d'exercice, V0.1]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Classe de base
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\LoadClass[a4paper, 11pt]{article}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Extensions
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% caractères
\RequirePackage[12pt]{extsizes} % taille
\RequirePackage[utf8]{inputenc} % Encodage
\RequirePackage[T1]{fontenc} % encodage
\RequirePackage[francais]{babel}


% caractères spéciaux
\RequirePackage{amsfonts,amsmath,amssymb} % Symboles mathématiques
\RequirePackage{cancel} % Pour barrer un texte
\RequirePackage{color} % Pour utiliser les couleurs
\RequirePackage{colortbl} % Pour colorier les cellules d'un tableau
\RequirePackage{eurosym} % Pour le symbole euro
\RequirePackage{pifont} % pour les symboles « ding »
\RequirePackage{rotating} % pour tourner du texte
\RequirePackage{fancybox} % Pour les encadrements

% Mise en page
\RequirePackage{fancyhdr} % Pour le titre courant (les en-tête etc.) CONFLIT !
\RequirePackage{geometry} % Pour la mise en page
\geometry{hmargin=1cm,vmargin=15mm}
\RequirePackage{graphicx} % Pour l'insertion d'image
\RequirePackage{hyperref} % pour les liens hypertexte
\RequirePackage{lscape} % pour un format « paysage »
\RequirePackage{makeidx} % pour la création d’un index
\RequirePackage{lastpage}
\pagestyle{fancy}


% Tableaux
\RequirePackage{array} % Pour les tableaux à contenu mathématique
\RequirePackage{multicol} % pour fusionner des colonnes d’un tableau ou écrire un texte sur plusieurs colonnes
\setlength{\columnseprule}{1pt}
\setlength{\columnsep}{1cm} % espacement des colonnes
\RequirePackage{multido} % pour effectuer des boucles
\RequirePackage{multirow} % pour fusionner des lignes d’un tableau
\RequirePackage{tabularx} % pour les tableaux dont on fixe la longueur totale


% Titres, listes, théorèmes
\RequirePackage{ntheorem} % avec les options
%\RequirePackage{thmmarks} % la personnalisation des théorèmes INCONNU !
\RequirePackage{titlesec} % pour changer la police des titres de niveaux de hiérarchie
\RequirePackage{url} % pour les adresses éponyme
\RequirePackage{enumerate} % Pour modifier le motif d’une énumération
\RequirePackage[inline]{enumitem}
\frenchbsetup{StandardLists=true}%Pour éviter les conflits entre french et enumiten
\RequirePackage{setspace}

% graphiques avec tikz
\RequirePackage{pgf,tikz,tkz-tab}
\usetikzlibrary{arrows}
\RequirePackage{mathrsfs}


\fancyhead[C]{Vecteurs et droites}
\fancyhead[L]{1S 2, Lycée Diderot}
\fancyhead[R]{Fiche \no 8, février 2019}

\fancyfoot[C]{}
\fancyfoot[L]{}
\fancyfoot[R]{\textbf{page \thepage/\pageref{LastPage}}}
\title{}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Commandes
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Compteurs
\newcounter{nexo}
\setcounter{nexo}{0}
\newcommand{\Exo}{\stepcounter{nexo}{\textbf{ Exercice \arabic{nexo} ~}}}

\renewcommand{\headrulewidth}{1pt}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Commandes sesamath
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\N}{\mathbb{N}}
\newcommand{\R}{\mathbb{R}}
\newcommand{\I}{\mathbb{I}}
\newcommand{\Z}{\mathbb{Z}}
\renewcommand{\cfrac}[2]{{\displaystyle\frac{%
  \vrule height10pt depth0pt width0pt #1}{#2}}%
  \kern-\nulldelimiterspace}
%\RequirePackage{casio-fx,ti83symbols}

\newcommand\renvoimethode[1]{%
  Méthode \ref{#1}, p.~\pageref{#1}%
}

\newcommand*\calculatrice{%
  \psframebox[framesep=1pt,linewidth=\LogoLineWidth,
              linecolor=TiceLineColor, fillstyle=solid,
              fillcolor=TiceBkgColor, framearc=0.6]{%
    \TiceFont
    \textcolor{TiceTextColor}{CALC}%
  }
}
\newcommand\calc{\calculatrice}

% Chapitre G1 et G3
\newcommand{\covec}[2]{\left(\begin{array}{c} #1\\#2\end{array}\right)}
\newcommand{\vv}[1]{\overrightarrow{#1}}
% Chapitre G2
\RequirePackage{tipa}
\newcommand{\sesamarc}[1]{%
  \setbox9=\hbox{#1}%
  \ooalign{\resizebox{1.35\wd9}{\height}{\texttoptiebar{\phantom{A}}}\cr$#1$}}

% Chapitre SP3
\RequirePackage{diagbox}

% Chapitre A6
%\DeclareDefLike{definitionintuitive}{DÉFINITION INTUITIVE}

% fiches TICE
\makeatletter
\newcommand{\commandetice}[1]{%
  \bgroup
  \shorthandoff{;:!?}%
  \texttt{#1}%
  \egroup
}

\newcommand\touchecalc[1]{%
  \tikz[baseline=-0.5ex]{\node at (0,0) [rounded corners = 2pt, draw, line width=.25pt]
    {\footnotesize\textsf{#1}}}%
}
