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
    return '----- Top ---\n'
        '${stack.reversed.join('\n')}'
        '\n-----------';
  }
}
bool isValid(String s) {
  if (s.length % 2 != 0) {
    return false;
  }

  Map<String, String> parentheses = {
    ')': '(',
    '}': '{',
    ']': '[',
  };

  Stack<String> stack = Stack();
  for (var char in s.runes) {
    String c = String.fromCharCode(char);
    if (parentheses.containsValue(c)) {
      stack.push(c);
    } else if (parentheses.containsKey(c)) {
      if (stack.isEmpty || stack.pop() != parentheses[c]) {
        return false;
      }
    }
  }
  return stack.isEmpty;
}
  
  void main(List<String> args) {
  String s="(}{}]])";
  print(isValid(s));
}
