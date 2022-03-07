<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.servletContext.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/DatePopPrj/resources/admin/css/script.css">
    <title>Document</title>
</head>
<body>
    <section>
	    <!--content_title 시작-->
	    <div class="content_title"><p>고객센터<span>회원 관리</span></p></div>
	    <!--content_title 끝-->
	    <!--UList 시작-->
	    <div class="UList">
	        <!--UL_c1 시작-->
	        <div class="UL_c1">
	            <!--form 시작-->
	            <form name="user_search">
	                <p class="product_title" id="UL_c1_title"><label>회원 조회</label></p>
	                <!--table 시작-->
	                <table>
	                    <tr>
	                        <th width="100" style="font-size: 15px;">등록일 기준</th>
	                        <td>
	                            <input type="date" name="date" value="기간필터" id="date_start"> - <input type="date" name="date" value="기간필터" id="date_end">
	                            <span class="datebtn">
	                                <input type="button" name="button" value="최근 1주일" id="weekbtn">
	                                <input type="button" name="button" value="최근 1개월" id="monthbtn">
	                                <input type="button" name="button" value="최근 3개월" id="three_monthbtn">
	                            </span>
	                        </td>
	                    </tr>
	                    <tr>
	                        <th></th>
	                        <td>
	                            <select id="select">
	                                <option value="이메일">이메일</option>
	                                <option value="이름">이름</option>
	                                <option value="연락처">연락처</option>
	                            </select>
	                            <input type="text" name="text" placeholder="직접 입력" id="scname">
	                        </td>
	                    </tr>
	                </table>
	                <!--table 끝-->
	                <!--UL_c1_btnBox 시작-->
	                <div class="bottom_btn" id="UL_c1_btnBox">
	                    <span><input type="reset" name="button" value="초기화"></span>
	                    <span><input type="button" name="button" value="검색" onclick="sc()"></span>
	                </div>
	                <!--UL_c1_btnBox 끝-->
	            </form>
	            <!--form 끝-->
	        </div>
	        <!--UL_c1 끝-->
	        <!--UL_c2 시작-->
	        <div class="UL_c2">
	            <!--UL_c2_title 시작-->
	            <div id="UL_c2_title" class="green_title">
	                <p>회원 목록</p>
	            </div>
	            <!--No_c2_title 끝-->
	            <!--form 시작-->
	            <form name="user_list">
	                <table width="100%" class="list_table" id="userList_table">
	                    <thead class="thead">
	                        <tr>
	                            <th width="5%"><input type="checkbox" id="Ul_check" name="selectall" onclick="selectAll(this)"><label for="Ul_check"></th>
	                            <th width="14%">기본정보</th>
	                            <th width="15%">전화번호</th>
	                            <th width="15%">더그린배송</th>
	                            <th width="14%">SMS</th>
	                            <th width="15%">가입일</th>
	                            <th width="12%">수정</th>
	                        </tr>
	                    </thead>
	                </table>
	                <!--table 끝-->
	                <div class="Ul_c2_btnBox">
	                    <input type="button" value="선택삭제" id="delbtn">
	                    <span><input type="button" value="엑셀파일로 저장" id="exelbtn"></span>
	                </div>
	                <!--Ul_c2_btnBox 끝-->
	                <!-- pageBox 시작-->
	                <div class="pageBox">
	                    <ul>
	                        <li id="Maxprev"><a href="#"><<</a></li>
	
	                        <li id="Maxnext"><a href="#">>></a></li>
	                    </ul>
	                    <input type="hidden" value="0" class="page_hidden">
	                    <input type="hidden" id="ajax_hidden">
	                </div>
	                <!-- pageBox 끝-->
	            </form>
	            <!--form 끝-->
	        </div>
	        <!--UL_c2 끝-->
	    </div>
	    <!--UList 끝-->
    </section>
</body>
</html>