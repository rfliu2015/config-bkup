import os
from typing import TextIO
from sys import argv


def get_lines(file_):
    with open(file_, 'r') as f:  # type: TextIO
        try:
            length = len(f.readlines())
        except UnicodeDecodeError:
            length = 0
    return length


def get_suffix_files(folder, suffix_files=None, suffix='java'):
    """
    递归方法返回所有suffix_file文件.
    :param folder:
    :return:
    """
    if not os.path.exists(folder):
        raise ValueError('Folder not exists!')

    if suffix_files is None:
        suffix_files = []

    current = os.listdir(folder)

    for file_ in current:
        file_ = os.path.abspath(os.path.join(folder, file_))
        if os.path.exists(file_):
            if os.path.isdir(file_):
                get_suffix_files(file_, suffix_files, suffix=suffix)

            elif str(file_).endswith(suffix):
                suffix_files.append(file_)

        else:
            print('wrong')

    return suffix_files


def main(path, suffix):
    path = os.path.abspath(path)
    print(path)
    suffix_files = get_suffix_files(path, suffix=suffix)

    total = 0
    for suffix_file in suffix_files:
        length = get_lines(suffix_file)
        print('{suffix_file:<80}\t:\t{leng}'.format(
            suffix_file=suffix_file, leng=length))
        total += length

    print('\nTotal suffix_file Files: %d, and Total Lines: %d \n' %
          (len(suffix_files), total))


if __name__ == '__main__':
    main(argv[1], suffix='java')
