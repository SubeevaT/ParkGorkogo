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
using System.Windows.Shapes;

namespace ParkGorkogo
{
    /// <summary>
    /// Логика взаимодействия для AuthorizationPage.xaml
    /// </summary>
    public partial class AuthorizationPage : Page
    {
        public AuthorizationPage()
        {
            InitializeComponent();
        }

        private void LoginButtonClick(object sender, RoutedEventArgs e)
        {
            ParkGorkogoEntities userContext = new ParkGorkogoEntities();
            //var check = userContext.Worker.Where(top => top.PasswordWorker ==
            //  PasswordBox.Password && top.LoginWorker ==
            //  LoginBox.Text).FirstOrDefault();
            //Проверка пароля и логина
            //if (check != null)//Переход на соответствующую страницу
            //{
      //          List<int> NameRole = (from Worker in userContext.Worker
      //                                where
      // Worker.LoginWorker == LoginBox.Text
      //                                select
      //Worker.IDRole).ToList();
            //}
        }
    }
}
