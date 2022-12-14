<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'annonce.label', default: 'Annonce')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#create-annonce" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="create-annonce" class="content scaffold-create" role="main">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>

            <g:hasErrors bean="${this.annonce}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.annonce}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>

            <g:uploadForm action="save">

                    <fieldset class="form">
                        <div class="fieldcontain required">
                            <label for="title">Title
                                <span class="required-indicator">*</span>
                            </label>
                            <input type="text" name="title" value="" required="" maxlength="50" id="title">
                        </div>

                        <div class="fieldcontain required">
                            <label for="description">Description
                                <span class="required-indicator">*</span>
                            </label>
                            <input type="text" name="description" required="" value="" id="description">
                        </div>

                        <div class="fieldcontain required">
                            <label for="price">Price
                                <span class="required-indicator">*</span>
                            </label>
                            <input type="number decimal" name="price" value="" required="" step="0.01" min="0.0" id="price">
                        </div>


                        <div class='fieldcontain required'>
                            <label for='illustration'>Illustration
                                <span class='required-indicator'>*</span>
                            </label>
                            <g:field type="file" name="illustration" required="true"/>
                        </div>


                        <div class="fieldcontain">
                            <label for="isActive">Is Active</label>
                            <input type="hidden" name="_isActive">
                            <input type="checkbox" name="isActive" id="isActive">
                        </div>

                        <div class="fieldcontain required">
                            <label for="author">Author
                                <span class="required-indicator">*</span>
                            </label>
                            <g:select from="${userList}" name="author.id" optionKey="id" />
                        </div>

                    </fieldset>
                <fieldset class="buttons">
                    <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                </fieldset>
            </g:uploadForm>
        </div>
    </body>
</html>
