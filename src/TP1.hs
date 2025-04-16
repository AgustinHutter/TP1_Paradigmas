module TP1 where
import PdePreludat

esMes :: Number -> Bool
esMes x= (x<13)&&(x>0)

mesAnterior :: Number -> Number
mesAnterior x | (x<0)||(x>12) = 0
mesAnterior x | (x<=1) = 12
esAnterior x | otherwise = x-1

mesSiguiente :: Number -> Number
mesSiguiente x | (x<1)||(x>12) = 0
mesSiguiente x | (x==12) = 1
mesSiguiente x | otherwise = x+1

estacion :: Number -> String
estacion x | (x==1)&&(x==2) = "verano"
estacion x | (x==3) = "verano/otonio"
estacion x | (x==4)&&(x==5) = "otonio"
estacion x | (x==6) = "otonio/invierno"
estacion x | (x==7)&&(x==8) = "invierno"
estacion x | (x==9) = "invierno/primavera"
estacion x | (x==10)&&(x==11) = "primavera"
estacion x | (x==12) = "primavera/verano"
estacion x | otherwise = "no es mes"