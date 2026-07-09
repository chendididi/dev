#!/usr/bin/env bash
set -euo pipefail

echo "== versions =="
python3 --version
gcc --version | head -n1
g++ --version | head -n1
cmake --version | head -n1
gdb --version | head -n1
clangd --version | head -n1
java -version 2>&1 | head -n2
javac -version
go version
rustc --version
cargo --version

workdir="$(mktemp -d)"
trap 'rm -rf "$workdir"' EXIT

echo "== python =="
python3 -m venv "$workdir/pyvenv"
"$workdir/pyvenv/bin/python" -c 'print("python ok")'

echo "== c =="
cat > "$workdir/hello.c" <<'C'
#include <stdio.h>
int main(void) {
    puts("c ok");
    return 0;
}
C
gcc -Wall -Wextra -std=c17 "$workdir/hello.c" -o "$workdir/hello-c"
"$workdir/hello-c"

echo "== c++ =="
cat > "$workdir/hello.cpp" <<'CPP'
#include <iostream>
int main() {
    std::cout << "cpp ok\n";
}
CPP
g++ -Wall -Wextra -std=c++20 "$workdir/hello.cpp" -o "$workdir/hello-cpp"
"$workdir/hello-cpp"

echo "== java =="
cat > "$workdir/Hello.java" <<'JAVA'
public class Hello {
    public static void main(String[] args) {
        System.out.println("java ok");
    }
}
JAVA
javac "$workdir/Hello.java"
java -cp "$workdir" Hello

echo "== go =="
mkdir -p "$workdir/go-check"
cat > "$workdir/go-check/go.mod" <<'GOMOD'
module example.com/check

go 1.26
GOMOD
cat > "$workdir/go-check/main.go" <<'GO'
package main

import "fmt"

func main() {
	fmt.Println("go ok")
}
GO
(cd "$workdir/go-check" && go run .)

echo "== rust =="
mkdir -p "$workdir/rust-check/src"
cat > "$workdir/rust-check/Cargo.toml" <<'TOML'
[package]
name = "rust-check"
version = "0.1.0"
edition = "2021"
TOML
cat > "$workdir/rust-check/src/main.rs" <<'RS'
fn main() {
    println!("rust ok");
}
RS
(cd "$workdir/rust-check" && cargo run --quiet)

echo "== all checks passed =="
