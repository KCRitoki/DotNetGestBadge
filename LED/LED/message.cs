using System;
using System.IO;
using OfficeOpenXml;

class Program
{
    static string filePath = "messages.xlsx";
    static int nextId = 1;

    static void Main(string[] args)
    {
        bool quit = false;

        while (!quit)
        {
            Console.WriteLine("1. Ajouter un message");
            Console.WriteLine("2. Modifier un message");
            Console.WriteLine("3. Supprimer un message");
            Console.WriteLine("4. Affecter des tags à un message");
            Console.WriteLine("5. Désaffecter des tags d'un message");
            Console.WriteLine("6. Quitter");

            Console.Write("Choisissez une option : ");
            string choice = Console.ReadLine();

            Console.WriteLine();

            switch (choice)
            {
                case "1":
                    AddMessage();
                    break;
                case "2":
                    ModifyMessage();
                    break;
                case "3":
                    DeleteMessage();
                    break;
                case "4":
                    AssignTags();
                    break;
                case "5":
                    UnassignTags();
                    break;
                case "6":
                    quit = true;
                    break;
                default:
                    Console.WriteLine("Option invalide. Veuillez réessayer.");
                    break;
            }

            Console.WriteLine();
        }
    }

    static void AddMessage()
    {
        Console.Write("Entrez un message (20 caractères maximum) : ");
        string message = Console.ReadLine();

        if (message.Length <= 20)
        {
            using (var package = new ExcelPackage(new FileInfo(filePath)))
            {
                ExcelWorksheet worksheet;
                if (package.Workbook.Worksheets.Count == 0)
                {
                    worksheet = package.Workbook.Worksheets.Add("Messages");
                    worksheet.Cells["A1"].Value = "ID";
                    worksheet.Cells["B1"].Value = "Message";
                    worksheet.Cells["C1"].Value = "Tags";
                }
                else
                {
                    worksheet = package.Workbook.Worksheets["Messages"];
                }

                int row = worksheet.Dimension.Rows + 1;
                worksheet.Cells["A" + row].Value = nextId;
                worksheet.Cells["B" + row].Value = message;

                package.Save();
            }

            Console.WriteLine("Message ajouté avec succès. ID : " + nextId);
            nextId++;
        }
        else
        {
            Console.WriteLine("Le message dépasse la limite de 20 caractères. Veuillez réessayer.");
        }
    }

    static void ModifyMessage()
    {
        Console.Write("Entrez l'ID du message à modifier : ");
        int id = int.Parse(Console.ReadLine());

        using (var package = new ExcelPackage(new FileInfo(filePath)))
        {
            ExcelWorksheet worksheet = package.Workbook.Worksheets["Messages"];
            if (worksheet != null)
            {
                int rowCount = worksheet.Dimension.Rows;

                for (int row = 2; row <= rowCount; row++)
                {
                    if (worksheet.Cells["A" + row].Value != null && worksheet.Cells["A" + row].Value.ToString() == id.ToString())
                    {
                        Console.Write("Entrez le nouveau message (20 caractères maximum) : ");
                        string newMessage = Console.ReadLine();

                        if (newMessage.Length <= 20)
                        {
                            worksheet.Cells["B" + row].Value = newMessage;
                            package.Save();

                            Console.WriteLine("Message modifié avec succès.");
                            return;
                        }
                        else
                        {
                            Console.WriteLine("Le message dépasse la limite de 20 caractères. Veuillez réessayer.");
                            return;
                        }
                    }
                }

                Console.WriteLine("ID invalide ou message inexistant. Veuillez réessayer.");
            }
            else
            {
                Console.WriteLine("Aucun message n'est disponible. Veuillez en ajouter un avant de le modifier.");
            }
        }
    }

    static void DeleteMessage()
    {
        Console.Write("Entrez l'ID du message à supprimer : ");
        int id = int.Parse(Console.ReadLine());

        using (var package = new ExcelPackage(new FileInfo(filePath)))
        {
            ExcelWorksheet worksheet = package.Workbook.Worksheets["Messages"];
            if (worksheet != null)
            {
                int rowCount = worksheet.Dimension.Rows;

                for (int row = 2; row <= rowCount; row++)
                {
                    if (worksheet.Cells["A" + row].Value != null && worksheet.Cells["A" + row].Value.ToString() == id.ToString())
                    {
                        worksheet.DeleteRow(row);
                        package.Save();

                        Console.WriteLine("Message supprimé avec succès.");
                        return;
                    }
                }

                Console.WriteLine("ID invalide ou message inexistant. Veuillez réessayer.");
            }
            else
            {
                Console.WriteLine("Aucun message n'est disponible. Veuillez en ajouter un avant de le supprimer.");
            }
        }
    }

    static void AssignTags()
    {
        Console.Write("Entrez l'ID du message auquel vous souhaitez affecter des tags : ");
        int id = int.Parse(Console.ReadLine());

        using (var package = new ExcelPackage(new FileInfo(filePath)))
        {
            ExcelWorksheet worksheet = package.Workbook.Worksheets["Messages"];
            if (worksheet != null)
            {
                int rowCount = worksheet.Dimension.Rows;

                for (int row = 2; row <= rowCount; row++)
                {
                    if (worksheet.Cells["A" + row].Value != null && worksheet.Cells["A" + row].Value.ToString() == id.ToString())
                    {
                        Console.Write("Entrez les tags séparés par des virgules : ");
                        string tagsInput = Console.ReadLine();
                        string[] newTags = tagsInput.Split(',');

                        worksheet.Cells["C" + row].Value = string.Join(",", newTags);
                        package.Save();

                        Console.WriteLine("Tags affectés avec succès.");
                        return;
                    }
                }

                Console.WriteLine("ID invalide ou message inexistant. Veuillez réessayer.");
            }
            else
            {
                Console.WriteLine("Aucun message n'est disponible. Veuillez en ajouter un avant d'affecter des tags.");
            }
        }
    }

    static void UnassignTags()
    {
        Console.Write("Entrez l'ID du message duquel vous souhaitez désaffecter des tags : ");
        int id = int.Parse(Console.ReadLine());

        using (var package = new ExcelPackage(new FileInfo(filePath)))
        {
            ExcelWorksheet worksheet = package.Workbook.Worksheets["Messages"];
            if (worksheet != null)
            {
                int rowCount = worksheet.Dimension.Rows;

                for (int row = 2; row <= rowCount; row++)
                {
                    if (worksheet.Cells["A" + row].Value != null && worksheet.Cells["A" + row].Value.ToString() == id.ToString())
                    {
                        worksheet.Cells["C" + row].Value = null;
                        package.Save();

                        Console.WriteLine("Tags désaffectés avec succès.");
                        return;
                    }
                }

                Console.WriteLine("ID invalide ou message inexistant. Veuillez réessayer.");
            }
            else
            {
                Console.WriteLine("Aucun message n'est disponible. Veuillez en ajouter un avant de désaffecter des tags.");
            }
        }
    }
}
