<nav id="menu">
    <div class="inner">
        <h2>Menu</h2>
        <ul class="links">
            <li><a href="${pageContext.servletContext.contextPath}">Inicio</a></li>
            <li><a href="${pageContext.servletContext.contextPath}/inventario.jsp">Productos y Servicios</a></li>
            <li><a href="#footer">Comentarios</a></li>
            <% if( request.getUserPrincipal() != null ) { %>
            <li><a href="${pageContext.servletContext.contextPath}/Logout">Cerrar sesión</a></li>
            <% } else { %>
            <li><a href="${pageContext.servletContext.contextPath}/login.jsp">Iniciar sesión</a></li>
            <% } %>
        </ul>
        <a href="#" class="close">Close</a>
    </div>
</nav>