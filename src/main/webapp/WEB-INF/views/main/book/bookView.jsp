<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<html>
<head>
	  <meta charset="utf-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>책 상세보기  </title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	  <link rel="stylesheet" href="/resources/css/bookListcss.css" />	 
</head>
<body>
	<div class="container-fluid">
		 <div style="border-bottom: solid; height: 35px; border-width: 3px; border-color:#F5F5F5;">
		 	<div class="container bodyd">
				<div class="row align-items-center">
					<div class="col" style="padding-top:6px;">
						<a class="heading" href="" >도서</a >
						<c:choose>
							<c:when test ="${sessSeq eq null}">
								<a class="heading float-end" href="/login/">&nbsp;<b>로그인</b> </a>
									<span class="heading float-end" href=""> ⦁&nbsp;</span>
								<a class="heading float-end" href="/login/signup1/"> <b>회원가입</b>&nbsp;&nbsp;</a>
							</c:when>
							
							<c:otherwise>
								 <span class="heading float-end" style = "cursor: pointer;" id = "logoutBtn"><b>로그아웃</b></span> 
							</c:otherwise>
						</c:choose>
					</div>		 	
			 	</div>
		 	</div>
		 </div>
	 </div>
 
	<div class="container bodyd" >
	 	<div class="row" >
	 		<div class="col-4">
	 			<div style="padding-top: 30px; display: inline-block;">
				 	<a  href="./bookList.html" style="display: inline-block">	
					 	<img src="https://active.ridibooks.com/navbar/icons/web/ridi.f50c563403f615565a7328888ba19f87.svg"  style="width:61px; height:23px; padding: 0px;">
					 	<img src="https://active.ridibooks.com/navbar/icons/web/genre_books.24933faed881f7e79f1f8d5f0c529370.svg" style="width:122px; height: 40px; padding: 4px;">
				 	</a>
				 </div>
			</div>
		
			<div class="col-8 justify-content-end d-flex" style="padding-top: 20px;">
		 		<nav  style="display: inline-block;">
		 			<ul >
		 				<li style="display: inline-block; padding-right: 40px;">
		 					<form action="">
		 						<input type="text" class="form-control inputclass" placeholder="" aria-label="First name" style="width:250px;">
		 					</form>
		 				</li>
		 				<li style="display: inline-block;">
		 					<a href="">
		 						<i class="fa-solid fa-book-open fa-xl" style="width: 50px;"></i>
		 					</a>
		 				</li>
		 				<li style="display: inline-block;">
		 					<a href="../myPage/myPageList.html">
		 						<i class="fa-regular fa-user fa-xl" style="padding-top:30px;" "></i>
		 					</a>
		 				</li>
				 	</ul>
			 	</nav>
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-9 border-end" >
				<div class="row" style="padding-top: 40px;">
					<div class="col-md-3" style="padding-left:29px; padding-right:20px;">
						<img src="http://image.kyobobook.co.kr/images/book/large/730/l9791170521730.jpg" alt="" style="width: 200px; height: 312.5px; border:solid; border-color: #787878; border-width: 1px;" />
						<div style="display: relative;  padding-left:29px; padding-top: 8px;">
							<button type="button" class="btn btn-outline-primary preview" style="width:130px;">미리보기</button>
						</div>
					</div>
					<div class="col-md-9">
						<div class="row" style="padding-left:30px;">
							<div class="col-12"></div>
								<div >
									<span class="genre">소설> 영미소설, 소설> SF 소설</span>
								</div>
								<div>
									<span class="booktitleView">미키7 </span>
								</div>
								<div>
									<span class="bookSubtitleView">MICKEY7</span>
								</div>
								<div style="font-size: 0px; margin-top:10px;">
									<i class="fa-solid fa-star fa-2xs"  style="color: #FA722E; font-size:14px;"></i>
									<i class="fa-solid fa-star fa-2xs" style="color: #FA722E; font-size:14px;"></i>
									<i class="fa-solid fa-star fa-2xs" style="color: #FA722E; font-size:14px;"></i>
									<i class="fa-solid fa-star fa-2xs" style="color: #FA722E; font-size:14px;"></i>
									<i class="fa-solid fa-star fa-2xs" style="color: #FA722E; font-size:14px;"></i>
									<span style="color: #DC3232; font-size: 13px; position:relative; bottom: 2px;">4.8</span>
									<span class="booksublistspan2" style="position:relative; bottom: 2px;">(</span>		
									<span class="booksublistspan2" style="position:relative; bottom: 2px;">255</span>		
									<span class="booksublistspan2" style="position:relative; bottom: 2px;">)</span>		
									<span class="booksublistspan2" style="position:relative; bottom: 2px;">명</span>		
								</div>
								<div>
									<a href="./authorView.html"><span class="bookauthor1">에드워드 애슈턴</span></a>
									<span class="bookauthor2">저</span>
									<span class="bookauthor2">|</span>
									<span class="bookauthor1">배지혜</span>
									<span class="bookauthor2">역</span>
								</div>
								<div>
									<span class="bookauthor1">황금가지</span>
									<span class="bookauthor2">출판</span>
								</div>
								<br />
								<div  style="padding-right: 55px;">
									<hr class="border border-secondary border-1 border-opacity-75" />
								</div>
								
								<div style="padding-top: 20px;">
									<table class="table" style="width: 550px;">
											<tr>
												<th class="border-end border-top" style="text-align: center; vertical-align: middle; background-color: #F7FAFC">
													<span class="sojang">소장</span> 
												</th>
												<td class="border-top">
													<div>
														<span class=" panmae">종이책 정가</span>
														<span class="float-end orgprice">원</span>
														<span class=" float-end orgprice">15000</span>
														
													</div>
													<div>
														<span class="panmae">전자책 정가</span>
														<span class=" float-end orgprice">원</span>
														<span class=" float-end orgprice">10,500</span>
													</div>
													<div>
														<span class=" panmae">판매가</span>
														<span class=" float-end saleprice">원</span>
														<span class=" float-end saleprice">10500</span>
													</div>
												</td>
											</tr>
									</table>
								</div>
								
								<div style="padding-right: 55px;">
									<button type="button" class="btn btn-primary float-end sojangbutton" style="width: 112px; height: 48px;" onclick="location.href='../purchase/purchaseView.html'">소장하기</button>
									<button  class="float-end" style="width:48px; height:48px; border:solid 1px; border-color:rgba(0, 0, 0, 0.2); border-radius:5px; background-color: white; margin-right: 5px;">
											<i class="fa-solid fa-cart-shopping fa-lg" style="color: rgba(0, 0, 0, 0.5);"></i>
									</button>
									<button  class="float-end" style="width:48px; height:48px; border:solid 1px; border-color:rgba(0, 0, 0, 0.2); border-radius:5px; background-color: white; margin-right: 5px;">
											<i class="fa-solid fa-heart fa-lg" style="color: rgba(0, 0, 0, 0.5);"></i>
									</button>
								</div>
						</div>
					</div>				
				</div>
				
				<div class="row g-0 gy-0">
					<div class="col border border-3  border-opacity-10" style="margin-left: 20px;margin-top: 60px; margin-right:40px; width: 880px; height: 128px;">
						<div class="row g-0 gy-0">
							<div class="col-5">
								<div class="row g-0 gy-0" style="width: 260px; padding-left:26px;  padding-top:10px; ">
									<div class="col-12 " style="width:60px;">
										<span class="publishinginfo">출간정보</span>
									</div>
									<div class="col-12" style="width:170px;">
										<span class="publishinginfo2">2022.07.28</span>
										<span class="publishinginfo3">전자책 출간</span>	<br />
										<span class="publishinginfo2">2022.07.22</span>
										<span class="publishinginfo3">종이책 출간</span>
									</div>
								</div>
								<div class="row g-0 gy-0" style="width: 260px; padding-left:26px; ">
									<div class="col-12 " style="width:60px;">
										<span class="publishinginfo">파일정보</span>
									</div>
									<div class="col-12" style="width:170px;">
										<span class="publishinginfo2"> EPUB | 18.2MB | 약 17.4만 자</span>
									</div>
								</div>
								<div class="row g-0 gy-0" style="width: 260px; padding-left:26px; ">
									<div class="col-12 " style="width:60px;">
										<span class="publishinginfo">ISBN</span>
									</div>
									<div class="col-12" style="width:170px;">
										<span class="publishinginfo2"> 9791170521747</span>
									</div>
								</div>
							</div>
							<div class="col-7">
								<div class="row g-0 gy-0" style="width: 400px; padding-left:26px; padding-top:10px; ">
									<div class="col-12 " style="width:60px;">
										<span class="publishinginfo">듣기 기능</span>
									</div>
									<div class="col-12" style="width:300px;">
										<span class="publishinginfo2">
											<i class="fa-solid fa-headphones-simple"></i>
											듣기기능
										</span>
									</div>
									<div class="col-12 " style="width:60px;">
										<span class="publishinginfo">지원 기기</span>
									</div>
									<div class="col-12" style="width:230px;">
										<span class="publishinginfo2">
											<i class="fa-solid fa-tablet-screen-button"></i>
											PAPER &nbsp;
											<i class="fa-brands fa-apple"></i>
											IOS&nbsp;
											<i class="fa-brands fa-android"></i>
											ANDROID&nbsp;
											<i class="fa-brands fa-windows"></i>
											PC&nbsp;
											<i class="fa-solid fa-circle-xmark"></i>
											MAC
										</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				<div class="row">
					<div class="col-12">
						<div class="title_text border-bottom border-2 border-dark border-opacity-50" style="width: 780px; display:inline-block; margin-left: 20px; margin-right:200px; margin-top: 40px; line-height: 40px;">작품 소개</div>
					</div>
					<div class="col-12 title_content" style="width: 780px;  margin-left: 20px; margin-right:200px; margin-top: 40px;">											   
						    	
						    	<p>「기생충」으로 아카데미상을 수상한 봉준호 감독의 차기 SF 영화의 원작!<br>
								복제인간으로 끊임없이 되살아나는 한 사내를 주인공으로, <br>
								정체성에 대한 철학적 질문과 계급간의 모순을 파고든 SF 장편소설.<br>
								<br>
								"『미키7』은 모험 소설을 가장한 세련된 철학적 풍자다. 경박하고 우울한 유머와 교묘한 전제로 독자를 유인한 뒤 견딜 수 없는 진실을 억압하는 인간의 재능에 대한 파괴적인 통찰로 허를 찌른다." -《뉴욕 저널 오브 북스》<br>
								<br>
								"끝내주는 설정은 물론 사회적 비평, 우울한 유머, 그리고 깜짝 놀랄 공포가 골고루 버무려져 있어서 「기생충」 의 봉준호 감독이 영화화하기에 딱이다." -《더 필름 스테이지》<br>
								</p>
								
								<p id="toc-content">
									<br />
									-<br />
									봉준호 감독의 차기 영화의 원작으로 주목받은 에드워드 애슈턴의 SF 장편소설 『미키7』이 황금가지에서 출간되었다. 죽더라도 끊임없이 전임자의 기억을 갖고 복제인간으로 되살아나게 되는 미키의 일곱 번째 삶을 소재로 SF의 재미와 철학적 주제를 잘 담아냈다는 평가를 받은 작품이다. 먼 미래, 끊임없이 전 우주로 영역을 확장해 나가던 인류가 새로운 행성 '니플하임'을 개척하려 하지만, 공격적인 성향의 토착 생명체인 크리퍼들로 인해 어려움을 겪는다. 개척단에서 가장 위험한 일에 투입되는 익스펜더블(소모인력)인 미키7이 탐사 도중 발을 헛디뎌 얼음 구덩이 아래로 추락하면서 이야기가 시작된다. 상처를 입긴 했지만, 아직 살아있던 미키는 죽어도 복제인간으로 되살릴 수 있다는 이유로 구조되지 않고, 결국 가까스로 기지로 생환하지만 이미 자신의 예전 기억을 갖고 되살아난 미키8을 만나고만다. 가뜩이나 상류층과 엘리트로 구성된 개척단에서 하층민 출신인 미키를 밥벌레 정도로 여기던 사령관에게 이 사실이 알려지면 둘 다 죽임당할 게 뻔한 상황. 둘 중 하나가 죽든가, 아니면 모두의 눈을 속이고 살아남아야만 한다. 우스꽝스러운 상황 속에서도 작가는 수많은 SF에서 흥미롭게 다뤄왔던 여러 철학적 주제들을 이야기에 녹여내는 한편, 인류사를 바탕으로 창안한 우주 개척사와 상상을 뛰어넘는 다양한 미래 설정, 그리고 긴장감과 유머를 적절히 혼합한 스토리텔링을 선보인다. 출간 직후 많은 언론에 주목을 받았으며, 화제에 힘입어『미키7』의 후속작이 2023년 발표될 예정이다.<br />
									<br />
									"SF이자 스릴러이자 러브스토리. 봉준호 감독이 영화화한다는 뉴스를 접하고 『미키7』을 읽었다. 기억을 업로드하는 방식으로, 신체를 복제하는 방식으로, 죽은 뒤에도 기억을 모두 갖고 다시 깨어날 수 있다면 그것은 축복일까. 위험한 작업 현장에서 죽음을 무릅쓰고(실제로 죽는다) 일하기 위해 ‘익스펜더블’이 된 미키는 죽어도 살 수 있게 되고, 여섯 번의 죽음을 반복해 미키7이 된다. 문제는 “내 생에 가장 멍청한 죽음”을 맞은 뒤 소멸하지 않은 채 미키8이 생성되고 만다. 미키가 고단한 노동자로서의 자의식을 갖고 있다는 면에서 봉준호 감독과 잘 어울리는 작품이라는 생각이 드는 동시에, 결국 이 이야기가 어떤 결말로 이어질지 긴장하며 보게 된다. 종종 터지는 유머도 『미키7』을 인상적으로 기억하게 만든다." -이다혜(작가, 《씨네21》 기자)<br />
									<br />
									"스펙터클과 서스펜스를 갖춘 불안하고 매력적인 이야기. 저자는 테세우스의 배처럼 '몸이 변해도 동일한 사람일까?'라는 질문을 SF다운 최신의 방식으로 깔아놓았다. 미키와 그의 복제인 미키7, 미키8이 동일한 사람이냐는 질문에는 해답이 없다. 다만 주인공 미키7은 사색하느라 독자를 지루하게 만드는 대신 행동하고 저항하며 계속하여 장면을 전환한다. 미키7과 미키8이 동시에 존재한다는 사실, 다시 말해 그가 중복해서 복제되었다는 사실은 비밀이어야 한다. 돔에서 같이 생활하는 다른 승무원들은 그를 영혼 없는 괴물이거나 영생을 누리는 인간이라고 여긴다. 얼음으로 뒤덮인 바깥에서는 끔찍하게 생긴 토착생명체인 크리퍼 무리가 인간을 습격한다. 미키7은 사람들과 공존하는 동시에 다른 종족과 공존해야 한다. 여기에는 물론 싸움, 거짓말, 배신이 있으며, 협상, 이해, 충분한 시간도 존재한다. 새로운 행성 니플하임에서 펼쳐지는 미키의 이야기를 눈으로 보여줄 영화가 기다려진다." -심완선(SF평론가)<br />
									<br />
									<br />
									미키1부터 미키7까지, 끊임없는 죽음과 재생, 그리고 '테세우스의 배'<br />
									<br />
									'테세우스의 배'는 『미키7』에서 소모품으로 죽음을 수차례 받아들인 미키의 핵심적인 질문이다. 이 개념은 테세우스의 배를 보존하려는 이들이, 세월에 따라 썩거나 떨어져나간 배의 구성품을 계속 새로운 것으로 교체할 경우, 어느 시점에 이르러 원래의 부분이 하나도 남지 않게 되면, 그것을 테세우스의 배라 부를 수 있느냐는 역설을 담고 있다. 미키 역시 끊임없이 죽고 복제인간으로 재생되지만, 과연 이전의 죽은 자신과 현재의 자신이 동일인인가, 그리고 현재 자신과 함께 생존한 미키8이 자신과 동일인인가 하는 모순적 질문에 계속 시달린다. 타인은 그의 재생이 연속성이 있고, 심지어 불사라고 여기지만, 정작 본인과 동일한 재생본인 미키8의 모습은 전혀 다른 생각과 판단을 하는데다, 죽은 전임자 여섯에 대한 감정도 다르지 않다. 저자인 에드워드 애슈턴은 여러 인터뷰를 통해, 1970년대 유명했던 TV 시리즈인「스타트렉」의 전송기(대원을 목적지로 보내거나 데려오는 기계)를 통해 이동된 사람이 과연 전송 전과 동일인물인가에 대한 의문을 늘 갖고 있었다고 밝혔는데, 『미키7』을 통해 오랫동안 많은 SF소설에서 다뤄왔던 주제인 본질의 정체성에 관하여 흥미롭게 독자에게 전달하려 노력한다.<br />
									<br />
									"죽음은 끝이 아니다. 아프긴 하지만."<br />
									<br />
									"만약 여러분이 여러분의 기억, 사랑과 미움, 희망과 꿈을 완벽하게 복제하고, 여러분의 육체까지 완벽하게 복제하여 담아낸다면, 그 사람은 정말 여러분일까요?" -에드워드 애슈턴(《너드 데일리》 인터뷰 중)<br />
									<br />
									<br />
									인류사를 기반으로 풀어낸 우주 개척의 이야기<br />
									<br />
									미키는 작중 '역사가'라는 직업을 갖고 있다. 그러나 그가 살던 미드가르드에선 역사가는 돈 한푼 안 되는 천대받는 직업이었고, 때문에 순식간에 빚쟁이로 몰락하고 결국 소모 인력으로 개척단에 지원할 수밖에 없게 된다. 저자는 온라인 매체와의 인터뷰에서 주인공의 직업을 역사가로 한 이유는, 1인칭 시점인 『미키7』에서 화자를 통해 인류가 우주 개척을 하며 겪은 수많은 역사를 흥미롭게 전달함으로써, 주인공 미키의 '익스펜더블'이라는 직업에 대한 이해를 돕기 위해서라고 설명하였다. 미키의 직업이 역사가인 덕분에, 자신의 복제인간으로 군대를 양성하여 개척 행성을 점령하려 한 미친 자본가, 개척지의 토종 바이러스로 인해 결국 끔찍한 최후를 맞이한 개척단, 내전으로 엉망이 된 행성을 떠나 다른 행성으로 찾아온 우주 난민들, 잘못된 항로 계산으로 개척 목적 행성에 도달 못 한 채 우주에서 자살을 택한 탐사대, 탐사선의 경작 실패로 결국 식인에까지 이른 사연 등, 우주 개척의 다양한 역사가 서술된다. 이는 인류의 역사적 기록 위에 우주 개척이라는 SF적 요소를 가미한 것으로, 이를 통해 저자는 자원 부족으로 허덕이는 개척민들의 모습, 척박한 개척 환경 등을 드러냄으로써 극중 '익스펜더블'이라는 극한의 직업이 존재하는 세계관을 독자에게 자세히 전달하고자 한다.<br />
									<br />
									<br />
									봉준호 감독에 의해 완성될 기대작, 해외가 더 주목하다<br />
									<br />
									『미키7』에 대한 해외 언론과 평론은 무엇보다 영상화를 봉준호 감독이 연출하는 데 주목한다. 여러 매체에서 『미키7』의 세계관이 미래 우주 사회의 모습이지만, 실상 노동의 기계화, 대량 생산의 효울성, 생산성, 기계가 미래의 가치를 아우르던 19세기의 산업화에 비유되고, 주인공인 복제인간 미키의 모습도 소모품으로 취급받던 산업화 시대의 하층 노동자로 비친다는 점을 들어 그간 자본주의에 내재된 비인간화와 계급간 모순을 영상으로 잘 표현해왔던 봉준호 감독이 영상화에 최적의 감독이라고 분석한다. SF와 판타지 전문 온라인 매체인 Tor.com은 『미키7』이 영상화를 통해 원래의 의도보다 더 재미있고 무서우며, 친숙하면서도 어두운 이야기로 완성될 것이라는 기대를 전했으며, 《더 필름 스테이지》는 끝내주는 설정은 물론 사회적 비평, 우울한 유머, 그리고 깜짝 놀랄 공포가 골고루 버무려져 있어서 「기생충」 의 봉준호 감독이 영화화하기에 딱이라고 전했다. 『미키7』의 저자인 에드워드 애슈턴 역시 여러 매체와의 인터뷰에서 봉준호 감독의 모든 작품을 다 이미 보았다며, 그는 천재이고 『미키7』 역시 훌륭히 영화로 완성해 낼 것이라는 기대를 나타냈다. 봉준호 감독은 올 8월부터, 제작자인 브래드 피트와 워너 브러더스의 지원을 받아, 로버트 패틴슨, 마크 러팔로, 스티븐 연, 토니 콜렛, 틸다 스윈튼, 나오미 애키 등 할리우드 인기 배우들, 촬영감독 다리우스 콘지, 미술감독 피오나 크롬비 등과 함께 영화 촬영에 들어간다. 영화 개봉은 2023년 말이나 2024년 초 예정으로 되어 있다.
								</p>
								<button class="float-end" style="border:none; background-color: white;">
									<span>
										<a href="javascript:openCloseToc()" class="title_content" style="color: #4076B5;" id="toc-toggle">펼쳐보기 <i class="fa-solid fa-circle-chevron-down"></i></a>
									</span>
								</button>												
					</div>
					<div class="col-12">
						<div class="title_text border-bottom border-2 border-dark border-opacity-50" style="width: 780px; display:inline-block; margin-left: 20px; margin-right:200px; margin-top: 40px; line-height: 40px;">저자 프로필</div>
					</div>
					<div class="col-12">
						<div class="col-12 title_content" style="width: 780px;  margin-left: 20px; margin-right:200px; margin-top: 10px;">
							<ul class="border-bottom"style="list-style:none; padding-left:0px; padding-top: 5px; padding-bottom:25px; "> 
								<li style="float: left">
									<span class="authorprofile" style="margin-right: 7px;">저자</span>
									<span class="authorprofile2 border-end" style=" padding-right: 17px;"><a href="" style="padding-right: 17px;">에드워드 애슈턴</a></span> 
								</li>
								<li style="float: left">
									<span class="authorprofile" style="padding-left: 17px; margin-right: 7px;">번역</span>
									<span class="authorprofile2" style=" padding-right: 17px;"><a href="">배지혜</a></span>  
								</li>
							</ul>
						</div>
					</div>
					<div class="col-12">
						<div class="col-12 title_content" style="width: 780px;  margin-left: 20px; margin-right:200px; margin-top: 10px; padding-bottom: 17px;">
							<span class="authorprofileName">에드워드 애슈턴</span>
							<span class="authorprofileName2">Edward Ashton</span>
						</div>
					</div>
					<div class="col-12">
						<div class="col-12 title_content" style="width: 780px;  margin-left: 20px; margin-right:200px; margin-top: 10px; padding-bottom: 17px;">

						</div>
					</div>
					<div class="col-12">
						<div class="title_text border-bottom border-2 border-dark border-opacity-50" style="width: 780px; display:inline-block; margin-left: 20px; margin-right:200px; margin-top: 40px; line-height: 40px;">
							저자 소개
						</div>
						<div class="col-12 title_content" style="width: 780px;  margin-left: 20px; margin-right:200px; margin-top: 10px; padding-bottom: 17px;">
												    	
							    	<p>
										에드워드 애슈턴 Edward Ashton<br />
										어느 이탈리아 소시지 회사의 뉴스레터에서부터 《이스케이프 팟(Escape Pod)》, 《아날로그(Analog)》, 《파이어사이드 픽션(Fireside Fiction)》 매거진에 이르기까지 다양한 매체를 통해 여러 단편을 선보였으며 소설 『4월의 사흘(Three Days in April)》』 과 『평범의 종말(The End of Ordinary)』의 작가이기도 하다. <br />
										그는 아내, 여러 명의 딸, 시무룩한 모습이 사랑스러운 개 맥스와 함께 뉴욕 북부의 숲속 오두막(cabin in the woods)에서 살고 있다. (영화 「캐빈 인 더 우즈」 아님.)<br />
										여가 시간에는 암 연구를 하고 침울한 대학원생들에게 양자 물리학을 가르치거나 목공예를 즐긴다.<br />
										<br />
	
									</p>
									
									<p id="toc-content1">
										역자 소개 _배지혜<br />
										뉴욕 시립대 버룩칼리지 경제학과를 졸업했다. 유학 시절 재미있게 읽던 작품을 한국어로 옮기고 싶다는 욕심이 생겼고, 현재 글밥아카데미를 수료한 뒤 바른번역 소속으로 활동중이다. 대표 역서로는 『시체와 폐허의 땅』, 『지속가능한 여행을 하고 있습니다』 등이 있다.
									</p>
								<button class="float-end" style="border:none; background-color: white;">
									<span>
										<a href="javascript:openCloseToc1()" class="title_content" style="color: #4076B5;" id="toc-toggle1">펼쳐보기 <i class="fa-solid fa-circle-chevron-down"></i></a>
									</span>
								</button>	
						</div>
						<div class="title_text border-bottom border-2 border-dark border-opacity-50" style="width: 780px; display:inline-block; margin-left: 20px; margin-right:200px; margin-top: 40px; line-height: 40px;">
							목차
						</div>
						<div class="col-12 title_content" style="width: 780px;  margin-left: 20px; margin-right:200px; margin-top: 10px; padding-bottom: 17px;">
									<p>
										1장 <br />
										2장<br />
										3장<br />
										4장<br />
										5장 <br />
										6장 <br />
										7장 <br />
										8장 <br />
										9장 <br />
									</p>
									
									<p id="toc-content2">
											10장<br />
										11장<br />
										12장<br />
										13장<br />
										14장<br />
										15장<br />
										16장<br />
										17장<br />
										18장<br />
										19장<br />
										20장<br />
										21장<br />
										22장<br />
										23장<br />
										24장<br />
										25장<br />
										26장 <br />
										27장 <br />
										<br />
										감사의 말
									</p>
								<button class="float-end" style="border:none; background-color: white;">
									<span>
										<a href="javascript:openCloseToc2()" class="title_content" style="color: #4076B5;" id="toc-toggle2">펼쳐보기 <i class="fa-solid fa-circle-chevron-down"></i></a>
									</span>
								</button>	
						</div>
						<div class="title_text border-bottom border-2 border-dark border-opacity-50" style="width: 780px; display:inline-block; margin-left: 20px; margin-right:200px; margin-top: 40px; line-height: 40px;">
							리뷰
						</div>
					</div>
				</div>
			</div>
			
			
			<div class="col-md-3">
				<div class="row" style="padding-top:40px;">
					<div class="col-12">
						<h2 class="nowbest border-bottom" style="display:inline-block; width: 171px;">지금 베스트셀러</h2>
						<div class="border-bottom" style="display:inline-block; width: 171px;">
							<span class="rank">1위</span>
							<span class="title">&nbsp;기후위기? 인류위기!!</span>
						</div>
						<div class="border-bottom" style="display:inline-block; width: 171px;">
							<span class="rank">2위</span>
							<span class="title">&nbsp;때로는 행복대신 불행을...</span>
						</div>
						<div class="border-bottom" style="display:inline-block; width: 171px;">
							<span class="rank">3위</span>
							<span class="title">&nbsp;시민의 한국사</span>
						</div>
						<div class="border-bottom" style="display:inline-block; width: 171px;">
							<span class="rank">4위</span>
							<span class="title">&nbsp;역행자</span>
						</div>
						<div class="border-bottom" style="display:inline-block; width: 171px;">
							<span class="rank">5위</span>
							<span class="title">&nbsp;개정판 | 하얀늑대들</span>
						</div>
						<div class="border-bottom" style="display:inline-block; width: 171px;">
							<span class="rank">5위</span>
							<span class="title">&nbsp;개정판 | 하얀늑대들</span>
						</div>
						<div class="border-bottom" style="display:inline-block; width: 171px;">
							<span class="rank">6위</span>
							<span class="title">&nbsp;프로젝트 헤일메리</span>
						</div>
						<div class="border-bottom" style="display:inline-block; width: 171px;">
							<span class="rank">7위</span>
							<span class="title">&nbsp;달라구트 꿈 백화점2</span>
						</div>
						<div class="border-bottom" style="display:inline-block; width: 171px;">
							<span class="rank">8위</span>
							<span class="title">&nbsp;행성</span>
						</div>
						<div class="border-bottom" style="display:inline-block; width: 171px;">
							<span class="rank">9위</span>
							<span class="title">&nbsp;돈의 흐름</span>
						</div>
						<div  style="display:inline-block; width: 171px;">
							<span class="rank">10위</span>
							<span class="title" style="line-height:12px;">&nbsp;개정판 | 하얀늑대들</span> 
						</div>
						<br />
						<div class=" d-grid " style="display:inline-block; width: 171px;">
							<button class="border-bottom border-end border-start border-top more" style="background-color: #EEEEEE; color:#666666;">더보기▸</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		
</div>
	
	<footer>
				<div class="container-fluid" style="padding-top: 30px;">
						<hr  style="background-color: #F0F0F0;">
				</div>
				
				<div class="container bodyd">
					<div class="row" style="padding-top: 41px; padding-right: 20px;">
						<div class="col-md-2" style="width: 184px; height: 164px;">
							<div style="height: 24px;">
								<i class="fa-solid fa-headphones-simple fa-xl" style="color: #787878;"></i>
								<span class="footer1">고객센터</span>
							</div> <br />
							<div style="height: 24px;">
								<i class="fa-solid fa-volume-low fa-xl" style="color: #787878;"></i>
								<span class="footer1">공지사항</span>
							</div>
						</div>
						<div class="col-md-2">
							<div style = "height: 24px">
								<span class="footer1">서비스</span>
							</div>
							<div style= "height: 22px">
								<span class="footer2">리디페이퍼</span>
							</div>
							<div style= "height: 22px">
								<span class="footer2">제휴카드</span>
							</div>
							<div style= "height: 22px">
								<span class="footer2">뷰어 다운로드</span>
							</div>
							<div style= "height: 22px">
								<span class="footer2">CP사이트</span>
							</div>
							<div style= "height: 22px">
								<span class="footer2">리디셀렉트 B2B</span>
							</div>
						</div>
						<div class="col-md-2">
							<div style="height: 24px;">
								<span class="footer1">기타 문의</span>
							</div>
							<div style="height: 22px;">
								<span class="footer2">콘텐츠 제공 문의</span>
							</div>
							<div style="height: 22px;">
								<span class="footer2">사업 제휴 문의</span>
							</div>
						</div>
						<div class="col-md-2">
							<div style="height: 24px;">
								<span class="footer1">회사</span>
							</div>
							<div style="height: 22px;">
								<span class="footer2">회사 소개</span>
							</div>
							<div style="height: 22px;">
								<span class="footer2">인재 채용</span>
							</div>
						</div>
						<div class="col-md-2">
						
						</div>
						<div class="col-md-2">
							<i class="fa-brands fa-facebook fa-xl" style="padding-right:20px;"></i>
							<i class="fa-brands fa-instagram fa-xl" style="padding-right:20px;"></i>
							<i class="fa-solid fa-circle-play fa-xl"></i>
						</div>
					</div>
					
					<div class="row" style="padding-top: 60px; padding-bottom:20px;">
						<div class="col" style="padding-bottom:20px;">
							<span class="footer1">리디(주) 사업자 정보▿</span> <br />
							<span class="footer3">이용약관</span>
								<span class="divide">ㅣ</span>
							<span class="footer3">개인정보 처리방침</span>
								<span class="divide">ㅣ</span>
							<span class="footer3">청소년보호정책</span>
								<span class="divide">ㅣ</span>
							<span class="footer3">사업자정보확인</span> <br />
							<span class="footer3" style="padding-top: 16px; padding-bottom: 20px;">©RIDI Corp.</span> 
						</div>
					</div>
				</div>
			</footer>
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
 <script src="https://kit.fontawesome.com/06cf56417a.js" crossorigin="anonymous"></script>
 <script src = "/resources/jscript/bookview/openclose.js"></script>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script>
  $("#logoutBtn").on("click", function(){
		alert('logout');

		
		$.ajax({ 
			url : "/member/logoutProc",
			
			type : 'post',
			
			data : {
				
			},
			
			success : function(data) {
	
			 	if(data.rt == "success"){			 		
					location.reload();
				 } else {
					 // by pass
				 }
				
		     },
		          
			error : function(request, status, error){ 
							
				  	console.log("code: " + request.status)	
			        console.log("message: " + request.responseText)
			        console.log("error: " + error);
				 }	     
		});	
	});
  
  </script> 
</body>
</html>
