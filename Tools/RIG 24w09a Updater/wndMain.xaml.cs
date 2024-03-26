using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.IO;
using System.ComponentModel;

namespace RIG_24w09a_Updater
{

    public partial class MainWindow : Window
    {
        System.Windows.Forms.FolderBrowserDialog fbdDatapack = new System.Windows.Forms.FolderBrowserDialog();
        BackgroundWorker bgwUpdater = new BackgroundWorker();
        string datapack = "";

        //-- Constructor --//

        public MainWindow()
        {
            InitializeComponent();
            bgwUpdater.DoWork += bgwUpdater_DoWork;
            bgwUpdater.RunWorkerCompleted += bgwUpdater_RunWorkerCompleted;
            bgwUpdater.ProgressChanged += bgwUpdater_ProgressChanged;
            bgwUpdater.WorkerReportsProgress = true;
            fbdDatapack.Description = "Select the datapack that you want to update.";
        }

        //-- Event Handlers --//

        private void bgwUpdater_DoWork(object s, DoWorkEventArgs args)
        {
            string[] directoryList = Directory.GetDirectories(datapack); ;
            foreach (string dir in directoryList)
            {
                string[] fileList;
                fileList = Directory.GetFiles(dir);

                foreach (string fi in fileList)
                {
                    string fileName = Path.GetFileName(fi);
                    UpdateLootTable(fi, fileName);
                    bgwUpdater.ReportProgress(0);
                }
            }
        }

        private void bgwUpdater_RunWorkerCompleted(object s, RunWorkerCompletedEventArgs args)
        {
            pbUpdater.Value = 100;
            pbUpdater.Visibility = Visibility.Hidden;
            btnUpdateDatapack.Visibility = Visibility.Visible;
            btnBrowseDatapack.IsEnabled = true;
            Log("The loot tables were successfully updated.");
            MessageBox.Show("Your loot tables were updated! You should now be able to use your datapack on 24w09a and above. Please check the log for any errors.", "Success", MessageBoxButton.OK, MessageBoxImage.Information);
        }
        private void bgwUpdater_ProgressChanged(object s, ProgressChangedEventArgs progress)
        {
            //Report worker progress to progress bar
            pbUpdater.Value += 0.92;
        }

        private void btnBrowseDatapack_Click(object sender, RoutedEventArgs e)
        {
            fbdDatapack.ShowDialog();
            tbDatapack.Text = fbdDatapack.SelectedPath;
        }

        private void btnUpdateDatapack_Click(object sender, RoutedEventArgs e)
        {
            if (string.IsNullOrEmpty(tbDatapack.Text) == false)
            {
                if (Directory.Exists($"{tbDatapack.Text}\\data\\randomitemgiver\\loot_tables"))
                {
                    if (CheckDatapackVersion() == true)
                    {
                        datapack = $"{tbDatapack.Text}\\data\\randomitemgiver\\loot_tables";
                        pbUpdater.Value = 0;
                        pbUpdater.Visibility = Visibility.Visible;
                        btnUpdateDatapack.Visibility = Visibility.Hidden;
                        btnBrowseDatapack.IsEnabled = false;
                        bgwUpdater.RunWorkerAsync();
                    }
                }
                else
                {
                    MessageBox.Show("Please select a valid datapack.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                }
            }
            else
            {
                MessageBox.Show("Please select a datapack.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        //-- Custom Methods --//

        private void UpdateLootTable(string file, string fileName)
        {
            try
            {
                string[] originalContent = File.ReadAllLines(file);
                List<string> newContent = new List<string>();

                foreach (string item in originalContent)
                {
                    string updatedItem = "";
                    if (item.Contains("\"set_nbt\""))
                    {
                        updatedItem = "                        \"function\": \"minecraft:set_components\",";
                    }
                    else if (item.Contains("\"tag\":"))
                    {
                        updatedItem = "                        \"components\": {\n                          " + GetSpecificComponent(fileName, item) + "\n                        }";
                    }
                    else
                    {
                        updatedItem = item;
                    }

                    newContent.Add(updatedItem);
                }
                File.WriteAllLines(file, newContent);

                Log($"Updated loot table {file}.");
            }
            catch (Exception ex)
            {
                Log($"Failed to update loot table {file}: {ex}");
            }

        }

        private string GetSpecificComponent(string fileName, string item)
        {
            switch (fileName)
            {
                case "enchanted_books.json":
                    string[] nbt = item.Replace("\"tag\": \"{StoredEnchantments:[{id:", "").Replace("lvl:", "").Replace("}]}\"", "").Replace(" ", "").Split(',');
                    string enchantment = nbt[0];
                    if (enchantment == "sweeping")
                    {
                        enchantment = "sweeping_edge";
                    }
                    string level = nbt[1];
                    return "\"minecraft:stored_enchantments\": {\n                            \"minecraft:" + enchantment + "\": " + level + "\n                          }";
                case "goat_horns.json":
                    string horn = item.Replace("\"tag\": \"{instrument:\\\"minecraft:", "").Replace("\\\"}\"", "").Replace(" ", "");
                    return "\"minecraft:instrument\": \"minecraft:" + horn + "\"";
                case "lingering_potions.json":
                    string lingeringpotion = item.Replace("\"tag\": \"{Potion:\\\"minecraft:", "").Replace("\\\"}\"", "").Replace(" ", "");
                    return "\"minecraft:potion_contents\": {\n                            \"potion\": \"minecraft:" + lingeringpotion + "\"\n                          }";
                case "paintings.json":
                    string painting = item.Replace("\"tag\": \"{EntityTag:{variant:\\\"minecraft:", "").Replace("\\\"}}\"", "").Replace(" ", "");
                    return "\"minecraft:entity_data\": {\n                            \"id\": \"minecraft:painting\",\n                  \"variant\": \"minecraft:" + painting + "\"\n                          }";
                case "potions.json":
                    string potion = item.Replace("\"tag\": \"{Potion:\\\"minecraft:", "").Replace("\\\"}\"", "").Replace(" ", "");
                    return "\"minecraft:potion_contents\": {\n                            \"potion\": \"minecraft:" + potion + "\"\n                          }";
                case "splash_potions.json":
                    string splashpotion = item.Replace("\"tag\": \"{Potion:\\\"minecraft:", "").Replace("\\\"}\"", "").Replace(" ", "");
                    return "\"minecraft:potion_contents\": {\n                            \"potion\": \"minecraft:" + splashpotion + "\"\n                          }";
                case "suspicious_stews.json":
                    string[] susnbt = item.Replace("\"tag\": \"{Effects:[{EffectId:", "").Replace("EffectDuration:", "").Replace("}]}\"", "").Replace(" ", "").Split(',');
                    string effect = susnbt[0];
                    string duration = susnbt[1];
                    return "\"minecraft:suspicious_stew_effects\": [\n                            {\n                              \"id\": \"minecraft:" + ConvertEffect(effect) + "\",\n                              \"duration\": " + duration + "\n                            }\n                          ]";
                case "tipped_arrows.json":
                    string tippedarrow = item.Replace("\"tag\": \"{Potion:\\\"minecraft:", "").Replace("\\\"}\"", "").Replace(" ", "");
                    return "\"minecraft:potion_contents\": {\n                            \"potion\": \"minecraft:" + tippedarrow + "\"\n                          }";
                default:
                    return "";
            }
        }

        private string ConvertEffect(string effect)
        {
            switch (effect)
            {
                case "15":
                    return "blindness";
                case "12":
                    return "fire_resistance";
                case "8":
                    return "jump_boost";
                case "16":
                    return "night_vision";
                case "10":
                    return "regeneration";
                case "19":
                    return "poison";
                case "23":
                    return "saturation";
                case "18":
                    return "weakness";
                case "20":
                    return "wither";
                default:
                    MessageBox.Show("A critical error occured while converting suspicious stew effects. This could've lead to corruption. Please check your loot table.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                    Log("A critical error occured while converting suspicious stew effects. Please check your loot tables for corruption.");
                    return "";
            }
        }

        private bool CheckDatapackVersion()
        {
            string datapackVersion = "unknown";
            string mcVersion = "unknown";
            string versionBranch = "unknown";

            if (File.Exists($"{tbDatapack.Text}\\Updater.txt"))
            {
                //Go through the file to get the variables
                string[] file = File.ReadAllLines($"{tbDatapack.Text}\\Updater.txt");
                for (int i = 0; i < file.Length; i++)
                {
                    //Only read the line if it's not a comment
                    if (!file[i].Contains("#"))
                    {
                        if (file[i].Contains("datapack_version"))
                        {
                            datapackVersion = file[i].Replace("datapack_version=", "");
                        }
                        else if (file[i].Contains("version_branch"))
                        {
                            versionBranch = file[i].Replace("version_branch=", "");
                        }
                        else if (file[i].Contains("mc_version"))
                        {
                            mcVersion = file[i].Replace("mc_version=", "");
                        }
                    }
                }

                Log($"Detected version {datapackVersion} for {mcVersion} ({versionBranch}).");
            }

            if (datapackVersion == "1.4.1" || datapackVersion == "unknown")
            {
                Log("Could not detect datapack version. This probably means that the datapack is not supported.");
                MessageBoxResult dialogResult = MessageBox.Show("You are trying to update a datapack that is unsupported by the software. Doing so may result in corruption, continue at your own risk. Are you that you want to update?", "Warning", MessageBoxButton.YesNo, MessageBoxImage.Warning);
                if (dialogResult == MessageBoxResult.Yes)
                {
                    return true;
                }
                else if (dialogResult == MessageBoxResult.No)
                {
                    return false;
                }
                else
                {
                    return false;
                }
            }
            else
            {
                return true;
            }
        }

        private void Log(string message)
        {
            Dispatcher.Invoke(delegate ()
            {
                tbOutput.AppendText($"[{DateTime.Now}] {message}\n");
            });
        }
    }
}
