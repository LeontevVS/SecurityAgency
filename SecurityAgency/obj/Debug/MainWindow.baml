   M S B A M L   `   `   `  ����I  ESecurityAgency, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:SecurityAgencySecurityAgency  5   	       SecurityAgency.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:SecurityAgency     5   	     � Title$  
MainWindow��5   	   $	��450��6   $	��800��6)   .��5	      �  � RowDefinitions 5
   
   �� 5      �� 5      $��31 �6   .+�5   
   ��  �� Orientation$ 
Horizontal=�6   $��1��6.   $��Center=�6;   .+�5      �� -   5         ��Name$ 
Btn_Create��5      $��Создать��6)   $��	15,3,15,3q�6;   6N   5      �� 5   
   -   5         ��Name$ TabCtrl��5      .@�5      �� -   5         ��Name$ TabServices��5      $��Услуги��6+   .��5      &   System.Windows.Controls.DataGrid  -   5          Name$ DGridServices��5      $��0��62      AutoGenerateColumns .     
IsReadOnly . ��5      �� 5      	 �� 
TargetType)  #System.Windows.Controls.DataGridRow"	  6    .�5      -   5        5      
   Columns
 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Заказчик��6-      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6b   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6?   �� *Customer1.Name+6b     5      $ Услуга��6-   $ * 6Z    6=   �� *
Services+6Z     5      $ Цена��6-   $ * 6U    6;   �� *Price+6U     5      $ Дата��6-   $ * 6;    5       `� 5!   "    �� StringFormat$ {0}.{1}.{2} {3}:{4}��6/   .1�5"   &   ��  �� Path$ Date.Day�6.   �� 5#   &   $ 
Date.Month�6.   �� 5$   &   $ 	Date.Year�6.   �� 5%   &   $ 	Date.Hour�6.   �� 5&   &   $ Date.Minute�6.   5'   #   5)      5+      5,      �� 5.      -   5        $ TabCustomers��5.      $��Заказчики��6,   .��5/        -   5        $ DGridCustomers��5/      $��0��63    .   . ��50      �� 51      "	  6    .�52      -   5        53      
 55        56      $ Наименование��6-   $ * 6\    6C   �� *Name+6\     57      $ 
Адрес��6-   $ * 6W    6<   �� *Adress+6W     58      $ Телефон��6-   $ * 6`    6>   �� *ContactNumber+6`     59      $ Email��6-   $ * 6V    6<   �� *Email+6V   5;      5<      �� 5>      -	   5        $ TabUsers��5>      $��Пользователи��6(   .��5?        -
   5        $ 
DGridUsers��5?      $��0��6/    .   . ��5@      �� 5A      "	  6    .�5B      -   5        5C      
 5E        5F      $ 
Логин��6-   $ * 6V    6<   �� *Login+6V     5G      $ Пароль��6-   $ * 6Z    6=   �� *
Password+6Z   5I      5J      5L      5M      5N      