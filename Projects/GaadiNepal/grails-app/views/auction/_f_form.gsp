<%@ page import="gadinepal_v1.Auction" %>



<div class="fieldcontain ${hasErrors(bean: auctionInstance, field: 'category', 'error')} required">
	<label for="category">
		<g:message code="auction.category.label" default="Category" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="category" name="category.id" from="${gadinepal_v1.Category.list()}" optionKey="id" required=""
              value="${auctionInstance?.category?.id}" class="many-to-one" noSelection="['':'-select-']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: auctionInstance, field: 'brand', 'error')} required">
	<label for="brand">
		<g:message code="auction.brand.label" default="Brand" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="brand" name="brand.id" from="${gadinepal_v1.Brand.list()}" optionKey="id" required=""
              value="${auctionInstance?.brand?.id}" class="many-to-one"  noSelection="['':'-select-']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: auctionInstance, field: 'item_name', 'error')} required">
	<label for="item_name">
		<g:message code="auction.item_name.label" default="Itemname" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="item_name" required="" value="${auctionInstance?.item_name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: auctionInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="auction.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${auctionInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: auctionInstance, field: 'base_price', 'error')} required">
	<label for="base_price">
		<g:message code="auction.base_price.label" default="Baseprice" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="base_price" type="number" min="1500000" value="${auctionInstance.base_price}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: auctionInstance, field: 'startDate', 'error')} required">
	<label for="startDate">
		<g:message code="auction.startDate.label" default="Start Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="startDate" value="${auctionInstance?.startDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: auctionInstance, field: 'endDate', 'error')} required">
	<label for="endDate">
		<g:message code="auction.endDate.label" default="End Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="endDate"  value="${auctionInstance?.endDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: auctionInstance, field: 'user', 'error')} required">
    <g:hiddenField id="user" name="user.id" from="${gadinepal_v1.User.list()}" value="${auctionInstance?.user?.id=session.user.id}" class="many-to-one"/>
</div>


