using System;

class Program {
    public static void Main() {
        var A = int.Parse(Console.ReadLine());
        var x = A / 2;
        var y = A - x;

        Console.WriteLine(x * y);
    }
}
