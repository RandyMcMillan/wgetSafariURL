FasdUAS 1.101.10   ��   ��    k             l     ��  ��    i chttp://www.alfredforum.com/topic/2013-how-to-get-frontmost-tab�s-url-and-title-of-various-browsers/     � 	 	 � h t t p : / / w w w . a l f r e d f o r u m . c o m / t o p i c / 2 0 1 3 - h o w - t o - g e t - f r o n t m o s t - t a b  s - u r l - a n d - t i t l e - o f - v a r i o u s - b r o w s e r s /   
  
 l     ��������  ��  ��        l     ��  ��    { u This example will return both the URL and title for the frontmost tab of the active browser, separated by a newline.     �   �   T h i s   e x a m p l e   w i l l   r e t u r n   b o t h   t h e   U R L   a n d   t i t l e   f o r   t h e   f r o n t m o s t   t a b   o f   t h e   a c t i v e   b r o w s e r ,   s e p a r a t e d   b y   a   n e w l i n e .      l     ��  ��    �  Keep in mind that by using `using terms from`, we�re basically requiring that referenced browser to be available on the system     �   �   K e e p   i n   m i n d   t h a t   b y   u s i n g   ` u s i n g   t e r m s   f r o m ` ,   w e  r e   b a s i c a l l y   r e q u i r i n g   t h a t   r e f e r e n c e d   b r o w s e r   t o   b e   a v a i l a b l e   o n   t h e   s y s t e m      l     ��  ��    j d (i.e., to use this on "Google Chrome Canary" or "Chromium", "Google Chrome" needs to be installed).     �   �   ( i . e . ,   t o   u s e   t h i s   o n   " G o o g l e   C h r o m e   C a n a r y "   o r   " C h r o m i u m " ,   " G o o g l e   C h r o m e "   n e e d s   t o   b e   i n s t a l l e d ) .      l     ��  ��    � � This is required to be able to use a variable in `tell application`. If it is undesirable, the accompanying example should be used instead.     �     T h i s   i s   r e q u i r e d   t o   b e   a b l e   t o   u s e   a   v a r i a b l e   i n   ` t e l l   a p p l i c a t i o n ` .   I f   i t   i s   u n d e s i r a b l e ,   t h e   a c c o m p a n y i n g   e x a m p l e   s h o u l d   b e   u s e d   i n s t e a d .     !   l     ��������  ��  ��   !  " # " l     $���� $ r      % & % m      ' ' � ( (  S a f a r i & o      ���� 
0 safari  ��  ��   #  ) * ) l     ��������  ��  ��   *  + , + l   4 -���� - Z    4 . /�� 0 . l    1���� 1 =     2 3 2 o    ���� 
0 safari   3 m     4 4 � 5 5  S a f a r i��  ��   / k   
 / 6 6  7 8 7 w   
 - 9 : 9 k    - ; ;  < = < O    > ? > r     @ A @ n     B C B 1    ��
�� 
pURL C 4   �� D
�� 
docu D m    ����  A o      ���� 0 currenttaburl currentTabUrl ? 4    �� E
�� 
capp E o    ���� 
0 safari   =  F�� F O   - G H G r   $ , I J I n   $ * K L K 1   ( *��
�� 
pnam L 4  $ (�� M
�� 
docu M m   & '����  J o      ���� "0 currenttabtitle currentTabTitle H 4    !�� N
�� 
capp N o     ���� 
0 safari  ��   :�                                                                                  sfri  alis    N  DSMacBookAir               �-zmH+   ,&�
Safari.app                                                      ,�(ѭ�u        ����  	                Applications    �-��      Ѯ�     ,&�  %DSMacBookAir:Applications: Safari.app    
 S a f a r i . a p p    D S M a c B o o k A i r  Applications/Safari.app   / ��   8  O�� O l  . .��������  ��  ��  ��  ��   0 L   2 4 P P m   2 3 Q Q � R R d Y o u   n e e d   a   s u p p o r t e d   b r o w s e r   a s   y o u r   f r o n t m o s t   a p p��  ��   ,  S T S l     ��������  ��  ��   T  U V U l  5 7 W X Y W L   5 7 Z Z o   5 6���� 0 currenttaburl currentTabUrl X 	 & "    Y � [ [  &   " V  \ ] \ l     �� ^ _��   ^  " & currentTabTitle    _ � ` ` & "   &   c u r r e n t T a b T i t l e ]  a b a l     ��������  ��  ��   b  c�� c l     ��������  ��  ��  ��       �� d e ' f g��   d ��������
�� .aevtoappnull  �   � ****�� 
0 safari  �� 0 currenttaburl currentTabUrl�� "0 currenttabtitle currentTabTitle e �� h���� i j��
�� .aevtoappnull  �   � **** h k     7 k k  " l l  + m m  U����  ��  ��   i   j  '�� 4 :������������ Q�� 
0 safari  
�� 
capp
�� 
docu
�� 
pURL�� 0 currenttaburl currentTabUrl
�� 
pnam�� "0 currenttabtitle currentTabTitle�� 8�E�O��  *�Z*��/ 
*�k/�,E�UO*��/ 
*�k/�,E�UOPY �O� f � n n � h t t p : / / s t a c k o v e r f l o w . c o m / q u e s t i o n s / 6 7 8 0 9 1 0 / p a r s e - a - s i m p l e - p i e c e - o f - t e x t - f r o m - a - n s a p p l e e v e n t d e s c r i p t o r g � o o � c o c o a   -   P a r s e   a   s i m p l e   p i e c e   o f   t e x t   f r o m   a   N S A p p l e E v e n t D e s c r i p t o r   -   S t a c k   O v e r f l o w ascr  ��ޭ