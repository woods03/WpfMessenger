using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Collections.ObjectModel;
using Newtonsoft.Json.Serialization;
using Newtonsoft.Json;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.IO;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace WpfMessenger
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public ObservableCollection<Message> msgs { get; set; }

        public MainWindow()
        {
            if (File.Exists("msgsss.json"))
            {
                msgs = DeserializeJson();
            }
            else { msgs = new ObservableCollection<Message>(); }
            InitializeComponent();
            this.DataContext = this;
        }

        private void SerializeJson()
        {
            using (StreamWriter file = File.CreateText("msgsss.json"))
            {
                JsonSerializer serializer = new JsonSerializer();
                serializer.Serialize(file, msgs);
            }
        }

        private ObservableCollection<Message> DeserializeJson()
        {
            ObservableCollection<Message> desMS = JsonConvert.DeserializeObject<ObservableCollection<Message>>(File.ReadAllText("msgsss.json"));
            return desMS;
        }

        private void btn_Click(object sender, RoutedEventArgs e)
        {
            sendMSG();
        }

        private void txtBox_KeyUp(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Enter)
            {
                sendMSG();
            }
        }

        private void sendMSG()
        {
            if(txtBox.Text != "")
            {
                Message msg = new Message() {};
                msg.text = txtBox.Text;
                msg.dataTime = "• " + DateTime.Now.ToShortTimeString();
                msgs.Add(msg);
                txtBox.Text = "";


                SerializeJson();
            }
        }
    }
}
