<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
<title>ʹ��s:checkboxlist���ɶ����ѡ��</title>
<s:head />

</head>
<body>
	<h3>ʹ��s:checkboxlist���ɶ����ѡ��</h3>
	<s:form>
		<!-- ʹ�ü򵥼��������ɶ����ѡ�� -->
		<s:checkboxlist name="a" label="��ѡ����ϲ����ͼ��" labelposition="top"
			list="{'Spring2.0����' , '������J2EE��ҵӦ��ʵս' , '����J2EE��Ajax����'}" />
		<!-- ʹ�ü�Map���������ɶ����ѡ�� -->
		<s:checkboxlist name="b" label="��ѡ������ѡ���������" labelposition="top"
			list="#{'Spring2.0����':'2006��10��' , '������J2EE��ҵӦ��ʵս':'2007��4��' , '����J2EE��Ajax����':'2007��6��'}"
			listKey="key" listValue="value" />
		<s:bean name="com.shawn.service.BookService" id="bs" />
		<!-- ʹ�ü�����Ŷ��JavaBeanʵ�������ɶ����ѡ�� -->
		<s:checkboxlist name="b" label="��ѡ����ϲ����ͼ��" labelposition="top"
			list="#bs.books" listKey="author" listValue="name" />
	</s:form>
</body>
</html>
