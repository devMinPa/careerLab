package com.springCareer.company;

import java.util.List;

import org.springframework.stereotype.Component;

@Component
public enum TagListCompany {
	WORK_FROM_HOME("재택근무"),
	WORK_SYSTEM("4.5일제"),
	FLEXIBLE_WORKING_HOURS("유연 근무제"),
	STAGGERED_WORK_SYSTEM("시차 출근제"),
	Shorts_Slippers_OK("반바지/슬리퍼 OK"),
	free_dress("자유 복장"),
	snack("간식"),
	latest_equipment("최신 장비"),
	use_nickname("닉네임 사용"),
	taxi_fare_support("택시비 지원"),
	incentive("인센티브"),
	code_review("코드 리뷰"),
	horizontal_organization("수평적 조직"),
	cumulative_investment_over_10_billion("누적 투자금 100억 이상"),
	support_for_purchase_of_books("도서 구입비 지원"),
	autonomous_commute("자율 출퇴근"),
	military_service_exemption("병역 특례"),
	lunch_provided("점심 제공"),
	vacation_unlimited("휴가 무제한"),
	stock_option_offer("스톡 옵션 제공"),
	tomorrow_fill_deduction("내일 채움 공제"),
	dinner_served("석식 제공"),
	rapid_growth_in_personnel("인원 급성장"),
	health_screenings("건강 검진"),
	education("교육"),
	loan_support("대출 지원"),
	parental_leave("육아 휴직"),
	club("동호회"),
	welfare_points("복지 포인트"),
	self_development("자기 개발"),
	bonus("상여금"),
	rest_area("휴게실"),
	refreshment_vacation("리프레시 휴가"),
	communication_cost("통신비"),
	massage_chair("안마 의자"),
	maternity_leave("출산 휴가"),
	self_development_cost("자기 개발비");
	
	private String kr;
	
	TagListCompany(String kr) {
		this.kr=kr;
	}
	
}
