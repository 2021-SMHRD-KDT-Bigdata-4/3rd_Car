<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<!--
	Editorial by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<title>Car</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="resources/assets/css/index.css" />

</head>
<body class="is-preload">

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Main -->
		<div id="main">
			<div class="inner">

				<!-- Header -->
				<header id="header">
					<a href="index.html" class="logo"><strong>당신의 안전을 책임지는
							co-car</strong>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp신근아님 환영합니다.</a>
					<ul class="icons">
						<li><a href="login.jsp">Login / Logout</a></li>
					</ul>
				</header>

				<!-- 내용 -->
				
				<!-- 게시판 우선 기능 구현 x 
				
				<section>
				<header class="major">
					<h2>회사 게시판</h2>
				</header>
				<p style="font-size: 20px; color:black;">회사 게시판 블라블라</p>
				</section>
				-->
				
				
				<!-- 사진 -->
				<section>
					<header class="major">
						<h2>눈이 번쩍이는 Tip!</h2>
					</header>
					<br />
					
						<article>
							<a href="https://www.mkhealth.co.kr/news/articleView.html?idxno=45216" class="image"><img style="width: 500px; height:200; min-width: 200px" src="https://cdn.mkhealth.co.kr/news/photo/201912/img_MKH191227003_0.jpg" alt="" /></a>
							<br />
							<a href="https://www.mkhealth.co.kr/news/articleView.html?idxno=45216"><p style="font-size: 20px; color:black;">졸음 쫓는 스트레칭</p></a>
							<a href="https://www.mkhealth.co.kr/news/articleView.html?idxno=45216"><p style="font-size: 15px; color:#5D5D5D;">쏟아지는 졸음을 쫓으려 눈을 아무리 부릅떠봐도 의지대로 되지 않는 것이 눈꺼풀이다. 지나친 움직임과 자극보다 오히려 앉은 자리에서 할 수 있는 간단한 동작들이 졸음을 쫓는 효과가 있을 수 있다...</p></a>
							<p style="border-bottom: 1px solid #BDBDBD;"> </p>
							<br />
						</article>
						<br />
						<br />
						<article>
							<a href="https://www.youtube.com/watch?v=P_f5qtBpwzQ" class="image"><img style="width: 500px; height:200; min-width: 200px" src="https://www.jobindexworld.com/_upload/content/201811/thumb/E4AX6EaozoPpgi1G.jpg" alt="" /></a>
							<br />
							<a href="https://www.youtube.com/watch?v=P_f5qtBpwzQ"><p style="font-size: 20px; color:black;">커피냅</p></a>
							<a href="https://www.youtube.com/watch?v=P_f5qtBpwzQ"><p style="font-size: 15px; color:#5D5D5D;">흔히 알려진 카페인 섭취는 카페인이 중추신경을 각성시켜 잠을 달아나게 하고, 순간의 집중력를 상승시키는 효과를 가지고 있어 잠을 깨는데 좋은 방법이라고 합니다...</p></a>
							<p style="border-bottom: 1px solid #BDBDBD;"> </p>
							<br />
						</article>
						
						<br />
						<br />
						<article>
							<a href="https://www.jobindexworld.com/contents/view/3714" class="image"><img style="width: 500px; height:200; min-width: 200px" src="data:image/jpeg;base64,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" alt="" /></a>
							<br />
							<a href="https://www.jobindexworld.com/contents/view/3714"><p style="font-size: 20px; color:black;">3분 스트레칭</p></a>
							<a href="https://www.jobindexworld.com/contents/view/3714"><p style="font-size: 15px; color:#5D5D5D;">언제 어디서나 쉽게 할 수 있는 졸음 뽀개기 스트레칭! <br />#의자 스트레칭 #교실 스트레칭 #최적화체력</p></a>
							<p style="border-bottom: 1px solid #BDBDBD;"> </p>
							<br />	
						</article>
						<br />
						<br />
						<article>
							<a href="https://m.blog.naver.com/PostView.naver?isHttpsRedirect=true&blogId=dongdonggl10&logNo=220594959733" class="image"><img style="width: 500px; height:200; min-width: 200px" src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxASEBUSEhAVFRUVFxUXFxcWFxUWGhUVFRUWFhUVFxYYHSggGB0mGxUVITEhJSkrLi4uGB81ODUtNygtLisBCgoKDg0OGhAQGi0lICUtLS4tLS0tLS0tLS0tLS0tLS0tKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIAKIBNwMBIgACEQEDEQH/xAAcAAEAAQUBAQAAAAAAAAAAAAAABAEDBQYHAgj/xAA+EAACAQMDAgMGBAMHAgcAAAABAgMABBEFEiEGMRNBURQiYXGBkQcjMsFSsfAVQnKh0eHxYpIWJDNDU7LC/8QAGQEBAAMBAQAAAAAAAAAAAAAAAAECAwQF/8QALxEAAgICAQMDAwMCBwAAAAAAAAECEQMhMQQSQVFhcYGhsROR8DLRBRQiQoLB4f/aAAwDAQACEQMRAD8A7VSlKAUpSgFKUoBSlKAUpSgFKUoCJql+sMTOxHAOB6nyrietXRnkZnYksST+wrbvxB1Xc3gK20gkk4J3HJAHwAGK5+ZMHg5+P9dq58srZ1Yo0rJ0aIq5wB8qrblnP7enzqFuLEKvJrcen9F4DMKyNqskaJpeeWB+XNbdZ2YA7VbsoABgdqykS1ZKyJOiiQj0q4IB6VdVauYrRRMXIjeD8KgXmnhsnFZcivDLRwVCORpmpXOnnGCPX7f8VpmuaJ5qMY4/r07V1eaEHyrB6npwKkAd6xao6YzU1TOTRwuMg/Q/sw/r/TxvZTuUkEHPHkfUZ+mc/wDOb121MZ34wOzDyrXZZf7w7rxj1Hofp51JSqdHX+hOqhcIIZD+YBwf4gO/1H8q3GvnbTLtklUxttOQUb0YYK/uPlXceltbW7gD42upKyJ5q44IP2rfHO9M5ckK2jMUpStTIUpSgFKUoBSlKAUpSgFKUoBSlKAUpSgFKUoBSlKAUpSgFCaVH1CXbE7cDCk89uB50BxnqS4BkdsnJJHcZ47+frWr+IM+n1yTU7Xrws5IAGf5d6xGno0kgVFLsTgAdyfIAfc/SuXts7Gzb+mLDcd20ntk4OFHxro9nAFUYqX0zpi20CxAAnGXP8TeZz6eQ+Feo7fZlCAME4x5KScD9vpSUaJjLlFyIVMiFWY46kRrVoorJl4V6ryor1WqMWK8EVdrywoQWHFQLhayLio0yVlJG0GarrOlCRSMdwf+a5DqlpLbyMSjFV4ZgDjBOBk9hyQOfWu83EJIwvc8D51evrCJ7Y20i5R0KMPgRjPz88+tUgtmuR6Vcnz5v7YPxH8x9/T411Xpe/CS21wvC3KiGYZPEoUmNvjnGPgCPWuRRIyEoTkozKT8VYhh9xXSNL50pHX9STFfru8RD9G+1WWjN7R1wUq3C2QPlVyuk5BSlKAUpSgFKUoBSlKAUpSgFKUoBSlKAUpSgFKUoBSlKAVp/wCJeomK0ABwXcKPjgEkfLgZrbpGwCf69K17rXSfa7N41AMgKtGTxh1Pr5AjIPzqsnovBbPn24hmklWFFZpHOAoySc/Cuu9CdH+xKXkw0pHvHuFH8KfufP4VteidO28B8URqJSiqz9ztX+6CfL17Z8/hOuYDJgdlHf41jJaNoyViyycnGBWv3fUCeM+OQp258vdzn/MkfSs3qF4sMfJ948KPVj2FYrTrKNEACj1JI7k9zUSl4NIRu5FsdRqBnaf5fzr3b9VxZ5U/SsgbSNhyin6Cok2gwHkLj5f6VNsilZlrXUI3GVapQesBb2vhng8VlrZ8ipjIpKCXBL3V4klAoTWLv3J4qZSoiMLZeuNWhT9TisXddTwjyJHrVhtFEhyxNSE0G3X+5k+p5qnczRxS4Ia9SxGWPnALYz5e8MDPmOSPvWx3gyucfGte1Lp63kjZSoXIIDLwQfIg1mNHvRND394e6w9HHBH3/wAqiL8EyVJNHGuvdKa3uzOB+TOwz29yUjkMB2DYLA+u7NZ3odWm8O3H6BIZX/wgDHP+X1rol/o0VxC8FxGHRvuOcggjlSDggj0rn2i6NdaZetGJSUxmJyM+ImeVZe24djjHJB4BqUuGyra3R1e0/SPhxV+sdYXm6Hdjay+6w/hbj/UH61MVuQP67f7VvZzdvku0pSrFRSlKAUpSgFKUoBSlKAUpSgFKUoBSlKAUpSgFKUJoCLqb4THqQP3/AGq3vAXn1FUmUSNz2Hb/AFr1LCDgeWf5VhJ27OiCSSTLsTb/AJV7uZ1jQsxAVRkn4Crf6R+1aB1Hr/tTmGI/lq2Cf42Hf6D+f0o5dqJjDufsXzeNdTmbHuJwg9B6n4msjDegedV0a02IB8Oag65pLgGSJtpAJweQ3wPp8xWFN7OttLRnLO8DHFS7iYKK51ZdRtG+JbaQEd9hD44B57Y/2rIXHUkspAit3+cmE9eMAsf8q1XckYtwctGzSXynipWkybhWL07TZeGlZSDj3QmOD8SSfT7VmdNi21WnZLce10S7k4WsIJwWJJrN3o92ta1OzkC7olVsAkqSQSc/3eCPv96tJbK42lHZlraYMcA1cnmxxWn2HUkKvslPhOOCJMLj5EnafoTV3UOprUHm5jx8HUk/IA1FuiUo3zozlxPx3rUotTNreeJzsY++Pgf7w+IrKafNJMNwRgnkWGCR648vrWN6nssbW+hrLfJuqqjpFtOrqGUgqwBBHmD51YvbdTglQdpyufI/CuZdD9SPBM0EhJhdjtP/AMbH/wDJP2P1rqSuHXjmui7OJxrfgi2UBEbuce8QcegTAGfjx/KrtxLgK3oQfpmoscpicq3Ktn+vpU1IgyAHngUbtaJS7eeCYaVbhbKj4cfarlb3ZzNVoUpSgFKUoBSlKAUpSgFKUoBSlKAUpSgFKUoBUW6fJ2j5n9hV+WXHzqBNLtBPmaznKtGkI+StlICM1JRve+Q/n/xULToeMjsa86rfLbp4hBPYYHmScD/M1knStm8o3KkYvrzXfZ4NiH82XKr/ANI/vP8AQHA+JFaP0fECcehrxre+7d59x3DACnsoGTgV76PciQ5GDgcfLHP71m5WbRh20dHsY+Kn+ACO1Q7NxWSiq8DLI2QW0iI90H2FXorFF/SoH0qdiqMK1pGPc2R2SvMQ5r1cSAVS355qvkulo9zrxVhEFSpBxUeJucUfJEeDE6h07BKwZkzg5+HfP9fM1jU6FtQ24L55rcAKEVLRCkY2CyCKFHYVhuoLYFDWzyitf6hcLEzE9gT9hmspo6MbZo2gWEchY553HI9eTjiumaMx8JVIwQOPiO37VzLpEMHLY905wfUnOMVtl5r5jvjHn8uFUjI+O1WZvnzj6Ui62JRbSijZdXh3Rn1HI+BFV06XdEpP8I/lXg3iPHkMDkfzqTDGAoHoKvy7Ri/6afqLSXLsvpg/tUuoVggDOfXb+9Ta1h/SY5K7tClKVcoKUpQClKUApSlAe6UpQClKUApSlAKoTVas3RGxsvsG1vf4Gzg+9k8cd/pQGIuep9PjYpLfWyODhleeJWB9CpbIq/bahbzxl4J4plHBaJ1kAPplSRXDOnIssYFtbeWKIlWuwcrKQTlk3JlyfXtx37Z3H8MrVHv7yeMLGkaLbtGMKXfd4hlaMdgANqk9wWrfL0sYYVl7rvxTR6M+lUMKyqXPimv5Xrw/B0+27VWaEMyZ8jn58H/auKXPWtw8sok1X2QrLIggWOMeGEcqAzOpLMQMk5xzUfqLqa/LRafPdGWOeSNjIoWGQx7irwsYwAVJKtkYOFI86rHpcnYpap159dKzL/K5HFTVU6XK1ela8bOvX1gVYlRwagwQlWBNYH8KVMc97boz+zxezlEZiwjkkRi6oW5CkBDjOM1vF9bjGR5GsMuF45uPoyk7hN45cp1Z5t2qchrAaprdtZxeLcSiNCQo4JLMeyqqgljweAKwVv8AifatINsE5ty6x+0lQqB2IXJRiHChjgtjv5VWEW+FZDTfC9/p6/HudABqpNRNSvUghkmkOEiR5GxydqKWbH0BrnkXXupyKskdjbqjgMoeaQsFIyN21cZxW2LFkytqCuhiwZMraxxbo6Ixy3yr1bzK2drA4ODgg4I8jjtXGr3q68vb32QvJZmGPdJ7PID4jkqVPibchdrD3cdyc1uP4bM89mlw7hpd8iM4wPEEcjIrMB2JAGfvUTwzxxUpeW1765LTwShFSlq7Xva0zei1WT3zUO+sTKMMzAeikjPzx3qJqurwWUQkupVjjBCrwzMzHsqqASx4PAHlWVmVJLkz4pWgRfilaM42wTm23rGboqFQMzBclGIfaGIBbHfPFWuv9XuDexWUNxJAohaeVotodsyeHGoZgdo91zxW2PDOc1BLb4LY8M8k4witvjx9fj3N/esTqzjbj14/1rHfh7qc9zpkE87F3bxPfIALosrqjEDjJVVrNxW4ckny7Vg14ITSVkLT4AzjHZQCfvWOuz+Y5Pcu3/2NY/qXqq5t7trWzgidkRJZWldlyHLbUjCjvhT7x45rTbv8Q5p45bq1toxFGAZPFdtxkcAuke0YIUtjJ7+gzWi6fI4ppc39uf2NoY5tpqOmnX/Hn9jrWn4Krgf74rKiuL9G6xdpcWLteTTC7JEkUpXZzE0m6IYHh4YDt3zVlfxC1OOJL8yrNHIzKbQRBQgyygLKBv3KV5J4PPwrR9Lki2vRXz4/jGTp8ik41wu57XGv7nZ1PJqQDXz9r/U2p/kW812WW8ZPEREWExjehMcbphsHdtOSSdvxNbv+Fi+FdXdvEW9njS3cIzMwjlk8TOzcSQCqgkfCrPpskItyrTSrztWRl6WcIylKlTSavdtX8efU6VSq1SsjkFKUoBSlKAUpSgK0pSgFKUoBSqUoD1XLPxO12a4E+mWtvvK+D40rSCNQSVl8IL3cFcZ5GM+ddSrl34x6HapCb0bo5nlgRykjo0yZ24WMHEkgTtxnAPpV8fZ3Lv4/Y0w9neu/j5r7vVepqE2n30qOzP4DR4MEMLIUBXt4hx7w7DHAx5VauNXv7NprxrZUaS2NsGjlBKyuwKTFSPfIIwB3GfOrtjZ28rbBHeoeTukadR9y2M81tf4Y9MWkttFdyh5pY5ZvDd5JHUmOV1jlEZO3cAODjuM969Xr5KOOpXv38rabTX4r8Hu/4hKMcVO/9Xm/K3bteL8VrXoazawFYo/YPZWXb7zSbiWPGWJXknvnNYiwZpdTVZiryxsWLxn8sRCE7I0B5BDyEnJPlWV6vsLP+17gLYi4UJECIFCLFLhjKJMFVaQkg55POO+ajS6JBm2aG3ktpZbiKLCOVco8gDjKsRjaCc+WKssjy4o5KpR21b4X0r4VllkebFHLVRi+6rfEfbtS91s6Z+EsJMF1Of8A3rqXaf8AoiVYl/zRvvWj9Q9SSziS6mv7mC38aSOCO2cx5VHKAttGXZihPPAzXYNN0uO2tRb2yBFRWEY5OGOTkk8kliST8TXBWijFtBayw3Int3VjCsMhZmRjvP6SGXljkGuHp+2eSU515avi2/vR5nS9mTLPJkry13cW39LrZOkQi8tknvbie5G59rtmNVMbrIwTG1M7ccHOcVdurRnVYWQn2u+iQr3wnirk49CkRY/4jnzrxa3FvLevcozkxwESBlZAgyCuA6g5wJPtWT6VieS/01HOWjjluJM/xCJUB/75T9q9HK4Y+nm4VW6rjdR+r5/Y9fI4Q6abhXbuqd81G2/L5s6R1ZrsNnbmSVDJvYRJEoBMzuDiMA8YIBznyBrj2laXBFdb38OGaXc0VsjOyQrzkDLe8cZyeB+raMCuxdS6DDewiKUuuGDo8bbXjkXIDqcHnBI5HnXBItItDCbqa5uAss7GNgSzHY0iwsSELFtqk547+VeZ0DXc2lbW9ukl5+vp6cnmdB2qbl2ptbtukkuX8/Olz4J3TqPDPezzqfFiRfEOQwckvISmB7q7BFhfLit5/DLRJobh7w2wtYJYERIg6sZSWEgmdVOFIGVAPPvGtLg0dHFukNzPLHe3EaShyMyR+9vbcU3qcJ9vvXZr+FYreSRFcmKN2WNc+9sUlUHzwBWnWz7IrCuNu+bttrf8s16xqMVh8bd6d221v8tVbOa6pc3E+o3EVxdXcLq7mGKOSSKP2ZTtjkXZ7rFs8nOc8eVY+GFWe1nW7uZsyuF8aV5BxHKHO1+36DyPhUGDWklYu94jXVyg3SH3UtogCfDXPAK5OB3J5NSNI1CN7nEQItrWAhWIPvFiBvBPcARsM+eGrt6aEIxgpRj3e3N88+y2/wBjs6bHiioJqPd9758PlLb969GXNW2rEVmIRLi9jDbiNqxeKuWPkFKRFj/iPrTqbrixOpTTLI00UkUKI0aMNuzxN6EPtOcvnI9aDQ5dQaxtGk2uYpbh2YbsOiJtyp7gu+CPSvEmrakA7A25VLjwAQsnvkTCLeo3dtx7egNUyNPqO7upwj6X4bflcWUytPqu/upwiv8Ab3cpt+VxZr0vUGnJERb+1o4UiPEsyhWx7pH5mAAee1fQfROpx3FlFIlwk7BVWV04BlVV35UgFTnnBA7itNTpbWCcC4sv+2f/AFrbOienWsoZBJMJZZpTNIwXYoYqqhUXuAFUcnk81w9TLFKnBr6R7f8As8zrJYnXZJX6KHavy79DReop3k1S/kVA5hSCGNcgbisTSsuTwMtIBWodVkppbBrZbdpZFXw02kZDbs5UAEkIK3/8UtGtox40ayC7unWJQkzxozqhJllUHkKic45PHrmueHQIZnMH9oTyXMQzl9xRXG0nAII43LkBsjNdnTzc8H6cV4a20k296vd1/wCnb0s3k6b9KC8OO3FJt71e26+nqZHX7YGI2yWftDW9o0m4sFEMSDYXyTkn3RwvJxV3T/EW0tkguIUwiF92GzlQSBg98k1vn4SacjWgvnkeWe5TbIXCAIIXdDGiqMbdwY58+K5/r3SlrLd6iiQRqySBIdn5aIfBQhQq8DDd+OcmpxdXLLmkoR01rw9e6Tdsth62WbqJLHHTWt06Xuk9sf2tu1UQoqupjAZ+5Qorye6Rx/eQH6V0L8KIiVvZyMGS6ZAfVYI0jB/7t4+lc01CwdIJriWJYGiiVYEt2MaxttCvJiPaCzvgnOeAB5Cu6dMaTHaWkMCLtCIM9zlz70jEnkksSfrWPWZMjgo5FTbcq9PCXBh/iObK8ajkVNtyr0XCXHz5/ssrVKrVK848gUpSgFKUoBSlKArSlKAUpVKAUpSgK1zT8U90d1aXMqsbaNJlLhSwilfbh3x2BUEBvKulVWr45uElJco0xZHjmprlHzlq2oq8UgTVWZmyEjjjjLMzH3Y12Lv5JA713Lpq1EVpbxiIRbIowYwSQh2jcuTycHPJ5NSpYEEmQig47gAH71eiqep6l5pK1Ve7f5OrqOoedqTVfVv8s4nfQSWwlguluYWM80njxRuyzCSRnV1kRWHIIyDyMVO/DzTt+qRTxm4mijim3yXKOFjZgoTwSyLhzyDjyzXZqE1eXVzliWJpUq+dfb7CfW5JYVhaVUle719a+wSvea8J516rnRxPk1jqXoe0vpDJL4iuUEbGKVkEiDJCyKOGA3H71C6b6Shs5WlEs00rIIw8zLlYwd2xdqgckAk9zgVuta1r+t29n71xKI1LYXhmZiecKigs30FROUqq9GmOTqr1/PBkLlWaN1U4ZlYKT5EggH71x+Pp67FvHbT6PLL4IxlXiKFhxvU7x35P1rq+lalDcRLLDIskbdmU5BwcEfA58jWUSrYOonib7a36qzoxZp4m3Gt6dqzmnSPTt017byyWjWtvaLIVV2jYvI6GNVCqTgKpY5PniuoUUV6qcuWWSXdLkyy5ZZZd8uTG3ukW0q7JbaGRd27a8aMN38WCMZ+NYTqDoeyu33yCRDsETeDI0YeMZ2o6jggZPl51tpFWXFZccFU64NX6a6QgspWmE000pQRh5mUlI8htihVA5IBJ7nFc4Gg3KQC0udNuJ9ruxePaySkyMwkBVwRndnB7V2h2qLNN6d60xdTPHJy5tU72dGHNKEnJU7VO93fz8HMej+l5lvreW30+ezVGLTSSMVDxbSPC2F237iR5cYzXZq8RrgAegFe6vPI5vuaS+FSOXLkeSXdSXslSNP8AxE0KedIZ7YK01q7uI2baJUkQo6BjwrYxgnjitDtenr5pWNvpns8s3DzzSIVQHlmCKzFuRnAHJwTXYtVuo4oHkldURVyzMcAD1JrD9OdQ2l6WNtMJNmNwwysu79JKuAcHyOMGrQ6nJiXbD544ft6aN+n6nJii4xfvwtOqtOtGQ6c0iOztYbaPlYkC5Pdj3Zj8SxY/WuQalaTJJdxXFleky3M0haGKV1ZGcNGUkTy2hB69wa7iKpVcOZ4Zd0V4rZXBmlhl3RS4rfozhNjpLy+HaQ2d2qNPE8r3EcqqsaSK7ktJ3OFAC+dd5qFN3qbTJmeWVtJVrRHU5nlkpNJarXFFKUpVDnFKUoBSlKAUpSgK0qlKAUpSgFKUoBSlVoCHcfrPyFXIxxVojLE/GpKisvJr4PVYTXep7OzZUnmw7glUVJJXKju2yNWIXg8kYrNkVznqy7uIdTB02SOa8mijikgeMyLFEjMwmeVXHgL7/Y53cYFWRSzPWfXenyP4aSv4jBiiPFNEZCoJ2IZUALHyGc1rI6yvba2tdTu7iCS1umAaCOIq0AaOR12Sl8yEFMMCPXHrXn8WNTlS3t7WZkEoVrt5gDHGz2qs6wwZJO9n2jGchefPix1H0w1zDpekhtu20mlc88SR26RRk48vFlJPwyKuVL2pyQypDLrt1sSYGSKwiV/DiQjAedkUuzKGXLNtUN2r3penXUGvWltJP7RHDazvHK4XxPBfbGEcjgsrKvv9yGwaxV91Vp15cRRXulzzXsZNviF0aCV0YOY94lVZF3ANsYHGcGpGk9VLHqmoXeoSW8E0VrHHHCJVcouXlaAMP/UkDBdwXzb4UBlOmZ5La9ubee3eE3VzdXMB9zw5I1KA7drEq2MMcgfqqd/4ours7NKgWQAsGupwy2wK5yqFSGlORjK8DOckVrsujXA0uW8lmuJr17Jh+a5PgiRA0qRIANpx8zkd6yusaJd3VvZf2TepDZxwqAUlePaw24kbYD4uFBGxiPePPnWaSbs0baSRs3S/UYug0ckLwXMQXxoHHKFhwyHs6HBwwqF1zr8tu9rDHPDbC4eQPczANHCsce4Lgsq72PA3HHBqHpt2l1rMtzAweGC1Fq0oxtlmaUSkKw4YIB5eb1ZktY73V7mK5jjl9mt4WtbeYjw5GlDmSYrg5wwVN21tvp2q3miHxZXTnv5i3s3UVldOo3eGtvCRjt7ximLKuSBms70vrovLGG6K7DIpLL5B1Yo4B8xuU4PpitY6ok1CysZ5orDT7QBMPLDIWdUJCnYvgxhm54BbGcVselWCQW8UEedkaKi574A7n4nufiarN0icatlvqDXY7ZA7B2LsEjjjG6SWRv0oi+Z4P2rCSdXrtwltJ7T4624tZCsb+Ky713NlgqFPe38jFWenre3Oo39zcwxsLaZCt3I+FgVYkZYUU8KVJJYgge/WQ6mtrSa+090s4pXupY3S8VhlRbAXA7DLhkjwOcYJ9BkoJrZMptOkRb7XNZWO7umFtbiywWtSDL4yCNZGf2gEbchiFwvcEHtWBGq25WSfVLvVbeUyOdkftMcMURciBUMSbCNm33s5JJrPficDHpl6YnEz3lzFEioMkMPBhaAbTlj+RJkd8sR5VridS6cRFLc3d3qV0gV1tEiZIo5gOcQhFXKEkZYsR6E1oZGW6i6aj8a3tl1iWJZwJGjvZTP4jRSwtAiRSsp3FieM87SMGtkjTf1BK64/JsI42x3LTTs6gn4LHx/iNaJoHVI/tRbnUYYf/NbVWWZJYhp4iErpErTxBWydvvKw94k9sVu3Q0yXFzqF6h3JPcLHG47PHbRLGGQ+a7/E5+dQyUbiaVWmKqWIs9S81GnXipAqYiRWlUpmrFCtKUoBSlKAUpSgFKUoBSlKAVWlW5JQKAuVbmfA+JqHNdN5cUhJOMmqd3oXUPUkxJV8LXhBVw0QbPJrndn05qcXjW0UsEEc08sst4hZrmVJHZ9u0rhHAbbvycDkDNdDJrG3UmWwPL+dQ3RKjZzPrfTL5LWGzuZ7ee0F3bqtxIze0CJpAqiXK7AVBYGTPK/Emtjt9UhfWrmdW3pb2kNuGUgqGeR5pAGHGQAgOPhWavrdJEZJEV0YYKsAykehB4NYs6REkDQQosKMrriNQoBcEFgB51H6hb9MwGlR2Y6ds1vLr2RGl8WJwFLKwnkmhwSp97bglsc8+tSNW0+GOz022t5jMtzfJcGVwN0qgyXTyHAHJwozjtimm3Gs29vFbCHTpEgRY0Z2nBZUUKrFdpAYgDOPPNXoIb65u4Li89nQWyyCKO38QjdKFVnZnx2VcAAeZq7kqKKDsxlzrcTXVyl7q0tgY5dkMUaoN8OxSJi7Rtu3Et8tta7cdN9MO7O2tSZY5bAjUE+pUQgeZ8q7BGAe4q6Ih6D7Cs1OvBd47fJya/1uC1SGPTNZmkXeqTL4MckdtanIkuNqQqF2EqR65qZdjQJpoZbrXJLnwXDqsojIOCCUJWEHaccjNdTjUDsMVXwh/CPsKnu9iOx+pyjXYOm7q69p/thoiCjLHGFEaMigAqjREZyM/Mmtu6GvJprUvK7SL4sohldNjzW4b8qR0wMEjPkMgA+dbO0Q9B9hRVqJS7lVExjT5NKm06e3N1CdPW+s7yUzsokRHjlYIGVlkIDLmNWBByKh2mutHqlub+OHT7a3tJjbRGRSAxaOMgsAEL+GDhFzgHjOTXQX7Vjr6BHGHRWAORuAOD6jNFkYeNPZqtvqENw2jxK6MWeW/mCsreE3hvJ7+D7p8W4I581PpUi+a5uNVmubOaK3S0hFpPcXAEiOxZZikaZG3buXcxYZJAwcZrM6XpVvCWaKCKNn/UURULfMqOaw6WV7aPciCC2ura5ladoZmMbJK4Xf7xVldSVB5AxVlNWVeNpaLHVep+0ae9g15a3t3dyJHEtuoAVSyEyOod8BArvvOBwPTNdCMYQDA4AA4GMYGBwO1c9t7CeW7tpm0+0sltpGkJhYPLITGyCPcsahUO7JznOBW/Leo4weM/WpcoshJrdEhXq6KjxHIzV8GoJZ4kSqxdvlVw1aB5+dStMh8HulKVcoVzTNUpQFaVSlAVpVKUBWlKUApSlAKgy9zVKVSZeBaer8felKzReRNWqmqUrQoeaw5/Ufmf51WlUmXxlJKjPSlUNCNNVIO9KVJCMjDUmlKgsy4le6UqxmeKqKUqCS3N2qJLSlQWRahr29KVBJHevcdKVJBmbP9AqStKVqjKXJ7qw/6h86UqSqLtKUq5QUpSgFKUoCtKUqQf/Z" alt="" /></a>
							<br />
							<a href="https://m.blog.naver.com/PostView.naver?isHttpsRedirect=true&blogId=dongdonggl10&logNo=220594959733"><p style="font-size: 20px; color:black;">잠 깨는 지압법</p></a>
							<a href="https://m.blog.naver.com/PostView.naver?isHttpsRedirect=true&blogId=dongdonggl10&logNo=220594959733"><p style="font-size: 15px; color:#5D5D5D;">점심을 먹고 나면 어김없이 밀려오는 졸음! 해야 할 일은 많은데 눈은 풀리고 정신은 몽롱해지기 십상이죠. 이때 잠깨는 지압이 많은 도움이 된다고 해요...</p></a>
							<!-- <p style="border-bottom: 1px solid #BDBDBD;"> </p> -->
							<br />	
						</article>
		
				</section>
					<br />
					<br />	

			</div>
		</div>

		<!-- Sidebar -->
		<div id="sidebar">
			<div class="inner">

				<!-- Search -->
				<section id="search" class="alt">
					<form method="post" action="#">
						<input type="text" name="query" id="query" placeholder="Search" />
					</form>
				</section>

				<!-- Menu -->
				<nav id="menu">
					<header class="major">
						<h2>Menu</h2>
					</header>
					<ul>
						<li><a href="usermain.jsp">메인</a></li>
						<li><span class="useralarm.jsp">알람</span>
							<ul>
								<li><a href="#">일자별 졸음 알람(주간)</a></li>
								<li><a href="#">시간별 졸음 알람(주간)</a></li>
								<li><a href="#">일자별 졸음 알람(월간)</a></li>
								<li><a href="#">시간별 졸음 알람(월간)</a></li>
							</ul></li>
						<li><a href="informagion.jsp">정보</a></li>
						<li><a href="setting.jsp">설정</a></li>
					</ul>
				</nav>


				<!-- Section -->
				<section>
					<header class="major">
						<h2>Get in touch</h2>
					</header>
					<p>Sed varius enim lorem ullamcorper dolore aliquam aenean
						ornare velit lacus, ac varius enim lorem ullamcorper dolore. Proin
						sed aliquam facilisis ante interdum. Sed nulla amet lorem feugiat
						tempus aliquam.</p>
					<ul class="contact">
						<li class="icon solid fa-envelope"><a href="#">information@untitled.tld</a></li>
						<li class="icon solid fa-phone">(000) 000-0000</li>
						<li class="icon solid fa-home">1234 Somewhere Road #8254<br />
							Nashville, TN 00000-0000
						</li>
					</ul>
					<ul class="actions">
						<li><a href="#" class="button">More</a></li>
					</ul>
				</section>

				<!-- Footer -->
				<footer id="footer">
					<p class="copyright">
						&copy; 제작자 : 빈솬조 <a href="https://unsplash.com">/이미지 참조</a> <a
							href="https://html5up.net">/디자인 참조</a>.
					</p>
				</footer>

			</div>
		</div>

	</div>

	<!-- Scripts -->
	<script src="resources/assets/js/jquery.min.js"></script>
	<script src="resources/assets/js/browser.min.js"></script>
	<script src="resources/assets/js/breakpoints.min.js"></script>
	<script src="resources/assets/js/util.js"></script>
	<script src="resources/assets/js/main.js"></script>

</body>
</html>