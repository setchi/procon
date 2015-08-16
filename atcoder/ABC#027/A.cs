using System;
using System.Linq;

class Program {
    public static void Main() {
        var L = Console.ReadLine()
          .Split(new[]{ ' ' })
          .Select(int.Parse)
          .ToList();

        var res = 0;

        if (L[0] == L[1]) {
          res = L[0] == L[2] ? L[0] : L[2];

        } else {
          res = L[0] == L[2] ? L[1] : L[0];
        }

        Console.WriteLine(res);
    }
}
