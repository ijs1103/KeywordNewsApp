# KeywordNewsApp

### ✨ 키워드별 뉴스 조회
![Simulator Screen Recording - iPod touch (7th generation) - 2023-03-10 at 01 27 22](https://user-images.githubusercontent.com/42196410/224102579-e050f69e-ef79-43be-a9ac-0c1009b94e00.gif)

### ✨ UITableView 무한스크롤 
![Simulator Screen Recording - iPod touch (7th generation) - 2023-03-10 at 01 28 38](https://user-images.githubusercontent.com/42196410/224102640-ba98aa2f-3ec2-4d45-861e-a1e4b49e1e30.gif)



## 🧩 개요

- WKWebView로 웹뷰 접근

- MVP 아키텍쳐 

- Presenter에 대한 Unit Test

- UITableView 무한 스크롤

## 🤔 배운 내용

### ✔️ TTGTagCollectionView

<img width="252" alt="image" src="https://user-images.githubusercontent.com/42196410/224103907-eb991552-3dc7-4292-a3bb-b253d99d0b02.png">


  - 위와 같이 UITableView의 headerView로 TTGTagCollectionView를 설정한다
### ✔️ UITableView 무한 스크롤

- UITableViewDelegate에서 `willDisplay`함수는 셀이 화면에 보여지기 직전에 호출되는 함수이다

- 이 시점에 api call을 하고 테이블뷰를 리로드 하는 방식으로 구현하였다

### ✔️ WKWebView

- `webkit`프레임워크의 클래스이다

- 메모리가 앱과 별도의 스레드로 관리되어 웹페이지의 메모리가 많이 할당되어도 앱은 죽지 않는다

### ✔️ HTML을 AttributedString으로 변환하기

네이버 뉴스 api에서 데이터가 html과 String이 섞여 나오는 문제가 있는데, 이를 해결하기 위한 Extension이다
 
```swift

extension String {
    var htmlToString: String {
        guard let data = self.data(using: .utf8) else { return "" }

        do {
            return try NSAttributedString(
                data: data,
                options: [
                    .documentType: NSAttributedString.DocumentType.html,
                    .characterEncoding: String.Encoding.utf8.rawValue
                ],
                documentAttributes: nil
            ).string
        } catch {
            return ""
        }
    }
}

```
