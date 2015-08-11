using System;

class Program {
    public static void Main() {
        var S = Console.ReadLine();
        var N = int.Parse(Console.ReadLine()) - 1;

        Console.WriteLine("" + S[N / 5] + S[N % 5]);
    }
}
