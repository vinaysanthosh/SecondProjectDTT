<%@include file="Header.jsp"%>


    <div class="section">
      <div class="container">
      <p>&nbsp;</p>
      <p><center><h2>Create Blog</h2></center></p>
      <p>&nbsp;</p>
        <div class="row">
        
          <div class="col-md-12 col-sm-12 col-xs-12">
          
         <form:form class="form-horizontal" role="form"
						action="InsertBlog" modelAttribute="blog"
						commandName="blog" method="post" >
              <div class="form-group">
                <div class="col-sm-2">
                  <label for="title" class="control-label">Title</label>
                </div>
                <div class="col-sm-10">
                  <form:input type="text" class="form-control" required="Please enter Title" id="title" path="title" placeholder="Title"/>
                </div>
              </div>
              <div class="form-group">
                <div class="col-sm-2">
                  <label for="description" class="control-label">Description</label>
                </div>
                <div class="col-sm-10">
                  <form:input type="text" class="form-control" required="Please enter Description" id="description" placeholder="Description" path="description"/>
                </div>
              </div>
              <div class="form-group">
                <div class="col-sm-2">
                  <label for="detail" class="control-label">Write blog</label>
                </div>
                <div class="col-sm-10">
                  <form:textarea class="form-control" id="detail" path="detail" required="Please enter Blog Details" placeholder="Write details" rows="10" cols="100"/>
                </div>
              </div>
              <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                  <button type="submit" class="btn btn-primary">Save Blog</button>
                </div>
              </div>
            </form:form>
          </div>
        </div>
      </div>
    </div>
<%@include file="Footer.jsp"%>