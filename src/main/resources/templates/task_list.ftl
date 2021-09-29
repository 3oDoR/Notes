<#import "parts/common.ftl" as c>

<#macro exit_svg>
    <div class="row float-right">
        <form action="/delete" method="post">
            <button class="btn btn-link float-xl-right" type="submit">
                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-x"
                     viewBox="0 0 16 16">
                    <path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z"/>
                </svg>
            </button>
        </form>
    </div>
</#macro>

<@c.page>
    <div class="container">
        <div class="row">
            <div class="col-sm-4">
            </div>
            <div class="col-sm-8 pl-0, ml-0">
                <h1 class="text-left pt-5">Task List</h1>
                Use this template to track your personal task.
                <div></div>
                Click <span class="badge badge-pill badge-success">+ New </span> to create a new task directly on this
                board
                <div></div>
                Click an existing task to add additonal context or subtasks.
            </div>
        </div>


        <div class="row pt-5">
            <div class="col-sm-4">
                <h5 class="text-center"> To Do</h5>
                <div>
                    <form action="/task_list" method="post">
                        <div class="input-group mb-3">
                            <input type="text" class="form-control" name="message" id="message">
                            <div class="input-group-append">

                                <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                                <button class="btn btn-outline-success" type="submit" name="typeMessage"
                                        id="typeMessage" value="ToDo">Add
                                </button>
                            </div>
                        </div>
                    </form>

                    <#list notesToDo as item>
                        <form action="/task_list" method="post">
                            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                            <button class="btn btn-link float-xl-right" type="submit" name="id" id="id" value="${item.id}">
                                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-x"
                                     viewBox="0 0 16 16">
                                    <path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z"/>
                                </svg>
                            </button>
                        </form>
                        <p>${item}</p>
                    </#list>
                </div>
            </div>
            <div class="col-sm-4">
                <h5 class="text-center">Doing</h5>
                <form action="/task_list" method="post">
                    <div class="input-group mb-3">
                        <input type="text" class="form-control" name="message" id="message">
                        <div class="input-group-append">

                            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                            <button class="btn btn-outline-success" type="submit" name="typeMessage" id="typeMessage"
                                    value="Doing">Add
                            </button>
                        </div>
                    </div>
                </form>
                <div class="">
                    <#list notesDoing as item>
                        <p>${item}</p>
                    </#list>
                </div>
            </div>
            <div class="col-sm-4">
                <h5 class="text-center">Done</h5>
                <form action="/task_list" method="post">
                    <div class="input-group mb-3">
                        <input type="text" class="form-control" name="message" id="message">
                        <div class="input-group-append">

                            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                            <button class="btn btn-outline-success" type="submit" name="typeMessage" id="typeMessage"
                                    value="Done">Add
                            </button>
                        </div>
                    </div>
                </form>
                <div class="">
                    <#list notesDone as item>
                        <p>${item}</p>
                    </#list>
                </div>
            </div>
        </div>
    </div>
</@c.page>