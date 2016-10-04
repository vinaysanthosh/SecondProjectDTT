<%@include file="Header.jsp"%>

<div class="container">
<p>
&nbsp;
&nbsp;
&nbsp;
&nbsp;
</p>
	<div class="row">
		<div class="col-xs-12 col-md-12">
			<form:form modelAttribute="blog" class="" action="${session.getContextPath()}/latzchaat/updateUserBlog/${blog.blogid}" commandName="blog" method="post">
				<div class="row">

					<div class="col-xs-6 col-md-6">
				<%--  		<h1>${blog.title}</h1> --%> 
						 <form:label path="${title}">Title</form:label>
						<%--  <form:label path="${title}" class="form-control">${blog.title}</form:label>   --%>
						
						<form:input class="form-control" path="Title" required="Please Enter title"  readonly="true"  /> 
					</div>
				</div>
				<div class="row">
					<div class="col-xs-6 col-md-6">
						<%-- <h2>${blog.description}</h2> --%>
						
						<form:label path="${owner}">Owner</form:label>
						<%--  <form:label path="${owner}" class="form-control">${blog.owner}</form:label>  --%>
						 <form:input class="form-control" path="Owner" required="Please Enter Owner"  readonly="true"/> 
					</div>
				</div>
				<%-- <div class="row">
					<div class="col-xs-6 col-md-6">
						<h4>${blog.owner}</h4>
						 <form:label path="${description}">Description</form:label>
						<form:label path="${description}" class="form-control">${blog.description}</form:label> 
					</div>
				</div> --%>
								
				 <div class="row">
					<div class="col-xs-6 col-md-6">
						<%-- <h4>${blog.status}</h4> --%>
						 <form:label path="${status}">Status</form:label>
						 <%-- <form:label path="${status}" class="form-control">${blog.status}</form:label>  --%>
						  <form:input class="form-control" path="Status" required="Please Enter status" readonly="true" /> 
					</div>
				</div> 
				
				 <div class="row">
					<div class="col-xs-6 col-md-6">
						<%-- <h4>${blog.description}</h4> --%>
						 <form:label path="${description}">Description</form:label>
						<%-- <form:label path="${description}" class="form-control">${blog.description}</form:label> --%> 
						 <form:input class="form-control" path="Description" required="Please Enter description"/>
					</div>
				</div> 
				<!--  addd strt -->
				<%-- <div class="row">
			<div class="form-group">
            <label class="col-md-3 control-label">Description:</label>
            <div class="col-md-8">
              <form:input class="form-control" path="Description" required="Please Enter description"/>
            </div>
          </div> --%>
				<!--  addd ends -->

				
				<div class="row">
					<div class="col-xs-10 col-md-10">
						<aside class="col-xs-10 col-md-10">
							<!-- <p>fslkflknlkasnflksanflknasfnsafnsafnsafnsanfsalknfsadnflksdanfsdanfadslnfklsadnfasdnfasdnflskadnfl
								sdanfklsadnfslkflknlkasnflksanflknasfnsafnsafnsafnsanfsalknfsadnflksdanfsdanfadslnfklsadnfasdnfasdnflskadnflsdanfklsadnfslkflknlkasnfl
								ksanflknasfnsafnsafnsafnsanfsalknfsadnflksdanfsdanfadslnfklsadnfasdnfasdnflskadnflsdanfklsadnfslkflknlkasnflksanflknasfnsafnsafnsafnsa
								nfsalknfsadnflksdanfsdanfadslnfklsadnfasdnfasdnflskadnflsdanfklsadnfslkflknlkasnflksanflknasfnsafnsafnsafnsanfsalknfsadnflksdanfsdanfads
								lnfklsadnfasdnfasdnflskadnflsdanfklsadnfslkflknlkasnflksanflknasfnsafnsafnsafnsanfsalknfsadnflksdanfsdanfadslnfklsadnfasdnfasdnflskadnfls
								danfklsadnfslkflknlkasnflksanflknasfnsafnsafnsafnsanfsalknfsadnflksdanfsdanfadslnfklsadnfasdnfasdnflskadnflsdanfklsadnfslkflknlkasnflksan
								flknasfnsafnsafnsafnsanfsalknfsadnflksdanfsdanfadslnfklsadnfasdnfasdnflskadnflsdanfklsadnfslkflknlkasnflksanflknasfnsafnsafnsafnsanfsalkn
								fsadnflksdanfsdanfadslnfklsadnfasdnfasdnflskadnflsdanfklsadnfslkflknlkasnflksanflknasfnsafnsafnsafnsanfsalknfsadnflksdanfsdanfadslnfklsad
								nfasdnfasdnflskadnflsdanfklsadnfslkflknlkasnflksanflknasfnsafnsafnsafnsanfsalknfsadnflksdanfsdanfadslnfklsadnfasdnfasdnflskadnflsdanfklsadnfsl
								kflknlkasnflksanflknasfnsafnsafnsafnsanfsalknfsadnflksd anfsdanfadslnfklsadnfasdnfasdnflskadnflsdanfklsadnfslkflknlkasnflksanflknasfnsafnsafnsa
								fnsanfsalknfsadnflksdanfsdanfadslnfklsadnfasdnfasdnflskadnflsdanfklsadnfslkflknlkasnflksanflknasfnsafnsafnsafnsanfsalknfsadnflksdanfsdanfadslnf
								klsadnfasdnfasdnflskadnflsdanfklsadnfslkflknlkasnflksanflknasfnsafnsafnsafnsanfsalknfsadnflksdanfsdanfadslnfklsadnfasdnfasdnflskadnflsdanfklsadnfs
								lkflknlkasnflksanflknasfnsafnsafnsafnsanfsalknfsadnflksdanfsdanfadslnfklsadnfasdnfasdnflskadnflsdanfklsadnfslkflknlkasnflksanflknasfnsafnsafnsafnsanf
								salknfsadnflksdanfsdanfadslnfklsadnfasdnfasdnflskadnflsdanfklsadnfslkflknlkasnflksanflknasfnsafnsafnsafnsanfsalknfsadnflksdanfsdanfadslnfklsadnfasd
								nfasdnflskadnflsdanfklsadnfslkflknlkasnflksanflknasfnsafnsafnsafnsanfsalknfsadnflksdanfsdanfadslnfklsadnfasdnfasdnflskadnflsdanfklsadnfslkflknlkasnfl
								ksanflknasfnsafnsafnsafnsanfsalknfsadnflksdanfsdanfadslnfklsadnfasdnfasd nflskadnflsdanfklsadnfslkflknlkasnflksanflknasfnsafnsafnsafnsanfsalknfsadnflk
								sdanfsdanfadslnfklsadnfasdnfasdnflskadnflsdanfklsadnfslkflknlkasnflksanflknasfnsafnsafnsafnsanfsalknfsadnflksdanfsdanfadslnfklsadnfasdnfasdnflskadnfl
								danfklsadnfslkflknlkasnflksanflknasfnsafnsafnsafnsanfsalknfsadnflksdanfsdanfadslnfklsadnfasdnfasdnflskadnflsdanfklsadnfslkflknlkasnflksanflknasfnsafns afnsafnsanfsalknfsa
								dnflksdanfsdanfadslnfklsadnfasdnfasdnflskadnflsdanfklsadnfslkflknlkasnflksanflknasfnsafnsafnsafnsanfsalknfsadnflksdanfsdanfadslnfklsadnfasdnfasdnflsk adnflsdanfklsadnfslk
								flknlkasnflksanflknasfnsafnsafnsafnsanfsalknfsadnflksdanfsdanfadslnfklsadnfasdnfasdnflskadnflsdanfklsadnfslkflknlkasnflksanflknasfnsafnsafnsafnsanfsa. lknfsadnflksdanfsdanf
								adslnfklsadnfasdnfasdnflskadnflsdanfklsadn</p> -->
								
								
								<p>${blog.detail}</p>
						
							 <form:label path="${detail}"> Update Details</form:label>
								
								<div>																
								 <form:textarea class="form-control" path="detail" rows="10" cols="30" required="Please Enter detail"/>					 
								 
								 </div>
								 <%--  <c:if test="${not empty blogAuthErr}">
                						<div class="msg"><center>${blogAuthErr}</center></div>
           						 </c:if> --%>
           						 
								  <span style="color: #ff0000">${blogAuthErr}</span>								 
								  <input class="btn btn-danger" type="submit" class="btn btn-default" value="Update"> 
								  <a class="btn btn-danger"	href="<c:url value='/UserHome' />">Back
																		<span class="glyphicon glyphicon-remove-sign"></span>
																</a>
								 
								<!--  <button type="submit" class="btn btn-info">
											Update <span class="glyphicon glyphicon-edit"></span>
										</button> -->
							</aside>

						<%-- <form:label path="${detail}" class="form-control">Detail</form:label> --%>
						<%-- <form:label path="${detail}" class="form-control"></form:label> --%>
					</div>

				</div>
			</form:form>
		</div>
	</div>
</div>