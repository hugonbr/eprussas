class MeuTipoNum:
  def __iter__(self):
    self.a = 1
    return self

  def __next__(self):
    if self.a <= 20:
      x = self.a
      self.a += 1
      return x
    else:
      raise StopIteration

obj1 = MeuTipoNum()
meuIter = iter(obj1)

for i in meuIter:
  print(i)
