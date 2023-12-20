class Stack<E> {
  Stack() : stack = <E>[];
  final List<E> stack;
  void push(E element) => stack.add(element);
 
  E pop() => stack.removeLast();
  E get peek => stack.last;

  bool get isEmpty => stack.isEmpty;

  bool get isNotEmpty => !isEmpty;

  @override
  String toString() {
    return '-----Top \n'
        '${stack.reversed.join('\n')}'
        '\n';
  }
}
void reverseStack(Stack<dynamic> stack) {
  if (stack.isNotEmpty) {
    dynamic x = stack.pop();
    reverseStack(stack);
    print(x);
  }
}
void main(List<String> args) {
  Stack<dynamic> stack = new Stack();
  stack.push(3);
  stack.push(2);
  stack.push(1);
  stack.push(5);
  stack.push(10);
  print(stack);
  reverseStack(stack);
  print(stack);
}

    reverseStack(stack);
    print(x);
  }
}
