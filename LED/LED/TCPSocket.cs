using System;
using System.Net;
using System.Net.Sockets;
using System.Text;

class TCPSocket
{
    private TcpClient client;
    private NetworkStream stream;
    private byte[] buffer = new byte[1024];

    public void Connect(string ipAddress, int port)
    {
        try
        {
            client = new TcpClient();
            client.Connect(ipAddress, port);
            stream = client.GetStream();

            Console.WriteLine("Connecté au serveur.");

            stream.Close();
            client.Close();
        }

        catch (Exception e)
        {
            Console.WriteLine("Erreur lors de la connexion au serveur : " + e.Message);
        }
    }
}

class Program
{
    static void Main()
    {
        TCPSocket tcpSocket = new TCPSocket();
        tcpSocket.Connect("127.0.0.1", 4444);

        Console.ReadLine();
    }
}
