# This is a sample Python script.
from google.protobuf import text_format

import book_pb2


# Press Shift+F10 to execute it or replace it with your code.
# Press Double Shift to search everywhere for classes, files, tool windows, actions, and settings.


def write():
    # Use a breakpoint in the code line below to debug your script.
    with open('out.bin', 'w') as f:
        for i in range(2):
            book = book_pb2.Book()
            book.isbn =1
            book.title='test'
            book.author = 'test'
            text_proto = text_format.MessageToString(book)
            f.write(text_proto)
            print(text_proto)




# Press the green button in the gutter to run the script.
if __name__ == '__main__':
    write()
