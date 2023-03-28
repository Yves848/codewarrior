using System;
using System.Linq;

namespace IsPangram
{
    internal class Program
    {
        static bool Pangram(string str)
        {
            var chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".ToList();
            int total = 0;
            foreach (var c in chars)
            {
                if (str.Contains(c))
                {
                    total++;
                }
            }
            return total == 26;
        }
        static void Main(string[] args)
        {
            string str = "The quick brown fox jumps over the lazy dog.".ToUpper();
            if (Pangram(str))
            {
                Console.WriteLine("Pangram");
            }
            else
            {
                Console.WriteLine("Not Pangram");
            }
            Console.ReadKey();
        }
    }
}
