<?xml version="1.0"?>
<recipe>

	<instantiate from="root/src/app_package/Fragment.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}Fragment.kt" />
	<instantiate from="root/src/app_package/Configurator.kt.ftl"
				   to="${escapeXmlAttribute(srcOut)}/${className}Configurator.kt"/>
	<instantiate from="root/src/app_package/Interactor.kt.ftl"
				   to="${escapeXmlAttribute(srcOut)}/${className}Interactor.kt"/>
	<instantiate from="root/src/app_package/Presenter.kt.ftl"
				   to="${escapeXmlAttribute(srcOut)}/${className}Presenter.kt"/>
	<instantiate from="root/src/app_package/Router.kt.ftl"
				   to="${escapeXmlAttribute(srcOut)}/${className}Router.kt"/>
	<instantiate from="root/src/app_package/Worker.kt.ftl"
				   to="${escapeXmlAttribute(srcOut)}/${className}Worker.kt"/>
	<instantiate from="root/src/app_package/Model.kt.ftl"
				   to="${escapeXmlAttribute(srcOut)}/${className}Model.kt"/>

    <#if generateLayout>

    	<instantiate from="root/res/layout/Layout.xml.ftl"
        	         to="${escapeXmlAttribute(resOut)}/layout/${simpleLayoutName}.xml" />
	</#if>

	<#if generateTest>

		<instantiate from="root/src/app_package/FragmentUnitTest.kt.ftl"
					   to="${escapeXmlAttribute(unitTestOut)}/${className}FragmentUnitTest.kt" />
		<instantiate from="root/src/app_package/InteractorUnitTest.kt.ftl"
					   to="${escapeXmlAttribute(unitTestOut)}/${className}InteractorUnitTest.kt" />
	    <instantiate from="root/src/app_package/PresenterUnitTest.kt.ftl"
	   				   to="${escapeXmlAttribute(unitTestOut)}/${className}PresenterUnitTest.kt" />
  		<instantiate from="root/src/app_package/RouterUnitTest.kt.ftl"
  					   to="${escapeXmlAttribute(unitTestOut)}/${className}RouterUnitTest.kt" />
	   	<instantiate from="root/src/app_package/WorkerUnitTest.kt.ftl"
	   				   to="${escapeXmlAttribute(unitTestOut)}/${className}WorkerUnitTest.kt" />
	</#if>

	<open file="${srcOut}/${className}Fragment.kt"/>
</recipe>
