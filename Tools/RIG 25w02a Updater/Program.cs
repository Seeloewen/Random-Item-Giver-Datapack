using System.Text;
using System.Text.RegularExpressions;
using System.Globalization;
using System;

#pragma warning disable CS8604 //Possible null argument - don't care enough to implement all the checks, so I'll just suppress it

//Entry
Console.WriteLine("Welcome to the RIG 25w02a Updater by Seeloewen - Version 1.0.0 (15.01.2025).\n" +
    "This software can be used to update the text messages to the new format introduced in 25w02a.\n\n" +
    "There should not be any data loss when converting, however you should always back-up your files before doing so. The creator is not liable for any damage caused.\n\n" +
    "The following options are available:\n" +
    "1 - Full datapack\n" +
    "2 - Single file\n" +
    "3 - Single message\n\n" +
    "Please enter the number for what you want to convert:");

SelectOption(int.Parse(Console.ReadLine()));

Console.WriteLine("\nPress any key to exit...");
Console.ReadKey();

static void SelectOption(int option)
{
    switch (option)
    {
        case 1:
            Console.WriteLine("\nEnter the datapack path:");
            ConvertDatapack(Console.ReadLine());
            Console.WriteLine("\nConversion completed, wrote changes to datapack.");
            break;
        case 2:
            Console.WriteLine("\nEnter the file path:");
            ConvertFile(Console.ReadLine());
            Console.WriteLine("\nConversion completed, wrote changes to file.");
            break;
        case 3:
            Console.WriteLine("\nEnter the message:");
            Console.WriteLine("\nConverted Message:\n" + ConvertMessage(Console.ReadLine()) + "\n\nConversion completed.");
            break;
        default:
            Console.WriteLine("Invalid option. Please enter a valid number.");
            SelectOption(int.Parse(Console.ReadLine()));
            break;
    }
}

static void ConvertFile(string path)
{
    string[] lines = File.ReadAllLines(path);

    for (int i = 0; i < lines.Length; i++)
    {
        if (lines[i].Contains("tellraw"))
        {
            lines[i] = ConvertMessage(lines[i]);
        }
    }

    File.WriteAllLines(path, lines);
}

static string ConvertMessage(string message)
{
    //Regex patterns and replacements
    string colorPattern = @"""color"":""(.*?)""";
    string textPattern = @"""text"":""(.*?)""";
    string rawStringPattern = @"tellraw @(.*?) ""(.*?)""";

    string colorReplacement = @"color: '$1'";
    string textReplacement = @"text: '$1'";
    string rawStringReplacement = @"tellraw @$1 {text: '$2'}";

    //If message contains the no longer supported new line escape, replace all escapes with empty space strings
    if (message.Contains("\\n"))
    {
        return ConvertNewLines(message);
    }

    //Convert all ' before replacing anything else
    message = message.Replace("\'", "`");

    //Conversion to new snbt format
    message = Regex.Replace(message, colorPattern, colorReplacement);
    message = Regex.Replace(message, textPattern, textReplacement);
    message = Regex.Replace(message, rawStringPattern, rawStringReplacement);

    //Reflect hover event and click event changes
    message = message.Replace("\"action\":\"show_text\",\"contents\":", "action: 'show_text', value: ")
        .Replace("\"contents\"", "text")
        .Replace("\"hoverEvent\"", "hover_event")
        .Replace("\"clickEvent\"", "click_event")
        .Replace("\"open_url\",\"value\":", "'open_url', url: ")
        .Replace("\"suggest_command\",\"value\":", "'suggest_command', command: ")
        .Replace("\"run_command\",\"value\":", "'run_command', command: ");

    //Also account for the need to convert unicode codes
    message = ConvertUnicode(message);

    return message.Replace("[\"\",", "[")
        .Replace("\"", "\'");
}

static void ConvertDatapack(string datapack)
{
    CheckFolder(datapack);
}

static void CheckFolder(string folder)
{
    //Convert all files in the folder
    foreach (string file in Directory.GetFiles(folder))
    {
        if (Path.GetExtension(file) == ".mcfunction")
        {
            ConvertFile(file);
        }
    }

    //Go recursively through all folders
    foreach (string subFolder in Directory.GetDirectories(folder))
    {
        CheckFolder(subFolder);
    }
}

static string ConvertNewLines(string message)
{
    int newLineAmount = 0;

    for (int i = 0; i < message.Length; i++)
    {
        if (message[i] == '\\' && message[i + 1] == 'n')
        {
            newLineAmount++;
        }
    }

    StringBuilder sb = new StringBuilder();
    for (int i = 0; i < newLineAmount; i++)
    {
        sb.Append("tellraw @s {text: \"\"}\n");
    }

    return sb.ToString();
}

static string ConvertUnicode(string message)
{
    for (int i = 0; i < message.Length; i++)
    {
        if (message[i] == '\\' && message[i + 1] == 'u')
        {
            //Build string from chars
            StringBuilder unicode = new StringBuilder();
            for (int j = 2; j < 6; j++) unicode.Append(message[i + j]);

            //Convert string to int and to unicode
            int code = int.Parse(unicode.ToString(), NumberStyles.HexNumber);

            message = message.Remove(i, 6)
                .Insert(i, char.ConvertFromUtf32(code));

        }

    }

    return message;
}