f = open("~/demofile_a.txt", "a")
f.write("\nUma linha foi adicionada!")
f.close()

# open and read the file after the appending:
f = open("~/demofile_a.txt", "r")
print(f.read())
