   M S B A M L   `   `   `  ????E  AWpfNewYear, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:WpfNewYear
WpfNewYear  5   	       WpfNewYear.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   *localclr-namespace:WpfNewYear     5   	     ? WindowStartupLocation$  CenterScreen=?5   	    ? Title$% Новогодний ивент??5	   	   $	??450??6"   $	??800??6/    ? Triggers 5
      :? 5   
    :? RoutedEvent$ Loaded??6   [?5      ?? 5      -   5         ??Name$ 
MoveRabbit??5   "   .??5      ??  g? DesiredFrameRate$ 60X?6!    ?? TargetProperty$ (Canvas.Left)?6@    ?? 
TargetName$
 rabb??6_   .??5      W?  W? From$	 150X?6*   		 W? To$		 500X?65   
 g? AutoReverse
 .  g? RepeatBehavior$ Forever??5   *    g? Duration$ 0:0:1D?5   *   5      5      5      :? 5   
   $ 	MouseDown??6   .[?5      ??  ?? BeginStoryboardName$ 
MoveRabbit??6   5      :? 5   
   $ Button.Click??6   .[?5      ?? .??5      ?? .??5      W? $ newYearText??5       $ (Label.Opacity)?5!      $	 0.0X?5"      $		 1.0X?6   $ 0:0:2D?6!   5#      5$      5%      :? 5'   
   $ Loaded??6   .[?5(      ?? .??5)      ?? .??5*      W? $ text2??5+      $ (Label.Opacity)?5,      $	 0.0X?5-      $		 1.0X?6   $ 0:0:1D?6!   5.      5/      50      .??54      ?? .+?55   
   ?? -   5         ??Name$
 back??55      $??Images\fon.jpg??6   $	??534??67   $	??854??6D   
 ?? Top$	 -89??6P    ?? Left$	 -18??6a   ?? 56   
   -   5         ??Name$ text2??56   (   $	??Top=?6   $=??7Останови новогоднего кролика!??67   $??20(?6_   $	 224??6m   $ 47??6   $??Cascadia Code)?6?   ??57      ?? 58       ?? EndPoint$ 0.5,1&?6&    ?? 
StartPoint$ 0.5,0&?67   .??59      ?  ? Color$ 	#FF04B6D7??6#   ? 5:      $ 	#FFBFA4FF??6#    ? Offset$ 1Q?65   5;      5=      ?? 5>   
   -   5        $
 rabb??5>   .   $	??140??6<   $	??140??6H   $	 225??6U   $ 61??6f   $??Images\rabbit.png??6w   6?   ?? 5?   
   -   5        $ present??5?      $??Images\present.png??6!   $??0??6=   $??0??6H   $	 258??6R   $	 113??6d   ?? 5@   
   -   5         ??Name$
 open??5@   $   
???????$y?	Collapsed=?6E   $??34??6\   $??90??6h   $	 364??6s   $	 374??6?   $??Открыть!??6?   ??5A      ?? 5B      $ 0.5,1&?6&   $ 0.5,0&?67   .??5C      ? $	 Red??6#   ? 5D      $ 	#FFD20000??6#   $ 1Q?65   5E      5G      ?? 5I   
   -   5        $??newYearText??5I       J? Opacity$ 0Q?6   $??С Новым Годом!??60   $??90(?6I   $	 100??6W   $	 162??6i   $??Monotype Corsiva)?6z   $
??Bold"?6?    J? RenderTransformOrigin$ 0.497,0.522&?6?   $??Center=?6?   $	??Top=?6?   ??5J      ?? 5K      $ 0.5,1&?6&   $ 0.5,0&?67   .??5L      ? $ 	#FF04B6D7??6#   ? 5M      $ 	#FFBFA4FF??6#   $ 1Q?65   5N       J? Effect 5P      3  -System.Windows.Media.Effects.DropShadowEffect  5Q      5S      5U      5W      