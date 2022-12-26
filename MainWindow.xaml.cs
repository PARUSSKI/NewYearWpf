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
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Threading;
using System.Media;


namespace WpfNewYear
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        BlurEffect blurEffect = new BlurEffect();
       
        public MainWindow()
        {
            InitializeComponent();

            SoundPlayer player = new SoundPlayer(@"Sound\YearSound.wav");
            player.Load();
            player.PlayLooping();
        }
        

        private void present_MouseDown(object sender, MouseButtonEventArgs e)
        {
            var animation = new DoubleAnimation();
            animation.From = 0;
            animation.To = 250;
            animation.Duration = new Duration(TimeSpan.FromSeconds(1));
            present.BeginAnimation(WidthProperty, animation);
            present.BeginAnimation(HeightProperty, animation);
            

            blurEffect.Radius = 10;
            back.Effect = blurEffect;

            text2.SetValue(Canvas.LeftProperty, 230d);
            text2.Content = "Кролик передал вам подарок!";

            open.Visibility = Visibility.Visible;
        }

        private void open_Click(object sender, RoutedEventArgs e)
        {
            blurEffect.Radius = 10;
            rabb.Effect = blurEffect;
            text2.Effect = blurEffect;
            open.Effect = blurEffect;
            present.Effect = blurEffect;
        }
    }
}
