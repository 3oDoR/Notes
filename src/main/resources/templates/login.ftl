<#import "parts/common.ftl" as c>

<@c.page>
    <body xmlns="http://www.w3.org/1999/html">
    <div class="container">
        <div class="row">
            <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
                <div class="card border-0 shadow rounded-3 my-5">
                    <div class="card-body p-4 p-sm-5">
                        <h5 class="card-title text-center mb-5 fw-light fs-5">Sign In</h5>
                        <form action="/login" method="post">
                            <div class="form-floating mb-3">
                                <input type="text" class="form-control" name="username" id="username">
                                <label class="text-right" for="floatingInput">Username</label>
                            </div>
                            <div class="form-floating mb-3">
                                <input type="password" class="form-control" name="password" id="password">
                                <label for="floatingPassword">Password</label>
                            </div>

                            <div class="">
                                <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                                <button class="btn btn-primary btn-login text-uppercase fw-bold text-right"
                                        type="submit">Sign
                                    in
                                </button>


                                <a href="/registration"
                                   class="btn btn-success btn-login text-uppercase fw-bold float-right">Sign
                                    up
                                </a>
                            </div>
                        </form>
                        <div class="text-center pt-3">
                            <a href="" class="text-dark">Forgot your password or cannot sign in?</a>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
    </body>
</@c.page>
