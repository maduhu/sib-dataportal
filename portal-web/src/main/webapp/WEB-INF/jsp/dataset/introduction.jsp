<%@ include file="/common/taglibs.jsp"%>


<a href="${pageContext.request.contextPath}/conjuntos/" class="confirm">
<span>
	<h2>
	  <spring:message code="dataset.intro.heading"/>
	  </h2>
	<p>
	  <strong><spring:message code="dataset.intro.description"/></strong>
	</p>
</span>

<div>
<p>
  <c:set var="a0">
  <strong class="subject">${dataResourceCount}</strong>
  </c:set>
  <c:set var="a1">
  <strong class="subject">${dataProviderCount}</strong>
  </c:set>
  <spring:message code="dataset.intro.description.counts" arguments="${a0},${a1}"/>
  <c:if test="${latestResource!=null}">
</p>
</div>
</a>
<div>
<a href="${pageContext.request.contextPath}/datasets/resource/${latestResource.key}/"  class="confirm" >
<h4>
  <spring:message code="dataset.intro.latestresourceadded"/>
</h4>
${latestResource.name}</a>
</c:if>
</div>