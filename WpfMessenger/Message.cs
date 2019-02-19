using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Collections.ObjectModel;
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
    public class Message
    {
        private string time;
        public string text { get; set; }

        public string dataTime
        {
            get { return time; }
            set
            {
                time = value;
            }
        }
        public Message() { }

    }
}
