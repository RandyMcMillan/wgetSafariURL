FasdUAS 1.101.10   ��   ��    k             l     ��  ��    i chttp://www.alfredforum.com/topic/2013-how-to-get-frontmost-tab�s-url-and-title-of-various-browsers/     � 	 	 � h t t p : / / w w w . a l f r e d f o r u m . c o m / t o p i c / 2 0 1 3 - h o w - t o - g e t - f r o n t m o s t - t a b  s - u r l - a n d - t i t l e - o f - v a r i o u s - b r o w s e r s /   
  
 l     ��������  ��  ��        l     ��  ��    { u This example will return both the URL and title for the frontmost tab of the active browser, separated by a newline.     �   �   T h i s   e x a m p l e   w i l l   r e t u r n   b o t h   t h e   U R L   a n d   t i t l e   f o r   t h e   f r o n t m o s t   t a b   o f   t h e   a c t i v e   b r o w s e r ,   s e p a r a t e d   b y   a   n e w l i n e .      l     ��  ��    �  Keep in mind that by using `using terms from`, we�re basically requiring that referenced browser to be available on the system     �   �   K e e p   i n   m i n d   t h a t   b y   u s i n g   ` u s i n g   t e r m s   f r o m ` ,   w e  r e   b a s i c a l l y   r e q u i r i n g   t h a t   r e f e r e n c e d   b r o w s e r   t o   b e   a v a i l a b l e   o n   t h e   s y s t e m      l     ��  ��    j d (i.e., to use this on "Google Chrome Canary" or "Chromium", "Google Chrome" needs to be installed).     �   �   ( i . e . ,   t o   u s e   t h i s   o n   " G o o g l e   C h r o m e   C a n a r y "   o r   " C h r o m i u m " ,   " G o o g l e   C h r o m e "   n e e d s   t o   b e   i n s t a l l e d ) .      l     ��  ��    � � This is required to be able to use a variable in `tell application`. If it is undesirable, the accompanying example should be used instead.     �     T h i s   i s   r e q u i r e d   t o   b e   a b l e   t o   u s e   a   v a r i a b l e   i n   ` t e l l   a p p l i c a t i o n ` .   I f   i t   i s   u n d e s i r a b l e ,   t h e   a c c o m p a n y i n g   e x a m p l e   s h o u l d   b e   u s e d   i n s t e a d .     !   l     ��������  ��  ��   !  " # " l     $���� $ O     % & % r     ' ( ' 6    ) * ) n    
 + , + 1    
��
�� 
pnam , 4   �� -
�� 
prcs - m    ����  * =    . / . 1    ��
�� 
pisf / m    ��
�� boovtrue ( o      ���� 0 frontapp frontApp & m      0 0�                                                                                  sevs  alis    �  DSMacBookAir               �-zmH+   ,&�System Events.app                                               /9 ����        ����  	                CoreServices    �-��      ����     ,&� ,&� ,&�  =DSMacBookAir:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    D S M a c B o o k A i r  -System/Library/CoreServices/System Events.app   / ��  ��  ��   #  1 2 1 l     ��������  ��  ��   2  3 4 3 l   � 5���� 5 Z    � 6 7 8 9 6 G    " : ; : l    <���� < =     = > = o    ���� 0 frontapp frontApp > m     ? ? � @ @  S a f a r i��  ��   ; l     A���� A =      B C B o    ���� 0 frontapp frontApp C m     D D � E E  W e b k i t��  ��   7 w   % H F G F k   ' H H H  I J I O  ' 7 K L K r   . 6 M N M n   . 4 O P O 1   2 4��
�� 
pURL P 4  . 2�� Q
�� 
docu Q m   0 1����  N o      ���� 0 currenttaburl currentTabUrl L 4   ' +�� R
�� 
capp R o   ) *���� 0 frontapp frontApp J  S�� S O  8 H T U T r   ? G V W V n   ? E X Y X 1   C E��
�� 
pnam Y 4  ? C�� Z
�� 
docu Z m   A B����  W o      ���� "0 currenttabtitle currentTabTitle U 4   8 <�� [
�� 
capp [ o   : ;���� 0 frontapp frontApp��   G�                                                                                  sfri  alis    N  DSMacBookAir               �-zmH+   ,&�
Safari.app                                                      ,�(ѭ�u        ����  	                Applications    �-��      Ѯ�     ,&�  %DSMacBookAir:Applications: Safari.app    
 S a f a r i . a p p    D S M a c B o o k A i r  Applications/Safari.app   / ��   8  \ ] \ G   K b ^ _ ^ G   K X ` a ` l  K N b���� b =   K N c d c o   K L���� 0 frontapp frontApp d m   L M e e � f f  G o o g l e   C h r o m e��  ��   a l  Q V g���� g =   Q V h i h o   Q R���� 0 frontapp frontApp i m   R U j j � k k ( G o o g l e   C h r o m e   C a n a r y��  ��   _ l  [ ` l���� l =   [ ` m n m o   [ \���� 0 frontapp frontApp n m   \ _ o o � p p  C h r o m i u m��  ��   ]  q�� q w   e � r s r k   i � t t  u v u O  i � w x w r   p � y z y n   p ~ { | { 1   z ~��
�� 
URL  | n   p z } ~ } 1   v z��
�� 
acTa ~ 4  p v�� 
�� 
cwin  m   t u����  z o      ���� 0 currenttaburl currentTabUrl x 4   i m�� �
�� 
capp � o   k l���� 0 frontapp frontApp v  ��� � O  � � � � � r   � � � � � n   � � � � � 1   � ���
�� 
pnam � n   � � � � � 1   � ���
�� 
acTa � 4  � ��� �
�� 
cwin � m   � �����  � o      ���� "0 currenttabtitle currentTabTitle � 4   � ��� �
�� 
capp � o   � ����� 0 frontapp frontApp��   s�                                                                                  rimZ  alis    h  DSMacBookAir               �-zmH+   ,&�Google Chrome.app                                               c��b�R        ����  	                Applications    �-��      �c	�     ,&�  ,DSMacBookAir:Applications: Google Chrome.app  $  G o o g l e   C h r o m e . a p p    D S M a c B o o k A i r  Applications/Google Chrome.app  / ��  ��   9 L   � � � � m   � � � � � � � d Y o u   n e e d   a   s u p p o r t e d   b r o w s e r   a s   y o u r   f r o n t m o s t   a p p��  ��   4  � � � l     ��������  ��  ��   �  � � � l  � � ����� � L   � � � � b   � � � � � b   � � � � � o   � ����� 0 currenttaburl currentTabUrl � m   � � � � � � �  
 � o   � ����� "0 currenttabtitle currentTabTitle��  ��   �  � � � l     ��������  ��  ��   �  ��� � l     ��������  ��  ��  ��       �� � � ���   � ����
�� .aevtoappnull  �   � ****�� 0 frontapp frontApp � �� ����� � ���
�� .aevtoappnull  �   � **** � k     � � �  " � �  3 � �  �����  ��  ��   �   �  0���� ����� ? D�� G���������� e j o s������ � �
�� 
prcs
�� 
pnam �  
�� 
pisf�� 0 frontapp frontApp
�� 
bool
�� 
capp
�� 
docu
�� 
pURL�� 0 currenttaburl currentTabUrl�� "0 currenttabtitle currentTabTitle
�� 
cwin
�� 
acTa
�� 
URL �� �� *�k/�,�[�,\Ze81E�UO�� 
 �� �& (�Z*��/ 
*�k/�,E�UO*��/ 
*�k/�,E�UY V�� 
 	�a  �&
 	�a  �& 8a Z*��/ *a k/a ,a ,E�UO*��/ *a k/a ,�,E�UY a O�a %�% � � � �  S c r i p t   E d i t o r ascr  ��ޭ