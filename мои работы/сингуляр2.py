# Создание матрицы
import numpy as np
from matplotlib import pyplot as plt
x = np.arange(1,11)*40
y = 2*x + np.random.randn(10)*5
X = np.vstack((x,y))
print(X)
plt.scatter(X[0],X[1])
plt.show()
#Центрирование матрицы
Xcentred = (X[0]-x.mean(),X[1] -y.mean())
m = (x.mean(),y.mean())
print(Xcentred)
print("Mean vector:",m)
plt.scatter(Xcentred[0],Xcentred[1])
plt.show()
# Нахождение собственного вектора
covmat = np.cov(Xcentred)
print(covmat,"\n")
print("Variance of X:", np.cov(Xcentred)[0,0])
print("Variance of Y:",np.cov(Xcentred)[1,1])
print("Covariance X and Y:",np.cov(Xcentred)[0,1])

_, vecs = np.linalg.eig(covmat)
v = -vecs[:,1]
Xnew = np.dot(v,Xcentred)
print(Xnew)
# Восстановление матрицы
n = 5 # номер элемента случайной величины
Xrestored = np.dot(Xnew[n],v)+m
print("Restored:",Xrestored)
print("Original:",X[:,n])


from sklearn.decomposition import PCA
pca = PCA(n_components= 1)
XPCAreduced = pca.fit_transform(np.transpose(X))

for xn,x_pca in zip(Xnew,XPCAreduced):
    print(xn,"-",x_pca)