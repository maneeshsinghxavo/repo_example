syntax = "proto3";

package com.book;

message Book {
    int64 isbn = 1;
    string title = 2;
    string author = 3;
}

message GetBookRequest {
    int64 isbn = 1;
}

message GetBookViaAuthor {
    string author = 1;
}

service BookService {
    rpc GetBook (GetBookRequest) returns (Book) {}
    rpc GetBooksViaAuthor (GetBookViaAuthor) returns (stream Book) {}
    rpc GetGreatestBook (stream GetBookRequest) returns (Book) {}
    rpc GetBooks (stream GetBookRequest) returns (stream Book) {}
}

message BookStore {
    string name = 1;
    map<int64, string> books = 2;
}

enum EnumSample {
    option allow_alias = true;
    UNKNOWN = 0;
    STARTED = 1;
    RUNNING = 1;
}