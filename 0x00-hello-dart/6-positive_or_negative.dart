void main(List<String> args) {
    assert(args.length == 1, 'You must provide one argument');

    int? num = int.tryParse(args[0]);
    assert(num != null, 'The argument must be an integer');

    String result = num == 0 ? 'is zero' : num! > 0 ? 'is positive' : 'is negative';
    print('$num $result');
}