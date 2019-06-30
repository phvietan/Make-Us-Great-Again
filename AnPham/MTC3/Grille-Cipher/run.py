note = [
  'STRWAEOD',
  'GRIUNTNE',
  'NERYSRTH',
  'OBUYEUIN',
  'CSADALEL',
  'BERULNTH',
  'SEATESDI',
  'ELEMFAOE'
]

# 1: empty
# 2: filled
# 3: unknown
grille = [
  [1,0,0,0,0,0,1,0],
  [0,1,0,0,0,0,0,0],
  [0,0,1,0,0,0,0,0],
  [0,0,0,1,0,0,1,0],
  [0,0,0,0,0,1,0,1],
  [2,2,2,0,1,0,0,0],
  [2,2,2,1,0,0,0,0],
  [2,2,2,0,1,0,1,0]
]

def rotate_right_90(grille):
  result = [
    [0,0,0,0,0,0,0,0],
    [0,0,0,0,0,0,0,0],
    [0,0,0,0,0,0,0,0],
    [0,0,0,0,0,0,0,0],
    [0,0,0,0,0,0,0,0],
    [0,0,0,0,0,0,0,0],
    [0,0,0,0,0,0,0,0],
    [0,0,0,0,0,0,0,0]
  ]
  for i in range(8):
    for j in range(8):
      result[j][8-i-1] = grille[i][j]
  return result

def apply(grille):
  global note
  result = ''
  for i in range(8):
    for j in range(8):
      if grille[i][j] == 1:
        result += note[i][j]
  return result

def apply4Rotations(grille):
  result = ''
  for i in range(4):
    result += apply(grille)
    grille = rotate_right_90(grille)
  return result

def is_filled(grille):
  for i in range(8):
    for j in range(8):
      if grille[i][j] == 2: return False
  return True

def fill_unknown_grille(grille):
  if (is_filled(grille)):
    result = apply4Rotations(grille)
    print(result)
    return
  for i in range(8):
    for j in range(8):
      if grille[i][j] == 2:
        grille[i][j] = 0
        fill_unknown_grille(grille)
        grille[i][j] = 1
        fill_unknown_grille(grille)
        grille[i][j] = 2
        return

fill_unknown_grille(grille)
