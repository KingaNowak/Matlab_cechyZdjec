% otrzymane wyniki z porównywania -> po³o¿enie x,y danych punktów
x1=[1;2;3;4;5];
x2=[1;2;3;4;5];
y1=[1;2;3;4;5];
y2=[1;2;3;4;5];

x1=[0;x1];
x2=[0;x2];
y1=[0;y1];
y2=[0;y2];
dlugosc=length(x1);
for k=1:dlugosc

        Nazwa1{k}=x1(k);
        Nazwa2{k}=x2(k);
        Nazwa3{k}=y1(k);
        Nazwa4{k}=y2(k);

end
for k=1:dlugosc
    if k==1
        celldisp(Nazwa1)
        Nazwa1{k}=' ';
        celldisp(Nazwa1)
        
        celldisp(Nazwa2)
        Nazwa2{k}=' ';
        celldisp(Nazwa2)
        
        celldisp(Nazwa3)
        Nazwa3{k}=' ';
        celldisp(Nazwa3)
        
        celldisp(Nazwa4)
        Nazwa4{k}=' ';
        celldisp(Nazwa4)
        
    else
        Nazwa1{k}=x1(k);
        Nazwa2{k}=x2(k);
        Nazwa3{k}=y1(k);
        Nazwa4{k}=y2(k);
    end

end

Nazwa1=Nazwa1';
Nazwa2=Nazwa2';
Nazwa3=Nazwa3';
Nazwa4=Nazwa4';

% nazwa pierwszego zdjêcia
naz1='jhgv';
to1=zeros(dlugosc,1);
for k=1:dlugosc
    Naz1{k}=to1(k);
    if k==1
        celldisp(Naz1)
        Naz1{k}=naz1;
        celldisp(Naz1)
        
     else
        celldisp(Naz1)
        Naz1{k}=' ';
        celldisp(Naz1)
    end
end

Naz1=Naz1';

% nazwa drugiego zdjêcia
naz2='jhgv';
to2=zeros(dlugosc,1);
for k=1:dlugosc
    Naz2{k}=to2(k);
        if k==1
        celldisp(Naz2)
        Naz2{k}=naz2;
        celldisp(Naz2)
        
        else
        celldisp(Naz2)
        Naz2{k}=' ';
        celldisp(Naz2)
    end
end
Naz2=Naz2';

% Informacja dodatkowa do pierwszego zdjêcia - RGB lub GB
naz3='RGB';
to3=zeros(dlugosc,1);
for k=1:dlugosc
    Naz3{k}=to3(k);
        if k==1
        celldisp(Naz3)
        Naz3{k}=naz3;
        celldisp(Naz3)
        
        else
        celldisp(Naz3)
        Naz3{k}=' ';
        celldisp(Naz3)
    end
end
Naz3=Naz3';

% Informacja dodatkowa do drugiego zdjêcia - RGB lub GB
naz4='GB';
to4=zeros(dlugosc,1);
for k=1:dlugosc
    Naz4{k}=to4(k);
        if k==1
        celldisp(Naz4)
        Naz4{k}=naz4;
        celldisp(Naz4)
        
        else
        celldisp(Naz4)
        Naz4{k}=' ';
        celldisp(Naz4)
    end
end
Naz4=Naz4';

% data kiedy by³o przeprowadzane porównywanie
c=clock;
c=c';
rok=zeros(dlugosc,1);
miesiac=zeros(dlugosc,1);
dzien=zeros(dlugosc,1);
godzina=zeros(dlugosc,1);
minuta=zeros(dlugosc,1);
sekunda=zeros(dlugosc,1);
for k=1:dlugosc
    Rok{k}=rok(k);
    Miesiac{k}=miesiac(k);
    Dzien{k}=dzien(k);
    Godzina{k}=godzina(k);
    Minuta{k}=minuta(k);
    Sekunda{k}=sekunda(k);
end
for k=1:dlugosc
    if k==1
        Rok{1}=c(1);
        Miesiac{1}=c(2);
        Dzien{1}=c(3);
        Godzina{1}=c(4);
        Minuta{1}=c(5);
        Sekunda{1}=c(6);
    else
        celldisp(Rok)
        Rok{k}=' ';
        celldisp(Rok)
        
        celldisp(Miesiac)
        Miesiac{k}=' ';
        celldisp(Miesiac)
        
        celldisp(Dzien)
        Dzien{k}=' ';
        celldisp(Dzien)
        
        celldisp(Godzina)
        Godzina{k}=' ';
        celldisp(Godzina)
        
        celldisp(Minuta)
        Minuta{k}=' ';
        celldisp(Minuta)
        
        celldisp(Sekunda)
        Sekunda{k}=' ';
        celldisp(Sekunda)
    end
end
        Rok=Rok';
        Miesiac=Miesiac';
        Dzien=Dzien';
        Godzina=Godzina';
        Minuta=Minuta';
        Sekunda=Sekunda';


% nazwa folderu, gdzie by³y zdjêcia
z='C:\Users\kinga\Desktop\pazigi_projekt';
Z=zeros(dlugosc,1);
for k=1:length(Z)
    Z2{k}=Z(k);
    if k==1
        celldisp(Z2)
        Z2{1}=z;
        celldisp(Z2)
    else
        celldisp(Z2)
        Z2{k}=' ';
        celldisp(Z2)
    end
end

Z2=Z2';

cecha='SURF';
CE=zeros(dlugosc,1);
for k=1:length(CE)
    CE2{k}=CE(k);
end 
for k=1:length(CE)
    if k~=1
        celldisp(CE2)
        CE2{k}=' ';
        celldisp(CE2)
    else
        celldisp(CE2)
        CE2{1}=cecha;
        celldisp(CE2)
    end

end

CE2=CE2';

 %% zczytywanie danych z excela
 B=readtable('Wyniki1.xlsx');
%% konwersja danych i zapis do tabel
 Rok1=B.Data_wykonania_porownania_Rok;
 Miesiac1=B.Data_wykonania_porownania_Miesiac;
 Dzien1=B.Data_wykonaniaPorownania_Dzien;
 Godzina1=B.Data_wykonania_porownania_Godzina;
 Minuta1=B.Data_wykonania_porownania_Minuta;
 Sekunda1=B.Data_wykonania_porownania_Sekunda;
 Nazwafolderu=B.Nazwa_folderu;
 Cecha1=B.Nazwa_cechy;
 Zdj1=B.Nazwa_zdjecia_pierwszego;
 Inf1=B.Dodatkowa_informacja_zdjecia_nr1;
 X11=B.X1;
 Y11=B.Y1;
 Zdj2=B.Nazwa_zdjecia_drugiego;
 Inf2=B.Dodatkowa_informacja_zdjecia_nr2;
 X22=B.X2;
 Y22=B.Y2;

 for k=1:length(B.Data_wykonania_porownania_Rok)
 Rok11{k}=Rok1(k);
 Miesiac11{k}=Miesiac1(k);
 Dzien11{k}=Dzien1(k);
 Godzina11{k}=Godzina1(k);
 Minuta11{k}=Minuta1(k);
 Sekunda11{k}=Sekunda1(k);
 Nazwafolderu1{k}=Nazwafolderu(k);
 Cecha11{k}=Cecha1(k);
 Zdj11{k}=Zdj1(k);
 Inf11{k}=Inf1(k);
 X111{k}=X11(k);
 Y111{k}=Y11(k);
 Zdj22{k}=Zdj2(k);
 Inf22{k}=Inf2(k);
 X222{k}=X22(k);
 Y222{k}=Y22(k);
 end
 Rok11=Rok11';
 Miesiac11=Miesiac11';
 Dzien11=Dzien11';
 Godzina11=Godzina11';
 Minuta11=Minuta11';
 Sekunda11=Sekunda11';
 Nazwafolderu1=Nazwafolderu1';
 Cecha11=Cecha11';
 Zdj11=Zdj11';
 Inf11=Inf11';
 X111=X111';
 Y111=Y111';
 Zdj22=Zdj22';
 Inf22=Inf22';
 X222=X222';
 Y222=Y222';
 Rok=[Rok11;Rok];
 Miesiac=[Miesiac11;Miesiac]
 Dzien=[Dzien11;Dzien];
 Godzina=[Godzina11;Godzina];
 Minuta=[Minuta11;Minuta]; 
 Sekunda=[Sekunda11;Sekunda]; 
 Z2=[Nazwafolderu1;Z2];
 CE2=[Cecha11; CE2]; 
 Naz1=[Zdj11; Naz1]; 
 Naz3=[Inf11; Naz3]; 
 Nazwa1=[X111; Nazwa1]; 
 Nazwa3=[Y111; Nazwa3]; 
 Naz2=[Zdj22; Naz2]; 
 Naz4=[Inf22; Naz4]; 
 Nazwa2=[X222; Nazwa2]; 
 Nazwa4=[Y222; Nazwa4];
 %% ³¹czenie w jedn¹ tabelê
 T2=table(Rok, Miesiac, Dzien, Godzina, Minuta, Sekunda, Z2, CE2, Naz1, Naz3, Nazwa1, Nazwa3, Naz2, Naz4, Nazwa2, Nazwa4,...
     'VariableNames',{'Data_wykonania_porownania_Rok','Data_wykonania_porownania_Miesiac','Data_wykonania porownania_Dzien','Data_wykonania_porownania_Godzina','Data_wykonania_porownania_Minuta','Data_wykonania_porownania_Sekunda',...
     'Nazwa_folderu','Nazwa_cechy','Nazwa_zdjecia_pierwszego','Dodatkowa_informacja_zdjecia_nr1','X1','Y1','Nazwa_zdjecia_drugiego','Dodatkowa_informacja_zdjecia_nr2','X2','Y2'});
writetable(T2,'Wyniki1.xlsx');
 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                        BRUDNOPIS (MOG¥ SIÊ PRZYDAÆ)                                                                                                                                                                          %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %% powstanie tabeli
% T = table(Rok, Miesiac, Dzien, Godzina, Minuta, Sekunda, Z2, CE2, Naz1, Naz3, Nazwa1, Nazwa3, Naz2, Naz4, Nazwa2, Nazwa4,...
%     'VariableNames',{'Data_wykonania_porownania_Rok','Data_wykonania_porownania_Miesiac','Data_wykonania porownania_Dzien','Data_wykonania_porownania_Godzina','Data_wykonania_porownania_Minuta','Data_wykonania_porownania_Sekunda',...
%     'Nazwa_folderu','Nazwa_cechy','Nazwa_zdjecia_pierwszego','Dodatkowa_informacja_zdjecia_nr1','X1','Y1','Nazwa_zdjecia_drugiego','Dodatkowa_informacja_zdjecia_nr2','X2','Y2'});
%  T1=table2array(T,'VariableNames',{'Data_wykonania_porownania_Rok','Data_wykonania_porownania_Miesiac','Data_wykonania porownania_Dzien','Data_wykonania_porownania_Godzina','Data_wykonania_porownania_Minuta','Data_wykonania_porownania_Sekunda',...
%      'Nazwa_folderu','Nazwa_cechy','Nazwa_zdjecia_pierwszego','Dodatkowa_informacja_zdjecia_nr1','X1','Y1','Nazwa_zdjecia_drugiego','Dodatkowa_informacja_zdjecia_nr2','X2','Y2'});
% %% zamiana do excela 0 na puste kolumny
% [wiersz,kolumna]=size(T);
% A1=table2array(T);
% for i=1:kolumna
%     for j=1:wiersz
%         if A1{j,i}==0
%             A1{j,i}=' ';
%         end
%     end
% end

% % %zamiana z excela NaN na 0
% % [wiersz,kolumna]=size(B);
% % B=table(B);
% % B1=table2array(B);
% % pusta=NaN;
% % for i=1:6
% %     for j=1:wiersz
% %         B1{j,i}=num2str(B1{j,i});
% %     end
% % end
% % 
% % for i=1:kolumna
% %     for j=1:wiersz
% %         if B1{j,i}==pusta
% %             B1{j,i}=0;
% %         end
% %     end
% % end
% 
%  A=vertcat(B1,T);

% % T=array2table(A1, 'VariableNames',{'Data_wykonania_porownania_Rok','Data_wykonania_porownania_Miesiac','Data_wykonania porownania_Dzien','Data_wykonania_porownania_Godzina','Data_wykonania_porownania_Minuta','Data_wykonania_porownania_Sekunda',...
% %     'Nazwa_folderu','Nazwa_cechy','Nazwa_zdjecia_pierwszego','Dodatkowa_informacja_zdjecia_nr1','X1','Y1','Nazwa_zdjecia_drugiego','Dodatkowa_informacja_zdjecia_nr2','X2','Y2'});


