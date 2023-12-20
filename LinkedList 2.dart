class Node<T> {
  Node({required this.value, this.next});
  T value;
  Node<T>? next;
  @override
  String toString() {
    if (next == null) return '$value';
    return '$value -> ${next.toString()}';
  }
}

class LinkedList<E> {
  Node<E>? head;
  Node<E>? tail;

  bool get isEmpty => head == null;
  void push(E value) {
    head = Node(value: value, next: head);
    tail ??= head;
  }

  void add(E value) {
    if (isEmpty) {
      push(value);
      return;
    }
    tail!.next = Node(value: value);
    tail = tail!.next;
  }

  @override
  String toString() {
    if (isEmpty) return 'Empty list';
    return head.toString();
  }
}
Node<E>? removeOccurrences<E>(Node<E>? head, E element) {
  if (head == null) {
    return null;
  }

  head.next = removeOccurrences(head.next, element);

  if (head.value == element) {
    return head.next;
  }

  return head;
}

void main(List<String> args) {
  LinkedList<dynamic> list = new LinkedList();
  list.add(2);
  list.add(1);
  list.add(5);
  list.add(2);
  list.add(5);
  list.add(1);
  list.add(2);
  list.add(3);
  list.add(3);
  print(list);
  list.head=removeOccurrences(list.head,2);
  print(list);
  
}


