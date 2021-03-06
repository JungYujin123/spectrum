<%@page import="spectrum.mbtiResult.vo.MbtiResultVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    MbtiResultVO mbtiResultVO = (MbtiResultVO) request.getAttribute("mbtiResultVO");
    int mbtiIndicatorsE = (int) Math.round(Double.parseDouble(mbtiResultVO.getMbtiIndicatorsEI()));
    int mbtiIndicatorsI = (int) Math.round(100 - mbtiIndicatorsE);
    int mbtiIndicatorsS = (int) Math.round(Double.parseDouble(mbtiResultVO.getMbtiIndicatorsSN()));
    int mbtiIndicatorsN = (int) Math.round(100 - mbtiIndicatorsS);
    int mbtiIndicatorsT = (int) Math.round(Double.parseDouble(mbtiResultVO.getMbtiIndicatorsTF()));
    int mbtiIndicatorsF = (int) Math.round(100 - mbtiIndicatorsT);
    int mbtiIndicatorsJ = (int) Math.round(Double.parseDouble(mbtiResultVO.getMbtiIndicatorsJP()));
    int mbtiIndicatorsP = (int) Math.round(100 - mbtiIndicatorsJ);
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ESFJ</title>
<link href="../css/bootstrap.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<style>
  .row > p{
      margin-top: 0.4rem;
      margin-bottom: 0.4rem;
  }

  .card{
  max-width: 60rem;
  left: 50%;
  top: 60%;
  position: absolute;
  transform: translate(-50%, -50%);
  }
  .card-title{
    margin-bottom: 0;
  }

  body{
margin-top: 1000px;
  }
</style>
</head>
<body>
<div style="position: absolute; top: 0;  width: 100%;">
    <%@include file="/navbar.jsp" %>
</div>
<div class="card mb-3">
  <h3 class="card-header text-center">"ESFJ" “사교적인 외교관" "친선도모형"</h3>
  <div class="card-body">
      <h5 class="card-title text-center">에너지의 방향</h5>
      <div class="container">
        <div class="row">
          <p class="col">외향</p>
          <p class="col text-end">내향</p>
      </div>
      </div>
      <div class="progress">
          <div class="progress-bar bg-success" role="progressbar" style="width: <%=mbtiIndicatorsE%>%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
      </div>
      <div class="container">
          <div class="row">
            <p class="col"><%=mbtiIndicatorsE%>%</p>
            <p class="col text-end"><%=mbtiIndicatorsI%>%</p>
        </div>
        </div>
  </div>
  <div class="card-body">
      <h5 class="card-title text-center">사람이나 사물을 인식하는 방식</h5>
      <div class="container">
          <div class="row">
            <p class="col">감각</p>
            <p class="col text-end">직관</p>
        </div>
        </div>
      <div class="progress">
          <div class="progress-bar bg-info" role="progressbar" style="width: <%=mbtiIndicatorsS%>%;" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
      </div>
      <div class="container">
          <div class="row">
             <p class="col"><%=mbtiIndicatorsS%>%</p>
            <p class="col text-end"><%=mbtiIndicatorsN%>%</p>
        </div>
        </div>
  </div>
  <div class="card-body">
      <h5 class="card-title text-center">판단의 근거</h5>
      <div class="container">
          <div class="row">
            <p class="col">감정</p>
            <p class="col text-end">사고</p>
        </div>
        </div>
      <div class="progress">
          <div class="progress-bar bg-warning" role="progressbar" style="width: <%=mbtiIndicatorsF%>%;" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
      </div>
      <div class="container">
          <div class="row">
             <p class="col"><%=mbtiIndicatorsF%>%</p>
            <p class="col text-end"><%=mbtiIndicatorsT%>%</p>
        </div>
        </div>
  </div>
  <div class="card-body">
  <h5 class="card-title text-center">선호하는 삶의 패턴</h5>
  <div class="container">
      <div class="row">
        <p class="col">판단</p>
        <p class="col text-end">인식</p>
    </div>
    </div>
  <div class="progress">
      <div class="progress-bar bg-danger" role="progressbar" style="width: <%=mbtiIndicatorsJ%>%;" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
  </div>
  <div class="container">
      <div class="row">
         <p class="col"><%=mbtiIndicatorsJ%>%</p>
        <p class="col text-end"><%=mbtiIndicatorsP%>%</p>
    </div>
    </div>
    </div>
  <div class="card-footer text-muted">
      간략한 검사의 결과로 검사결과의 정확도는 보장되지 않습니다.
  </div>
</div>

<div class="container">
<figure class="text-center">
  <blockquote class="blockquote">
    <p>서로 용기를 북돋아 주고 치켜세우며 힘이 돼주세요. 한 사람이 받은 긍정의 에너지가 곧 모든 이에게 전달될 테니까요.</p>
  </blockquote>
  <figcaption class="blockquote-footer">
    DEBORAH DAY <cite title="Source Title"><!-- 소스(책,영화)제목 --></cite>
  </figcaption>
</figure>
<br>
	
	<p class="lead">
    사교형 사람을 한마디로 정의 내리기는 어렵지만, 간단히 표현하자면 이들은 '인기쟁이'입니다. 인구의 대략 12%를 차지하는 꽤 보편적인 성격 유형으로, 이를 미루어 보면 왜 이 유형의 사람이 인기가 많은지 이해가 갑니다. 종종 고등학교에서 치어리더나 풋볼의 쿼터백으로 활동하기도 하는 이들은 분위기를 좌지우지하며 여러 사람의 스포트라이트를 받거나 학교에 승리와 명예를 불러오도록 팀을 이끄는 역할을 하기도 합니다. 이들은 또한 훗날 다양한 사교 모임이나 어울림을 통해 주위 사람들에게 끊임없는 관심과 애정을 보임으로써 다른 이들을 행복하고 즐겁게 해주고자 노력합니다.
</p>
<blockquote class="blockquote">
  <p>
    천성적으로 사교적인 성향인 이들은 가까운 친구나 지인들의 일거수일투족을 모두 알기를 원합니다.
  </p>
</blockquote>
<img src="<%=request.getContextPath()%>/sentinels_Consul_ESFJ_introduction.png" class="img-fluid" alt="sentinels_Consul_ESFJ">
	<p class="lead">
    과학 이론이나 국제 정치와 같은 대화 주제는 사교형 사람의 관심을 오래 잡아두지 못합니다. 대신 이들은 패션이나 외모, 그리고 그들을 포함하여 다른 사람의 사회적 지위와 같은 대화 소재에 더 많은 관심을 보입니다. 실생활 이야기나 가십거리가 이들에게는 한 마디로 빵과 버터 같은 대화 소재입니다. 하지만 좋은 일을 하는 데에는 그들이 가진 힘과 지위를 이용해 발 벗고 나서기도 합니다.
</p>
<br>

<h3>지혜로운 리더를 위한 우러름</h3>
<p class="lead">
  이타주의자인 사교형 사람은 다른 이들을 도우며 옳은 일을 하고자 하는 일에 진지한 태도로 임합니다. 다만 다른 성격 유형과 달리 사교형 사람은 도덕적 잣대를 철학이나 미신이 아닌 이미 수립된 법이나 사회 질서 체제 안에서 찾습니다. 사교형 사람은 사회는 다양한 배경과 관점을 가진 사람들의 집합체로 그들이 믿고 따르는 것만이 절대적인 진리가 아니라는 것을 명심할 필요가 있습니다.
</p>
<p class="lead">
  사교형 사람은 그들 자신이 진심으로 존경받고 그들의 가치를 인정받고 있다고 생각이 드는 한은 지위를 막론하고 어떻게든 의미 있는 방식으로 다른 이에게 도움이 되고자 합니다. 이는 특히 가정 내에서 여실히 드러나는데, 이들은 집에서는 가정적인 배우자이자 헌신적인 부모이기도 합니다. 또한 계급 체계를 선호하는 경향이 있으며, 가정에서나 회사에서 그들의 주장을 펼 수 있는 동시에 안정된 생활 영위를 위해 어느 정도의 사회적 지위와 권력을 갖고자 합니다.
</p>
<br>

<h3>조화로운 인간관계</h3>
<p class="lead">
  타인에 대한 지원을 아끼지 않는 활발한 성격인 이들은 어느 모임을 가든지 한두 명은 쉽게 만날 수 있습니다. 어떻게 해서든지 사람들과 만나 수다 떨며 웃는 시간을 만들고야 마는 이들이니까요! 그렇다고 이들을 단순히 웃고 지나쳐 버리는 가벼운 만남으로 치부해서는 안 됩니다. 이들이 아니면 누구도 대신하지 못하는 심오한 역할을 하기도 하는 이들이니까요. 사교형 사람은 친구나 지인의 인간관계나 일상생활과 관련한 이야기에 관심 있게 들으며 세세한 사항마저 기억하는 경향이 있습니다. 그리고는 도움이 필요한 적절한 순간에 진심 어린 따뜻한 마음으로 대화 상대가 되어줄 만발의 준비를 하고 있습니다. 만약 상황이 생각하는 안 좋게 돌아가거나 모임 내 긴장감이 조성되는 경우 이들은 이를 금세 알아차려 사람들 간에 화해와 안정을 찾기 위해 노력합니다.
</p>
<p class="lead">
  충돌을 싫어하는 사교형 사람은 사회적 위계질서를 확립하는 데 많은 에너지를 소모하며, 사전에 계획되지 않은 즉흥적인 만남이나 모임을 계획하는 것을 좋아합니다. 이들은 그들이 주관하는 모임을 위해 많은 시간과 노력을 들이는데, 만일 이들의 제안이 거부당하거나 이들의 계획이 사람들의 관심이나 이목을 충분히 끌지 못하면 상처를 받기도 합니다. 앞서 얘기했듯, 사교형 사람은 각각의 사람이 모두 다른 배경과 성격을 가지고 있으며, 이는 단순히 그가 주최하는 모임이나 활동 혹은 그들에게 관심이 없어서가 아니라 다만 모임 자체에 특별히 흥미를 느끼지 못해서 임을 깨닫는 것이 중요합니다.
</p>
<p class="lead">
  사교형 사람이 감내하기 힘들어하는 것 중 하나가 자신의 예민하고 쉽게 상처받는 성격과 타협점을 찾는 일입니다. 사람들이 그의 생각에 동의하지 않거나 되려 이들을 비판하는 경우가 생기면 어김없이 상처를 받는데, 이 역시도 인생의 한 부분입니다. 이를 해결할 수 있는 좋은 방법은 자신들이 가장 자신 있게 잘하는 일에 열중하는 것으로, 타인에게 좋은 역할 모델이 되어주거나 그들이 영향력을 행사할 수 있는 영역 안에서 권력을 행사하는 것입니다. 결과적으로 이러한 이들의 노고는 많은 사람에게 본보기가 되어 많은 이들로부터 존경과 감사를 받게 될 것입니다.
</p>
<br>
</div>
</body>
</html>