using System;
using System.Linq;

class Program
{
    public static void Main()
    {
        var N = int.Parse(Console.ReadLine());

        var S = Enumerable.Range(0, N)
          .Select(_ => int.Parse(Console.ReadLine()))
          .Select(r => r * r)
          .OrderByDescending(r => r)
          .Select((r, i) => i % 2 == 0 ? r : -r)
          .Sum()
          * Math.PI;

        Console.WriteLine(S);
    }
}
