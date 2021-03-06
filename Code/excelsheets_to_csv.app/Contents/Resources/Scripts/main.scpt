FasdUAS 1.101.10   ��   ��    k             l     ��  ��    %  Excel Spreadsheet to CSV Files     � 	 	 >   E x c e l   S p r e a d s h e e t   t o   C S V   F i l e s   
  
 l     ��  ��    %  by Scott Wilcox <scott@dor.ky>     �   >   b y   S c o t t   W i l c o x   < s c o t t @ d o r . k y >      l     ��  ��    / ) https://github.com/dordotky/applescripts     �   R   h t t p s : / / g i t h u b . c o m / d o r d o t k y / a p p l e s c r i p t s      l     ��������  ��  ��        l     ��  ��    C = Get the filename of the Excel Spreadsheet we're going to use     �   z   G e t   t h e   f i l e n a m e   o f   t h e   E x c e l   S p r e a d s h e e t   w e ' r e   g o i n g   t o   u s e      l     ����  r         m          � ! ! � M a c i n t o s h   H D : U s e r s : a a z m a n : D o c u m e n t s : T B : c a s e f i n d i n g e c o n : D a t a : p a r a m s d o c . x l s x  o      ���� 0 thefile theFile��  ��     " # " l     �� $ %��   $ F @"/Users/aazman/Documents/TB/casefindingecon/Data/paramsdoc.xlsx"    % � & & � " / U s e r s / a a z m a n / D o c u m e n t s / T B / c a s e f i n d i n g e c o n / D a t a / p a r a m s d o c . x l s x " #  ' ( ' l     �� ) *��   ) J D(choose file with prompt "Select the Excel Spreadsheet to Convert:")    * � + + � ( c h o o s e   f i l e   w i t h   p r o m p t   " S e l e c t   t h e   E x c e l   S p r e a d s h e e t   t o   C o n v e r t : " ) (  , - , l     ��������  ��  ��   -  . / . l     �� 0 1��   0 4 . The directory that will contain our CSV files    1 � 2 2 \   T h e   d i r e c t o r y   t h a t   w i l l   c o n t a i n   o u r   C S V   f i l e s /  3 4 3 l    5���� 5 r     6 7 6 m     8 8 � 9 9 x M a c i n t o s h   H D : U s e r s : a a z m a n : D o c u m e n t s : T B : c a s e f i n d i n g e c o n : D a t a : 7 o      ���� "0 outputdirectory outputDirectory��  ��   4  : ; : l     �� < =��   < ? 9(choose folder with prompt "Select Folder to Output To:")    = � > > r ( c h o o s e   f o l d e r   w i t h   p r o m p t   " S e l e c t   F o l d e r   t o   O u t p u t   T o : " ) ;  ? @ ? l     �� A B��   A 8 2"/Users/aazman/Documents/TB/casefindingecon/Data/"    B � C C d " / U s e r s / a a z m a n / D o c u m e n t s / T B / c a s e f i n d i n g e c o n / D a t a / " @  D E D l     ��������  ��  ��   E  F�� F l   � G���� G O    � H I H k    � J J  K L K l   �� M N��   M   Get Excel to activate    N � O O ,   G e t   E x c e l   t o   a c t i v a t e L  P Q P I   ������
�� .miscactvnull��� ��� null��  ��   Q  R S R l   ��������  ��  ��   S  T U T l   �� V W��   V , & Close any workbooks that we have open    W � X X L   C l o s e   a n y   w o r k b o o k s   t h a t   w e   h a v e   o p e n U  Y Z Y I   �� [��
�� .coreclosnull���    obj  [ 2   ��
�� 
X141��   Z  \ ] \ l   ��������  ��  ��   ]  ^ _ ^ l   �� ` a��   ` 0 * Ask Excel to open the theFile spreadsheet    a � b b T   A s k   E x c e l   t o   o p e n   t h e   t h e F i l e   s p r e a d s h e e t _  c d c I   �� e��
�� .aevtodocnull  �    alis e o    ���� 0 thefile theFile��   d  f g f l     ��������  ��  ��   g  h i h l     �� j k��   j B < Set maxCount to the total number of sheets in this workbook    k � l l x   S e t   m a x C o u n t   t o   t h e   t o t a l   n u m b e r   o f   s h e e t s   i n   t h i s   w o r k b o o k i  m n m r     + o p o I    )�� q��
�� .corecnte****       **** q n     % r s r 2  # %��
�� 
XwSH s 1     #��
�� 
1172��   p o      ���� 0 maxcount maxCount n  t u t l  , ,��������  ��  ��   u  v w v l  , ,�� x y��   x C = For each sheet in the workbook, loop through then one by one    y � z z z   F o r   e a c h   s h e e t   i n   t h e   w o r k b o o k ,   l o o p   t h r o u g h   t h e n   o n e   b y   o n e w  { | { Y   , � }�� ~ �� } k   6 � � �  � � � Z   6 E � ����� � ?   6 9 � � � o   6 7���� 0 i   � m   7 8����  � I  < A�� ���
�� .aevtodocnull  �    alis � o   < =���� 0 thefile theFile��  ��  ��   �  � � � l  F F��������  ��  ��   �  � � � l  F F�� � ���   � 5 / Set the current worksheet to our loop position    � � � � ^   S e t   t h e   c u r r e n t   w o r k s h e e t   t o   o u r   l o o p   p o s i t i o n �  � � � r   F P � � � n   F N � � � 1   L N��
�� 
pnam � n   F L � � � 4   I L�� �
�� 
XwSH � o   J K���� 0 i   � 1   F I��
�� 
1172 � o      ���� $0 theworksheetname theWorksheetname �  � � � r   Q Y � � � n   Q W � � � 4   T W�� �
�� 
XwSH � o   U V���� 0 i   � 1   Q T��
�� 
1172 � o      ���� 0 theworksheet theWorksheet �  � � � I  Z _�� ���
�� .smXLxACTnull���   6 4001 � o   Z [���� 0 theworksheet theWorksheet��   �  � � � l  ` `��������  ��  ��   �  � � � l  ` `�� � ���   � ' ! Save the worksheet as a CSV file    � � � � B   S a v e   t h e   w o r k s h e e t   a s   a   C S V   f i l e �  � � � r   ` o � � � c   ` k � � � b   ` g � � � b   ` c � � � o   ` a���� "0 outputdirectory outputDirectory � o   a b���� $0 theworksheetname theWorksheetname � m   c f � � � � �  _ p a r a m s . c s v � m   g j��
�� 
TEXT � o      ���� 0 thesheetspath theSheetsPath �  � � � I  p ��� � �
�� .smXL1659null���   7 X128 � o   p q���� 0 theworksheet theWorksheet � �� � �
�� 
5016 � o   t w���� 0 thesheetspath theSheetsPath � �� � �
�� 
1813 � m   z }��
�� e188�  � �� ���
�� 
5321 � m   � ���
�� boovtrue��   �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � 2 , Close the worksheet that we've just created    � � � � X   C l o s e   t h e   w o r k s h e e t   t h a t   w e ' v e   j u s t   c r e a t e d �  ��� � I  � ��� � �
�� .coreclosnull���    obj  � 1   � ���
�� 
1172 � �� ���
�� 
savo � m   � ���
�� savono  ��  ��  �� 0 i   ~ m   / 0����   o   0 1���� 0 maxcount maxCount��   |  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   �   Clean up and close files    � � � � 2   C l e a n   u p   a n d   c l o s e   f i l e s �  ��� � I  � ��� ���
�� .coreclosnull���    obj  � 2  � ���
�� 
X141��  ��   I m    	 � �
                                                                                  XCEL  alis    �  Macintosh HD               �fH+   j�Microsoft Excel.app                                             �(���h        ����  	                Microsoft Office 2011     �e��      ���H     j�   Q  EMacintosh HD:Applications: Microsoft Office 2011: Microsoft Excel.app   (  M i c r o s o f t   E x c e l . a p p    M a c i n t o s h   H D  6Applications/Microsoft Office 2011/Microsoft Excel.app  / ��  ��  ��  ��       
�� � �   8�� � � �����   � ����������~�}�|
�� .aevtoappnull  �   � ****�� 0 thefile theFile�� "0 outputdirectory outputDirectory�� 0 maxcount maxCount� $0 theworksheetname theWorksheetname�~ 0 theworksheet theWorksheet�} 0 thesheetspath theSheetsPath�|   � �{ ��z�y � ��x
�{ .aevtoappnull  �   � **** � k     � � �   � �  3 � �  F�w�w  �z  �y   � �v�v 0 i   �   �u 8�t ��s�r�q�p�o�n�m�l�k�j�i�h ��g�f�e�d�c�b�a�`�_�^�u 0 thefile theFile�t "0 outputdirectory outputDirectory
�s .miscactvnull��� ��� null
�r 
X141
�q .coreclosnull���    obj 
�p .aevtodocnull  �    alis
�o 
1172
�n 
XwSH
�m .corecnte****       ****�l 0 maxcount maxCount
�k 
pnam�j $0 theworksheetname theWorksheetname�i 0 theworksheet theWorksheet
�h .smXLxACTnull���   6 4001
�g 
TEXT�f 0 thesheetspath theSheetsPath
�e 
5016
�d 
1813
�c e188� 
�b 
5321�a 
�` .smXL1659null���   7 X128
�_ 
savo
�^ savono  �x ��E�O�E�O� �*j O*�-j O�j O*�,�-j E�O mk�kh  �k 
�j Y hO*�,�/�,E�O*�,�/E�O�j O��%a %a &E` O�a _ a a a ea  O*�,a a l [OY��O*�-j U��  � � � �  s a �  � �  ��]�\ �  ��[
�[ 
1172
�] 
XwSH�\  � � � � � M a c i n t o s h   H D : U s e r s : a a z m a n : D o c u m e n t s : T B : c a s e f i n d i n g e c o n : D a t a : s a _ p a r a m s . c s v��   ascr  ��ޭ