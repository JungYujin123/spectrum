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
<title>ESTP</title>
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
  <h3 class="card-header text-center">"ESTP" “모험을 즐기는 사업가" "수완좋은 활동가형"</h3>
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
            <p class="col">사고</p>
            <p class="col text-end">감정</p>
        </div>
        </div>
      <div class="progress">
          <div class="progress-bar bg-warning" role="progressbar" style="width: <%=mbtiIndicatorsT%>%;" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
      </div>
      <div class="container">
          <div class="row">
             <p class="col"><%=mbtiIndicatorsT%>%</p>
            <p class="col text-end"><%=mbtiIndicatorsF%>%</p>
        </div>
        </div>
  </div>
  <div class="card-body">
  <h5 class="card-title text-center">선호하는 삶의 패턴</h5>
  <div class="container">
      <div class="row">
        <p class="col">인식</p>
        <p class="col text-end">판단</p>
    </div>
    </div>
  <div class="progress">
      <div class="progress-bar bg-danger" role="progressbar" style="width: <%=mbtiIndicatorsP%>%;" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
  </div>
  <div class="container">
      <div class="row">
         <p class="col"><%=mbtiIndicatorsP%>%</p>
        <p class="col text-end"><%=mbtiIndicatorsJ%>%</p>
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
    <p>인생은 과감한 모험이거나, 아니면 아무것도 아니다.</p>
  </blockquote>
  <figcaption class="blockquote-footer">
    HELEN KELLER <cite title="Source Title"><!-- 소스(책,영화)제목 --></cite>
  </figcaption>
</figure>
<br>
	
	<p class="lead">
    주변에 지대한 영향을 주는 사업가형 사람은 여러 사람이 모인 행사에서 이 자리 저 자리 휙휙 옮겨 다니는 무리 중에서 어렵지 않게 찾아볼 수 있습니다. 직설적이면서도 친근한 농담으로 주변 사람을 웃게 만드는 이들은 주변의 이목을 끄는 것을 좋아합니다. 만일 관객 중 무대에 올라올 사람을 호명하는 경우, 이들은 제일 먼저 자발적으로 손을 들거나 아니면 쑥스러워하는 친구를 대신하여 망설임 없이 무대에 올라서기도 합니다.
</p>
	<p class="lead">
    국제사회 이슈나 이와 관련한 복잡하고 난해한 이론과 관련한 담화는 이들의 관심을 오래 붙잡아 두지 못합니다. 사업가형 사람은 넘치는 에너지와 어느 정도의 지식으로 대화에 무리 없이 참여하기는 하나, 이들이 더 역점을 두는 것은 앉아서 말로만 하는 논의가 아닌 직접 나가 몸으로 부딪히는 것입니다. 행동이 먼저 앞서기도 하는 이들은 이로 인해 가끔 실수를 범하기도 하지만 이들은 단순히 턱 괴고 앉아 지켜만 보고 있느니 만약의 사태를 대비해 만반의 준비를 한 뒤라면 직접 나가 몸으로 부딪혀 문제를 해결해 나가는 것을 선호합니다.
</p>
<img src="<%=request.getContextPath()%>/explorers_Entrepreneur_ESTP_introduction.png" class="img-fluid" alt="explorers_Entrepreneur_ESTP">
<br>

<h3>혼동하지 말아야 할 단어, '움직임' vs ‘행동’</h3>
<p class="lead">
  사업가형 사람은 다른 성격 유형과 비교하여 위험을 수반하는 행동을 많이 하는 경향이 있는데, 이들은 마치 폭풍을 몰고 다니는 이들과도 같습니다. 달든 쓰든 인생이 주는 삶의 다양한 맛과 열정으로 인생을 즐기기는 하지만, 이는 단순히 감정적으로 느껴지는 전율 때문이 아니라 그들의 이성적인 사고관에 짜릿한 자극을 주기 때문입니다. 불기둥이 소용돌이치는듯한 절체절명의 상황에서도 이들은 사실이나 현실에 근거하여 이성적으로 결정을 내리는 경향이 있습니다.
</p>
<p class="lead">
  이러한 성향 때문에 사업가형 사람은 학교와 같은 엄격한 규율이나 질서를 요구하는 조직 내에서 종종 어려움을 토로하기도 합니다. 이는 이들이 공부를 못하는 똑똑하지 못한 학생이어서가 아니라 딱딱하고 엄격한 가르침 방식이 그들이 선호하는 체험을 통한 배움과는 거리가 멀기 때문입니다. 지루하게만 보일지 모르는 이 과정 역시 목적지에 이르기 위한 필수 요소임을 깨닫게 하기까지는 이들의 많은 내적 성숙함을 요구합니다. 하지만 또 한편으로 이는 더 넓고 흥미로운 세계를 향한 기회로 작용하기도 합니다.
</p>
<p class="lead">
  이들에게 달린 또 다른 도전 과제는 이들은 타인이 아닌 그들 스스로 정한 도덕적 잣대에 따라 사고하고 행동한다는 점입니다. '규칙은 깨라고 있는 법!' 아마도 일선 고등학교 교사나 기업 내 관리자는 이러한 이들의 성향을 묘사하는 말에 공감을 표할 것입니다. 하지만 한 가지 잊지 말아야 할 것은 이들이 문제를 야기하는 행동을 줄이고 그들의 에너지를 긍정적인 방향으로 활용하며, 지루해하는 일을 잘 참고 묵묵히 해낸다면 이들은 우리 사회에 없어서는 안 될 중요한 구성원이라는 점입니다.
</p>
<br>

<h3>타인을 위한 세심한 배려</h3>
<p class="lead">
  다른 성격 유형과 비교하여 가장 예리하면서 여과 없이 사물을 있는 그대로 관찰하는 사업가형 사람은 타인의 작은 변화조차도 정확히 집어냅니다. 다른 사람의 얼굴에 나타나는 작은 표정 변화나 평소 입고 다니는 옷 스타일 혹은 습관에의 변화 등 다른 성격 유형의 사람은 사소한 것 하나만 집어내도 다행으로 여길 만한 작은 변화조차도 이들은 그 뒤에 숨은 의미나 생각을 곧잘 포착해냅니다. 일단 무언가 이전과 다름을 감지하면 이들은 타인의 감정을 많이 고려하지 않은 채 이것저것 물어보고 싶어 합니다. 하지만 모든 사람이 그들의 결정이나 비밀을 동네방네 떠들고 다니고 싶어 하지 않을 수도 있음을 명심해야 합니다.
</p>
<blockquote class="blockquote">
  <p>
    사업가형 사람의 이러한 즉각적이며 예리한 관찰력과 행동력은 종종 대기업, 특히 급박한 상황에서는 더욱 요구되는 자질이기도 합니다.
  </p>
</blockquote>
<p class="lead">
  다만 자칫 잘못하면 상황에 너무 몰두하여 예민한 사람의 감정에 치명적인 상처를 입히거나 원치 않는 상황을 초래할 수 있으며, 심지어는 본인 자신의 건강이나 안전을 해하는 경우도 있습니다. 인구의 대략 4%인 이들은 적당히 도전적이며 경쟁적인 사회를 이루기에 딱 알맞은 비율입니다. 사회 정의 질서를 무너뜨리지 않는 내에서 말입니다.
</p>
<p class="lead">
  기본적으로 열정과 활력이 넘치는 사업가형 사람은 방해 요소가 생기면 이성적 사고로 중무장합니다. 충만한 영감과 설득력, 그리고 다양한 성격을 가지고 팀을 이끄는 타고난 리더형인 이들은 아직 개척되지 않은 세계로 다른 이들을 인도함으로써 그들이 가는 곳곳 인생의 즐거움과 흥미로움을 더합니다. 다만 이러한 장점을 보다 효율적이며 가치 있는 성향으로 탈바꿈하는 것이 가장 큰 숙제로 남아있기는 하지만 말입니다.
</p>
<br>
</div>
</body>
</html>