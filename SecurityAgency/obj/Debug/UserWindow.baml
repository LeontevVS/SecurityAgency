   M S B A M L   `   `   `  ����I  ESecurityAgency, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:SecurityAgencySecurityAgency  5   	       SecurityAgency.UserWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:SecurityAgency     5   	   -   5          � Title$  
UserWindow��5   	   $	��450��6   $	��800��6)   .��5	      �  � ColumnDefinitions 5
   
   �� 5      �� 5      $	��100 �6   �� 5      �� 5       � RowDefinitions 5   
   �� 5      �� 5      �� 5      $��40 �6   �� 5      $��40 �6   �� 5      �� 5      .+�5   
   �� $��Пользователь��6   $��40(�6(   $��4��5      $��Center=�5      $��Center=�61   �� 5   
   $��
Логин��6   $��1��6!   $��2��61   $
��Left=�6>   $��Center=�6Y   �� 5   
   $��Пароль��6   $��1��6"   $��3��62   $
��Left=�6?   $��Center=�6Z   �� 5   
   -   5         ��Name$ tbLogin��5      $��2��6:   $��2��6J   $��Center=�6W   $��20��6r   ��6#   �� *Login+6r   �� 5   
   -   5        $ 
tbPassword��5      $��2��6@   $��3��6P   $��Center=�6]   $��20��6x   ��6&   �� *
Password+6x   �� 5   
   $��6��6   $��30��5       $��4��5!       �� Orientation$ 
Horizontal=�5"      $��Center=�5#      .+�5$      �� -   5         ��Name$ BtnSave��5'      $��Сохранить��5$      $	��100��5%      $��30��5&      $��0,0,5,0q�5)      �� 5*      -   5        $ BtnClose��5-      $��Закрыть��5*      $	��100��5+      $��30��5,      $��5,0,5,0q�5/      �� 50      -   5        $ BtnSaveAndClose��53      $*��$Сохранить и закрыть��50      $	��130��51      $��30��52      $��5,0,0,0q�55      56      57      58      