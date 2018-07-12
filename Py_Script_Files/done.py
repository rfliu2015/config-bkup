# 为c, c++提供统一的编译脚本
#!/usr/bin/python3
# -*- coding: utf-8 -*-

from subprocess import call
from sys import argv

cdict = {'c': 'gcc', 'cpp': 'g++', 'py': 'python3', 'f90': 'gfortran'}


def main(lt):
    ftype = lt[0].split('.')[-1]  # 后缀名
    compilor = cdict[ftype]  # 对应编译器

    if ftype == 'c' or ftype == 'cpp':
        if lt[-1].split('.')[-1] != ftype:
            destination = lt[-1]
            lt = lt[:-1]
        else:
            destination = lt[-1].split('.')[0] + '.out'

        call([compilor] + lt + ['-Wall', '-std=c++11', '-o'] + [destination])
    elif ftype == 'py':
        call([compilor] + lt)
    elif ftype == 'f90':
        call([compilor] + ['-fcheck=all'] + lt)


if __name__ == '__main__':
    main(argv[1:])
