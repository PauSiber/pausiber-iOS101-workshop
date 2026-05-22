# Not Hesaplayıcı App

Not Hesaplayıcı, iOS 101 eğitimi kapsamında UIKit ve Storyboard kullanılarak geliştirilen basit bir not hesaplama uygulamasıdır.  
Uygulama, öğrencinin vize ve final notuna göre dönem sonu notunu hesaplar ve geçme/kalma durumunu sonuç ekranında gösterir.

## Özellikler

- Vize ve final notlarını slider ile seçebilme
- Not ağırlığını `%40 - %60` veya `%50 - %50` olarak belirleyebilme
- Devamsızlık durumunu switch ile kontrol edebilme
- Hesaplanan nota göre geçme/kalma sonucunu gösterme
- Sonuç ekranından tekrar hesaplama ekranına dönebilme

## Kullanılan Teknolojiler

- Swift
- UIKit
- Storyboard
- UINavigationController
- Segue ile ekran geçişi
- UISlider
- UISegmentedControl
- UISwitch

## Uygulama Akışı

Ana ekranda kullanıcı vize ve final notlarını slider yardımıyla seçer.  
Segmented Control üzerinden not hesaplama oranı belirlenir:

- `%40 Vize - %60 Final`
- `%50 Vize - %50 Final`

Eğer devamsızlık switch’i açıksa, öğrencinin notu kaç olursa olsun kalma durumu gösterilir.  
Devamsızlık yoksa hesaplanan not `50` ve üzerindeyse öğrenci geçmiş kabul edilir.

## Ekranlar

### Not Hesaplama Ekranı

Kullanıcının vize/final notlarını seçtiği, devamsızlık durumunu belirlediği ve hesaplama yaptığı ana ekrandır.

<img width="263" height="500" alt="ss2" src="https://github.com/user-attachments/assets/3c1bdb47-50e8-476a-bb38-fef3c429b771" />
<img width="263" height="500" alt="ss1" src="https://github.com/user-attachments/assets/0eebf88f-febd-42db-a951-b8c7aae9f57a" />

### Sonuç Ekranı

Hesaplanan not ve geçme/kalma durumu gösterilir.  
Geçme durumunda ekran yeşil, kalma durumunda ise kırmızı arka plan ile gösterilir.

<img width="263" height="500" alt="ss3" src="https://github.com/user-attachments/assets/e16b66ef-41bf-4623-9ace-a0794af84f2b" />
<img width="263" height="500" alt="ss4" src="https://github.com/user-attachments/assets/ec5c9caa-d5c5-4cb1-a34c-bea8483c5707" />
