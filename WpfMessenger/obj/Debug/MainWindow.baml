   M S B A M L   `   `   `  ����G  CWpfMessenger, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:WpfMessengerWpfMessenger  5   	       WpfMessenger.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:WpfMessenger     5   	   $	��600��5   K   $	��400��6X     � Title  6	   ��  �� ElementName$ txtBox�� �� Path$
 Text� �� StringFormat$	 {0}��.��5
      � ��5   
   �� 5       �� ImageSource$ /Image/Background.jpg��6    j� Stretch$ UniformToFill=�6>    � RowDefinitions 5   
   �� 5      �� 5      $��50 �6   .+�5   
   �� -   5         ��Name$ MessangesListB��5   0   $��Stretch=�6   $��Disabled=�5      
������ $��0q�5      ��5      �� *msgs+��5      �� 5      .R�5      �� $
��Left=�6!   5       ��5"      �� 5#      .R�5$      � .+�5%      ��  �� Orientation$ Vertical=�6%   .+�5&      �� 	 �� CornerRadius$	 10��6%   
�������$��5q�6K   ._�5'   "   � 
�������.+�5(   &   �� $��5,5,5,5q�60   
���   �$��14(�6T   ��6b   �� *text+5)   #   5*      �� 5+      $��5,5,5,5q�6(   
�������$��10(�6L   $��Right=�6t   ��6Z   �� *
dataTime+6t   5,      5-      5.      50      ]� 54   
   $��1��6   
������ ��. $��RightToLeft=�55   )   $��50��56      .+�58      �� -   5        $��40��58      $	��✉��6    
���   �$��25(�6E   $��40��59      5;      � 5=       5>      �� 5?      $	��16* �6$   �� 5@      $��9* �6$   .+�5B      �� 
�������
 �� RadiusY$
 15��5C       �� RadiusX$ 15��6!   $��5,5,5,5q�5D      $��2��6%   �� 5F      -   5         ��Name$ txtBox��5F      
������  �� TextAlignment$ Right=�5H      $��14(�5I      $
��16,8q�5J      $��0q�5K       �� TextWrapping$
 Wrap=�5L      $��2��6.   6?   5N      5R      5V      5W      