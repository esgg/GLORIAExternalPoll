<%
/**
 * Copyright (c) 2000-2011 Liferay, Inc. All rights reserved.
 *
 * This library is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Lesser General Public License as published by the Free
 * Software Foundation; either version 2.1 of the License, or (at your option)
 * any later version.
 *
 * This library is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
 * details.
 */
%>

<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ taglib uri="http://liferay.com/tld/ui" prefix="liferay-ui" %>

<%@ page import="com.liferay.portal.theme.ThemeDisplay"%>
<%@ page import="com.liferay.portal.kernel.util.WebKeys" %>
<%@ page import="com.liferay.portal.model.User" %>
<portlet:defineObjects />

<% 
ThemeDisplay themeDisplay = (ThemeDisplay) request.getAttribute(WebKeys.THEME_DISPLAY);
User user = themeDisplay.getUser();
String language = themeDisplay.getLanguageId();

String url=null;


// The selection of the language neccesary for the experiment

if (language.equalsIgnoreCase("es_ES") || language.equalsIgnoreCase("es")) {
	url="https://docs.google.com/a/ciclope.info/forms/d/1Y0oy3zkR5fABaIPPkaPa-mWuT18y-9_ztDW_mDmQzFI/viewform";    
} else{
	url="https://docs.google.com/a/ciclope.info/forms/d/1GvVt6PSxJ2odFrMtmtothr0eeD9A5gxYgWLvfN4L_7g/viewform";
}
%>
<html>
<body>
<iframe id="iframe" height="900" width="100%" src="<%= url %>"></iframe>
</body>
</html>