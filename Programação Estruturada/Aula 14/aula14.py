def maximo (x,y):
    return max(x,y)

print(maximo(5,6))
print(maximo(2,1))
print(maximo(7,7))

#----------------------------#
def multiplo (x,y):
    if (x % y == 0):
        return True
    else:
        return False
    
print(multiplo(8,4))
print(multiplo(7,3))
print(multiplo(5,5))

#----------------------------#
def areaQuadrado (lado):
    return lado ** 2

print(areaQuadrado(4))

#----------------------------#
def areaTriangulo (base, altura):
    return (base * altura) / 2

print (areaTriangulo(2,8))