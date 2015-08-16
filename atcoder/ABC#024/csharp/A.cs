using System;
using System.Linq;
using System.Collections.Generic;

class Program
{
    static void Main(string[] args)
    {
        int[] line = ReadLine();
        int[] line2 = ReadLine();

        int a = line[0];
        int b = line[1];
        int c = line[2];
        int k = line[3];

        int s = line2[0];
        int t = line2[1];

        Console.WriteLine(a * s + b * t - (s + t < k ? 0 : s + t) * c);
    }

    static int[] ReadLine()
    {
        return Console.ReadLine().Split(' ').Select(i => int.Parse(i)).ToArray();
    }
}
