---
title: "Лабораторная работа №5"
author: "Кувшинова К.О. группа НФИ-02-19"
subtitle: "Модель хищник-жертва "
output:
  word_document: default
  pdf_document: default
toc-title: Содержание
toc: yes
toc_depth: 2
lof: yes
fontsize: 12pt
linestretch: 1.5
papersize: a4paper
documentclass: scrreprt
polyglossia-lang: russian
polyglossia-otherlangs: english
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase
indent: yes
pdf-engine: lualatex
header-includes:
- \linepenalty=10
- \interlinepenalty=0
- \hyphenpenalty=50
- \exhyphenpenalty=50
- \binoppenalty=700
- \relpenalty=500
- \clubpenalty=150
- \widowpenalty=150
- \displaywidowpenalty=50
- \brokenpenalty=100
- \predisplaypenalty=10000
- \postdisplaypenalty=0
- \floatingpenalty = 20000
- \raggedbottom
- \usepackage{float}
- \floatplacement{figure}{H}
---


# Цель работы

Рассмотреть модель взаимодействия двух видов типа «хищник — жертва» - модель Лотки-Вольтерры.

# Задание работы

### Вариант 36

Для модели «хищник-жертва»:

$$
\begin{cases}
\ \frac{dx}{dt} = -0.83x(t) + 0.083x(t)y(t) \\
\ \frac{dy}{dt} = 0.82y(t) - 0.082x(t)y(t)
\end{cases}
$$

Постройте график зависимости численности хищников от численности жертв, а также графики изменения численности хищников и численности жертв при следующих начальных условиях:
$x_0=8$, $y_0=16$ . Найдите стационарное
состояние системы.

# Теоретичсекое введение

Простейшая модель взаимодействия двух видов типа «хищник — жертва» - модель Лотки-Вольтерры. Данная двувидовая модель основывается на следующих предположениях:
1. Численность популяции жертв x и хищников y зависят только от времени
(модель не учитывает пространственное распределение популяции на занимаемой территории)
2. В отсутствии взаимодействия численность видов изменяется по модели Мальтуса, при этом число жертв увеличивается, а число хищников падает
3. Естественная смертность жертвы и естественная рождаемость хищника считаются несущественными
4. Эффект насыщения численности обеих популяций не учитывается
5. Скорость роста численности жертв уменьшается пропорционально
численности хищников

$$
\begin{cases}
 \frac{dx}{dt} = ax(t) - bx(t)y(t) \\
\frac{dy}{dt} = -cy(t) + dx(t)y(t)
\end{cases}
$$
В этой модели x – число жертв, y - число хищников. Коэффициент a описывает скорость естественного прироста числа жертв в отсутствие хищников, с - естественное вымирание хищников, лишенных пищи в виде жертв. Вероятность
взаимодействия жертвы и хищника считается пропорциональной как количеству жертв, так и числу самих хищников (xy). Каждый акт взаимодействия уменьшает популяцию жертв, но способствует увеличению популяции хищников (члены -bxy и dxy в правой части уравнения). 

Стационарное состояние системы  (положение равновесия, не зависящее от времени решение) будет в точке:
$x_0=\frac{c}{d}$ , $y_0=\frac{a}{b}$
. Если начальные значения задать в стационарном состоянии
$x(0)=x_0$ , $y(0)=y_0$
, то в любой момент времени
численность популяций изменяться не будет. При малом отклонении от положения
равновесия численности как хищника, так и жертвы с течением времени не возвращаются к равновесным значениям, а совершают периодические колебания вокруг стационарной точки. Амплитуда колебаний и их период определяется начальными значениями численностей
$x(0)$ , $y(0)$
. Колебания совершаются в противофазе. [^1]


# Выполнение лабораторной работы

### Задача

В лесу проживают х число волков, питающихся зайцами, число которых в этом же лесу у. Пока число зайцев достаточно велико, для прокормки всех волков, численность волков растет до тех пор, пока не наступит момент, что корма перестанет хватать на всех. Тогда волки начнут умирать, и их численность будет
уменьшаться. В этом случае в какой-то момент времени численность зайцев снова начнет увеличиваться, что повлечет за собой новый рост популяции волков. Такой
цикл будет повторяться, пока обе популяции будут существовать. Помимо этого, на численность стаи влияют болезни и старение. 

Данная модель описывается следующим уравнением:

$$
\begin{cases}
\frac{dx}{dt} = -ax(t) + cx(t)y(t) \\
\frac{dy}{dt} = by(t) - dx(t)y(t)
\end{cases}
$$

где 

a - коэффициент естественной смертности хищников;

b - коэффициент естественного прироста жертв;

с - коэффициент увеличения числа хищников;

d - коэффициент смертности жертв.

### Решение

Для модели «хищник-жертва»:

$$
\begin{cases}
\ \frac{dx}{dt} = -0.83x(t) + 0.083x(t)y(t) \\
\ \frac{dy}{dt} = 0.82y(t) - 0.082x(t)y(t)
\end{cases}
$$

1. Постройте график зависимости численности хищников от численности жертв, а также графики изменения численности хищников и численности жертв при следующих начальных условиях:
$x_0=8$, $y_0=16$ . 

Код программы в OpenModelica (@fig:001)

![Код программы](код.png){#fig:001 width=100%}

График зависимости численности хищников от численности жертв(@fig:002):

![График зависимости численности хищников от численности жертв](график2.png){#fig:002 width=100%}


Графики изменения численности хищников и численности жертв(@fig:003):

![Графики изменения численности хищников и численности жертв](график1.png){#fig:003 width=100%}


2. Найдите стационарное состояние системы.

Стационарное состояние системы будет в точке:
$x_0=\frac{b}{d}$ , $y_0=\frac{a}{c}$, что в моем случае:
$x_0=0.82/0.082$ , $y_0=0.83/0.083$.

График(@fig:004):

![Стационарное состояние системы](график3.png){#fig:004 width=100%}

В каждый момент времени значения x и y равны 10. 

# Вывод

В ходе выполнения работы мы рассмотрели и построили модель взаимодействия двух видов типа «хищник — жертва» - модель Лотки-Вольтерры.


# Библиография

   1.  Кулябов, Д.С. Модель хищник-жертва [Текст] / Д.С.Кулябов. - Москва: - 5 с. [^1]: Кулябов, Д.С. Модель хищник-жертва.