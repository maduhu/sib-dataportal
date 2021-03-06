<%@ include file="/common/taglibssibcolombia.jsp"%>

<a class="faq g2" href="#" title="Explorar parcelas">? </a>
<div id="twopartheader">
<h2><spring:message code="plot.list.main.title"/>
</h2>
	<% // <gbif:alphabetLink rootUrl="/datasets/browse/" selected="${selectedChar}" listClass="flatlist" letters="${alphabet}" messageSource="${messageSource}"/> %>
</div>
<c:choose><c:when test="${selectedChar!=48}"><h2 id="selectedChar">${selectedChar}</h2></c:when><c:otherwise><br/></c:otherwise></c:choose>
	<c:choose>
	<c:when test="${fn:length(alphabet)==0}">Currently no data resources/providers within the system.</c:when>
	<c:otherwise>
	

<fmt:setLocale value="en_US"/>

<display:table name="dataResources" export="false" class="statistics" id="dataResource" cellspacing="0">
  <display:column sortProperty="dataResource.name" titleKey="dataset.resources.list.title" class="name">
  	<a href="${pageContext.request.contextPath}/parcelas/resource/${dataResource.key}">${dataResource.name}</a>
  	<p class="resultsDetails"><a href="${pageContext.request.contextPath}/parcelas/provider/${dataResource.dataProviderKey}">${dataResource.dataProviderName}</a></p>
  </display:column>
  <display:column titleKey="dataset.list.occurrence.count.nongeoreferenced" class="bigcount">
    <c:choose>
      <c:when test="${dataResource.occurrenceCount>0}">
  	    <a href="${pageContext.request.contextPath}/busqueda/search.htm?<gbif:criterion subject="24" predicate="0" value="${dataResource.key}" index="0"/>"><fmt:formatNumber value="${dataResource.occurrenceCount}" pattern="###,###"/></a>
		  </c:when>
		  <c:otherwise>
		    <p class="notApplicable">
			  	<c:choose>
			  	  <c:when test="${dataResource.conceptCount>0}">
			  	  	<spring:message code="dataset.not.applicable"/>
			  	  </c:when>
			  	  <c:otherwise>
			  	  	<spring:message code="dataset.not.yet.indexed"/>
			  	  </c:otherwise>
			  	</c:choose>
			 </p>
		  </c:otherwise>
		</c:choose>
  </display:column>
  <display:column titleKey="dataset.list.occurrence.count.georeferenced" class="bigcount">
    <c:choose>
      <c:when test="${dataResource.occurrenceCount>0}">
      	<c:choose>
      	  <c:when test="${dataResource.occurrenceCoordinateCount>0}"><a href="${pageContext.request.contextPath}/busqueda/search.htm?<gbif:criterion subject="24" predicate="0" value="${dataResource.key}" index="0"/>&<gbif:criterion subject="28" predicate="0" value="0" index="1"/>"><fmt:formatNumber value="${dataResource.occurrenceCoordinateCount}" pattern="###,###"/></a></c:when>
      	  <c:otherwise>0</c:otherwise>
      	</c:choose>
		  </c:when>
		  <c:otherwise>
		    <p class="notApplicable">
			  	<c:choose>
			  	  <c:when test="${dataResource.conceptCount>0}">
			  	  	<spring:message code="dataset.not.applicable"/>
			  	  </c:when>
			  	  <c:otherwise>
			  	  	<spring:message code="dataset.not.yet.indexed"/>
			  	  </c:otherwise>
			  	</c:choose>
			 </p>
		  </c:otherwise>
		</c:choose>
  </display:column> 
  <display:column titleKey="dataset.list.taxonconcept.count" class="count">
     <c:if test="${dataResource.conceptCount>0}">
  	 	<fmt:formatNumber value="${dataResource.conceptCount}" pattern="###,###"/>
  	 </c:if> 
  </display:column>
  <display:column titleKey="dataset.speciesCount" class="count">
     <c:if test="${dataResource.speciesCount>0}">
		 <fmt:formatNumber value="${dataResource.speciesCount}" pattern="###,###"/> 
  	 </c:if> 
  </display:column>
  <display:setProperty name="basic.msg.empty_list"> </display:setProperty>	  
  <display:setProperty name="basic.empty.showtable">false</display:setProperty>	  
</display:table>

	</c:otherwise>
</c:choose>

<script type="text/javascript" charset="utf-8">
console.log("${dataResources}");

$(document).ready(function() {
	var oTable = $('#dataResource').dataTable( {
		"iDisplayLength": 100,
        "bLengthChange": false,
        "bAutoWidth": false,
        "aaSorting": [[ 0, "asc" ]],
        "oLanguage": {
            "sEmptyTable": '<spring:message code="dataset.list.semptytable"/>',
            "sZeroRecords":'<spring:message code="dataset.list.szerorecords"/> ',
            "sInfo": '<spring:message code="dataset.list.sinfo" arguments="_START_,_END_,_TOTAL_"/>',
            "sInfoEmpty": '<spring:message code="dataset.list.sinfoempty"/>',
            "sInfoFiltered": '<spring:message code="dataset.list.sinfofiltered" arguments="_MAX_"/> ',
            "sSearch": '<spring:message code="dataset.list.ssearch"/>',
            "oPaginate": {
                "sNext": '<spring:message code="dataset.list.snext"/>',
                "sPrevious": '<spring:message code="dataset.list.sprevious" />'
            }
        },
        "aoColumns": [null,
                      { "sType": "num-html" },
                      { "sType": "num-html" },
                      { "sType": "num-html" },
                      { "sType": "num-html" }
                  ],"fnDrawCallback": function(){
        	  if(this.fnSettings().fnRecordsDisplay()<=$('#dataResource tr').length){
        		  $('#dataResource_paginate').hide();
        	  }else{
        		  $('#dataResource_paginate').show();  
        	  } 
        	}
    } );
} );
</script>