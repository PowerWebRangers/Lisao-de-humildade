<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ include file="../jspf/header.jspf"%>

<!doctype html>
<html>
<head>
    <title>Batalla RPG</title>
    <meta charset="utf-8">

    <link rel="stylesheet" href="${s}/css/styles.css" type="text/css">

</head>
<body>
    <h1>RPG Battle</h1>
    <main>
        <section class="parties">
            <section id="heroes" class="party">
                <h1>Heroes</h1>
                <ul class="character-list"></ul>
            </section>
            <section id="monsters" class="party">
                <h1>Monsters</h1>
                <ul class="character-list"></ul>
            </section>
        </section><!-- parties -->

        <section class="info">
            <p id="battle-info">Fight!</p>
        </section><!-- info -->

        <section class="battle-menu">
            <form name="select-action" style="display:none">
                <ul class="choices"></ul>

                <p><button type="submit">Select action</button></p>
            </form>

            <form name="select-spell" style="display:none">
                <ul class="choices"></ul>

                <p><button type="submit">Select spell</button> or
                    <a href="#" class="cancel">Cancel</a>
                </p>
            </form>

            <form name="select-target" style="display:none">
                <ul class="choices"></ul>

                <p><button type="submit">Select target</button> or
                    <a href="#" class="cancel">Cancel</a>
                </p>
            </form>
        </section>
    </main>

    <%@ include file="../jspf/footer.jspf"%>
    
</body>

</html>