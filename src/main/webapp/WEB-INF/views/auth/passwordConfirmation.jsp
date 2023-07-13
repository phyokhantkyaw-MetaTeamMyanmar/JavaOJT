<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
            <html>

            <head>
                <title>Title</title>
                <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
                    integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
                    crossorigin="anonymous">
            </head>

            <body>
                <div class="container">
                    <div class="row justify-content-center align-items-center" style="height: 100vh;">
                        <div class="col-md-8">
                            <div class="card">
                                <div class="card-header bg-success text-light">Reset Password</div>
                                <div class="card-body">
                                    <c:if test="${doesNotMatch != null}">
                                        <div class="alert alert-danger" role="alert">
                                            ${doesNotMatch}
                                        </div>
                                    </c:if>
                                    <form:form action="${pageContext.request.contextPath}/reset/password?email=${email}"
                                        method="post" modelAttribute="passwordForm">
                                        <form:input type="hidden" path="oldPassword" value="oldPassword" />
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Password : </label>
                                            <div class="col-sm-8">
                                                <form:input path="newPassword" type="text" class="form-control"
                                                    name="newPassword" />
                                                <form:errors path="newPassword" cssClass="text-danger" />
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Password Confirmation : </label>
                                            <div class="col-sm-8">
                                                <form:input path="newConfirmPassword" type="text" class="form-control"
                                                    name="newConfirmPassword" />
                                                <form:errors path="newConfirmPassword" cssClass="text-danger" />
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <div class="col-sm-8 offset-sm-4">
                                                <button type="submit" class="btn btn-info text-light">Update
                                                    Password</button>
                                            </div>
                                        </div>
                                    </form:form>
                                </div>
                            </div>
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
            </body>

            </html>