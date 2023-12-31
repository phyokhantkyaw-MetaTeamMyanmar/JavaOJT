<%@ page contentType="text/html;charset=UTF-8" language="java" %>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
      <html>

      <head>
        <title>Title</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
      </head>

      <body>
        <jsp:include page="../common/header.jsp" />
        <div class="container my-2">
          <div class="card">
            <div class="card-header bg-success text-light">Post Confirm</div>
            <div class="card-body">
              <form:form action="${pageContext.request.contextPath}/posts/updateConfirm?id=${postForm.id}"
                method="post">
                <div class="form-group row">
                  <label class="col-sm-2 col-form-label">Title</label>
                  <div class="col-sm-10">
                    <p> ${postForm.title}</p>
                    <input type="hidden" name="title" value="${postForm.title}">
                  </div>
                </div>
                <div class="form-group row">
                  <label class="col-sm-2 col-form-label">Description</label>
                  <div class="col-sm-10">
                    <p> ${postForm.description}</p>
                    <input type="hidden" name="description" value="${postForm.description}">
                  </div>
                </div>
                <div class="form-group row">
                  <label class="col-sm-2 col-form-label">Status</label>
                  <div class="col-sm-10">
                    <c:choose>
                      <c:when test="${postForm.status == 0}">
                        <div class="form-check form-switch">
                          <input class="form-check-input" type="checkbox" id="flexSwitchCheckDisabled" disabled>
                        </div>
                      </c:when>
                      <c:otherwise>
                        <div class="form-check form-switch">
                          <input class="form-check-input" type="checkbox" id="flexSwitchCheckCheckedDisabled" checked
                            disabled>
                        </div>
                      </c:otherwise>
                    </c:choose>
                    <input type="hidden" name="status" value="${postForm.status}">
                  </div>
                </div>
                <div class="form-group row">
                  <div class="col-sm-10 offset-sm-2">
                    <button type="submit" class="btn btn-info text-light">Confirm</button>
                    <a href="#" class="btn btn-secondary text-light" onclick="cancelAction(); return false;">Cancel</a>
                  </div>
                </div>
                <input type="hidden" name="id" value="${postForm.id}">
              </form:form>
            </div>
          </div>
        </div>
        <script>
          function cancelAction() {
            window.history.back();
          }
        </script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
          crossorigin="anonymous"></script>
        <jsp:include page="../common/footer.jsp" />
      </body>

      </html>