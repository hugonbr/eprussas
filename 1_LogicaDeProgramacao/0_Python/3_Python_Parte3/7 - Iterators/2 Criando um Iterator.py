class MeuTipoNum:
  def __iter__(self):
    self.a = 1
    return self

  def __next__(self):
    x = self.a
    self.a += 1
    return x

obj1 = MeuTipoNum()
meuIter = iter(obj1)

print(next(meuIter))
print(next(meuIter))
print(next(meuIter))
print(next(meuIter))
print(next(meuIter))
