from __future__ import print_function

f = open('data/trainer_parties.asm', 'r')

lines = f.readlines()

new_lines = []

for l in lines:
    if '\tdb ' in l:
        parts = l.split(' ')
        team = parts[1].split(',')
        new_team = []
        for t in team:
            try:
                level = int(t)
                if level == 0:
                    raise Exception()
                level = int(float(level / 65.0) * 140)
                new_team.append(str(level))
            except:
                new_team.append(t)
        parts[1] = ','.join(new_team)
        new_lines.append(' '.join(parts))
    else:
        new_lines.append(l)

for l in new_lines:
    print(l, end='')
