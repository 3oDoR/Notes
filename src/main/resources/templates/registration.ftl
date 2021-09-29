<#import "parts/common.ftl" as c>

<@c.page>
    <section class="container h-100">
        <form action="/registration" method="post">
            <div class="row d-flex justify-content-center align-items-center h-50">
                <div class="col">

                    <div class="row g-0">
                        <div class="col-xl-3">

                        </div>
                        <div class="col-xl-6 card card-registration my-3">
                            <div class="card-body p-md-3 text-black">
                                <h3 class="mb-3 text-uppercase text-center">Registration form</h3>

                                <div class="row">
                                    <div class="col-md-6 mb-4">
                                        <div class="form-outline">
                                            <input type="text" id="firstname" name="first_name"
                                                   class="form-control form-control-lg"/>
                                            <label class="form-label">First name</label>
                                        </div>
                                    </div>
                                    <div class="col-md-6 mb-4">
                                        <div class="form-outline">
                                            <input type="text" name="last_name"
                                                   class="form-control form-control-lg"/>
                                            <label class="form-label" for="form3Example1n">Last name</label>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-6 mb-4">
                                        <div class="form-outline">
                                            <input type="text" name="username"
                                                   class="form-control form-control-lg"/>
                                            <label class="form-label" for="form3Example1n">Username</label>
                                        </div>
                                    </div>

                                    <div class="col-md-6 mb-4">
                                        <div class="form-outline mb-4">
                                            <input type="date" name="birthday" class="form-control form-control-lg"/>
                                            <label class="form-label" for="form3Example9">Date of birth</label>
                                        </div>
                                    </div>

                                </div>


                                <div class="form-outline mb-4">
                                    <input type="email" name="email" class="form-control form-control-lg"/>
                                    <label class="form-label" for="form3Example8">Email</label>
                                </div>

                                <div class="row">
                                    <div class="col-md-6 mb-4">
                                        <div class="form-outline">
                                            <input type="password" name="password"
                                                   class="form-control form-control-lg"/>
                                            <label class="form-label" for="form3Example1n">Password</label>
                                        </div>
                                    </div>

                                    <div class="col-md-6 mb-4">
                                        <div class="form-outline mb-4">
                                            <input type="password" name="confirmPassword" path ="confirmPassword" class="form-control form-control-lg"/>
                                            <label class="form-label" for="form3Example9">Confirm password</label>
                                        </div>
                                    </div>
                                </div>


                                <div class="d-md-flex justify-content-start align-items-center mb-1 py-1">

                                    <h6 class="mb-0 me-4 mr-2">Gender: </h6>

                                    <div class="form-check form-check-inline mb-0 me-4 ">
                                        <input
                                                class="form-check-input"
                                                type="radio"
                                                name="gender"
                                                id="femaleGender"
                                                value="female"
                                        />
                                        <label class="form-check-label" for="femaleGender">Female</label>
                                    </div>

                                    <div class="form-check form-check-inline mb-0 me-4">
                                        <input
                                                class="form-check-input"
                                                type="radio"
                                                name="gender"
                                                id="maleGender"
                                                value="male"
                                        />
                                        <label class="form-check-label" for="maleGender">Male</label>
                                    </div>

                                </div>


                                <div class="d-flex justify-content-center pt-1">
                                    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                                    <button type="submit" class="btn btn-warning btn-lg ms-2">Submit form</button>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </section>

</@c.page>


