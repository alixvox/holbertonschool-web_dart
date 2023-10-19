void main(List<String> args) {
    assert(args.length == 1, 'You must provide one argument');
    assert(int.tryParse(args[0]) != null, 'The argument must be an integer');
    assert(int.parse(args[0]) >= 80, 'Uncaught Error: Assertion failed: "The score must be bigger or equal to 80');
    print('You Passed');
}