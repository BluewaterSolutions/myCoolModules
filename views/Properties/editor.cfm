
<cfoutput>
<div class="row">
    <div class="col-md-12">
        <h2 class="h3">
		#html.href( href="cbadmin.module.bluTest.Properties", text="<i class='fa fa-home'></i> Properties:")#
         #args.title#</h2>
    </div>
</div>

<!--- Submit Form --->
#html.startForm( action='cbadmin.module.bluTest.Properties.save' )#
<div class="panel panel-default">
	<div class="panel-body">




	#html.textField(
	    name="address1",
	    label="Address1:",
	    value=#prc.qProperty.address1#,
	    class="form-control",
	    title="Address1",
	    placeholder="Address1",
	    wrapper="div class=controls",
	    labelClass="control-label",
	    id="address1",
	    groupWrapper="div class=form-group"
	)#




	#html.textField(
	    name="address2",
	    label="Address2:",
	    value=#prc.qProperty.address2#,
	    class="form-control",
	    title="Address2",
	    placeholder="Address2",
	    wrapper="div class=controls",
	    labelClass="control-label",
	    id="address2",
	    groupWrapper="div class=form-group"
	)#




	#html.textField(
	    name="city",
	    label="City:",
	    value=#prc.qProperty.city#,
	    class="form-control",
	    title="City",
	    placeholder="City",
	    wrapper="div class=controls",
	    labelClass="control-label",
	    id="city",
	    groupWrapper="div class=form-group"
	)#




	#html.textField(
	    name="email",
	    label="Email:",
	    value=#prc.qProperty.email#,
	    class="form-control",
	    title="Email",
	    placeholder="Email",
	    wrapper="div class=controls",
	    labelClass="control-label",
	    id="email",
	    groupWrapper="div class=form-group"
	)#




	#html.textField(
	    name="first",
	    label="First:",
	    value=#prc.qProperty.first#,
	    class="form-control",
	    title="First",
	    placeholder="First",
	    wrapper="div class=controls",
	    labelClass="control-label",
	    id="first",
	    groupWrapper="div class=form-group"
	)#




	#html.hiddenField(
	    name="id",
	    value=#prc.qProperty.id#
	)#



	#html.textField(
	    name="last",
	    label="Last:",
	    value=#prc.qProperty.last#,
	    class="form-control",
	    title="Last",
	    placeholder="Last",
	    wrapper="div class=controls",
	    labelClass="control-label",
	    id="last",
	    groupWrapper="div class=form-group"
	)#




	#html.textField(
	    name="state",
	    label="State:",
	    value=#prc.qProperty.state#,
	    class="form-control",
	    title="State",
	    placeholder="State",
	    wrapper="div class=controls",
	    labelClass="control-label",
	    id="state",
	    groupWrapper="div class=form-group"
	)#




	#html.textField(
	    name="zip",
	    label="Zip:",
	    value=#prc.qProperty.zip#,
	    class="form-control",
	    title="Zip",
	    placeholder="Zip",
	    wrapper="div class=controls",
	    labelClass="control-label",
	    id="zip",
	    groupWrapper="div class=form-group"
	)#



			
				

	</div>

	<div class="panel-footer">
	<!--- Submit --->
		<div class="form-group">
		#html.submitButton(value="Save", class="btn btn-primary pull-right")#
			#html.href( href="cbadmin.module.bluTest.Properties.index", text="Cancel", class="btn btn-default pull-right" )#
			
		</div>
	</div>
</div>

#html.endForm()#
</cfoutput>