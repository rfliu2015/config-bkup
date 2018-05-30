# 为c, c++提供统一的编译脚本
#!/usr/bin/python
# -*- coding: utf-8 -*-

from subprocess import call
from sys import argv

dct = {'c': 'gcc', 'cpp': 'g++', 'py':'python3','f90':'gfortran'}


def main(lt):
    suffix = lt[0].split('.')[-1]  # 后缀名
    cpile = dct[suffix]  # 对应编译器

    if suffix == 'c' or suffix == 'cpp':
        if lt[-1].split('.')[-1] != suffix:
            destination = lt[-1]
            lt = lt[:-1]
        else:
            destination = lt[-1].split('.')[0] + '.out'

        call([cpile] + lt + ['-Wall','-std=c++11', '-o'] + [destination])
    elif suffix == 'py':
        call([cpile] + lt)
    elif suffix == 'f90':
        call([cpile] + ['-fcheck=all'] + lt)


if __name__ == '__main__':
    main(argv[1:])
