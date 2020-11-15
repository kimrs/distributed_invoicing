using System;
using System.Threading.Tasks;
using NServiceBus;

namespace Launchpad.MessagingService.Host
{
    class Program
    {
        static async Task Main(string[] args)
        {
            Console.Title = "MessagingService.Host";
            var i = 0;
            while(true)
            {
                Console.WriteLine($"Hello {i++}");
                await Task.Delay(1000);
            }
        }
    }
}
