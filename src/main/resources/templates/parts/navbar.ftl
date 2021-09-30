<nav class="navbar navbar-expand-lg navbar-dark bg-dark">

    <div class="container">
        <a class="navbar-brand" href="/task_list">Notes</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup"
                aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse " id="navbarNavAltMarkup">
            <div class="navbar-nav ml">
                <a class="nav-link" aria-current="page" href="task_list">Task List</a>
                <a class="nav-link" href="journal">Journal</a>
                <a class="nav-link" href="personal_home">Personal Home</a>
                <a class="nav-link" href="quick_note">Quick Note</a>
                <a class="nav-link" href="reading_list">Reading List</a>
            </div>
            <div class="navbar-nav ml-auto">
                <#assign known = Session.SPRING_SECURITY_CONTEXT??>
                <#if known>
                <form action="/logout" method="post" class="pl-4">
                    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                    <button class="btn btn-link nav-link" type="submit">Sign Out</button>
                </form>
                </#if>
            </div>
        </div>
    </div>
</nav>