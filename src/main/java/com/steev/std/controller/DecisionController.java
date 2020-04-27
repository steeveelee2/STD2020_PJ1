package com.steev.std.controller;


public class DecisionController {

	
	public boolean chkStep(String sel) {
		// 1단계인지 2단계인지 체크
		switch(sel) {
		case "한식":
		case "탕, 찌개":
		case "중식":
		case "일식":
		case "양식":
		case "해장":
		case "간편식":
		case "기타":
			return true;
		default:
			return false;
		}
	}
	
	public String[] decisionName(String sel) {
		// 메뉴이름 목록
		
		if(chkStep(sel)) {
			String[] arr=null;
			switch(sel) {
			case "한식":
				arr=new String[]{"불고기", "오징어두루치기", "닭볶음", "쌈밥", "비빔밥", "생선구이", "낙지볶음", "게장", "떡갈비"};
				return arr;
			case "탕, 찌개":
				arr=new String[]{"김치찌개", "순두부찌개", "된장찌개", "부대찌개", "동태찌개", "청국장", "갈비탕", "추어탕", "삼계탕"};
				return arr;
			case "중식":
				arr=new String[]{"짜장면", "짬뽕", "볶음밥", "탕수육", "마파두부", "양장피", "깐풍기", "유린기", "고추잡채"};
				return arr;
			case "일식":
				arr=new String[]{"초밥", "라멘", "낫또", "오니기리", "덮밥", "우동", "야키니쿠", "메밀소바", "돈카츠"};
				return arr;
			case "양식":
				arr=new String[]{"토마토스파게티", "봉골레", "크림파스타", "피자", "함박스테이크", "리조또", "스테이크", "햄버거", "시저샐러드"};
				return arr;
			case "해장":
				arr=new String[]{"북엇국", "콩나물국밥", "순대국", "뼈해장국", "우거지국", "선지해장국", "올갱이국", "매운라면", "물냉면"};
				return arr;
			case "간편식":
				arr=new String[]{"편의점도시락", "샌드위치", "토스트", "샐러드", "김밥", "떡볶이", "핫도그", "밥버거", "시리얼"};
				return arr;
			case "기타":
				arr=new String[]{"쌀국수", "팟타이", "카레", "찜닭", "수제비", "칼국수", "아구찜", "닭갈비", "월남쌈"};
				return arr;
			default:
				arr=new String[9];
				return arr;
			}
		}else {
			String[] arr=new String[1];
			arr[0]=sel;
			return arr;
		}
		
		
	}
	
}
