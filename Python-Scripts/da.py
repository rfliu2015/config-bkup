# 为c, c++提供统一的编译脚本
# !/usr/bin/python3
# -*- coding: utf-8 -*

from subprocess import call
from sys import argv
import os
from ado import main as domain


def dealWith(passedArgv: list):
    if not passedArgv or passedArgv[0] == "rou":
        raise ValueError("Error! Parameters Invalid!")

    fullFile, = passedArgv
    fileName, suffix = os.path.splitext(fullFile)
    tryToFind = '.'.join([fileName, 'out'])

    try:
        if os.path.exists(tryToFind):
            call('./' + tryToFind, shell=True)
            return
        # 没有找到
        tryToFind = str(fileName)
        if os.path.exists(tryToFind):
            call('./' + tryToFind, shell=True)
            return

        # 自己去执行
        domain([fullFile])
        print('=====Finished compiling=====')
        dealWith([fullFile])
    except KeyboardInterrupt:
        exit


if __name__ == "__main__":
    cmd_line = argv[1:]
    dealWith(cmd_line)
