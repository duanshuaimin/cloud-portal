<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%--@elvariable id="credentials" type="de.papke.cloud.portal.model.CredentialsModel"--%>

<jsp:include page="header.jsp" />

<div id="wrapper">

	<jsp:include page="navigation.jsp" />

	<div id="page-wrapper">
		<div class="row">
			<div class="col-lg-12">
			    <h4 class="page-header">Credentials List</h4>
				<form id="main-form" method="get" action="<c:url value="/credentials" />"
					role="form">
					<table id="datatable" class="table table-striped table-bordered" cellspacing="0" width="100%">
						<thead>
							<tr>
								<th>Actions</th>
								<th>Group</th>
								<th>vCenter Hostname</th>
								<th>vCenter Username</th>
								<th>vCenter Password</th>
								<th>vCenter Datacenter</th>
								<th>vCenter Datastore</th>
								<th>vCenter Resource Pool</th>
								<th>vCenter Network</th>
								<th>vCenter Target Folder</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${credentials.credentialsList}" var="cred">
								<tr>
									<td>
									   <button id="delete/action/vsphere/${cred.id}" type="submit" class="btn btn-danger btn-circle"><i class="fa fa-times"></i></button>
									</td>
									<td><c:out value="${cred.group}" /></td>
									<td><c:out value="${cred.secretMap['vcenter_hostname']}" /></td>
									<td><c:out value="${cred.secretMap['vcenter_username']}" /></td>
									<td><c:out value="****" /></td>
									<td><c:out value="${cred.secretMap['vcenter_datacenter']}" /></td>
									<td><c:out value="${cred.secretMap['vcenter_datastore']}" /></td>
									<td><c:out value="${cred.secretMap['vcenter_resource_pool']}" /></td>
									<td><c:out value="${cred.secretMap['vcenter_network']}" /></td>
									<td><c:out value="${cred.secretMap['vcenter_target_folder']}" /></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</form>
			</div>
		</div>
	</div>
</div>

<jsp:include page="footer.jsp" />