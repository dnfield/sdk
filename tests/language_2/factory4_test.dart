// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

abstract class Link<T> {
  factory Link.create() = LinkFactory.create; //# 00: compile-time error
}

class A<T> {}

class LinkFactory<T> extends A<T> {
  factory LinkFactory.create() {
    return null;
  }
}

main() {
  new Link<int>.create(); //# 00: continued
}
