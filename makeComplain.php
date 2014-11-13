<form action="process.php?action=makeComplain" method="post">

<table width="600" border="0" align="center" cellpadding="5" cellspacing="1" bgcolor="#336699" class="entryTable">
  <tr id="entryTableHeader">
    <td>:: Make Complains ::</td>
  </tr>
  <tr>
    <td class="contentArea"><div class="errorMessage" align="center"></div>
        <table width="100%" border="0" cellpadding="2" cellspacing="1" class="text">
          <tr align="center">
            <td colspan="2">&nbsp;</td>
          </tr>
          <tr class="entryTable">
            <td class="label">&nbsp;Complain Type </td>
              <td class="content">
			       <select name="compType" class="box">
				      <option value="Select">Select Type</option>
              <option value="Academic Complains">Academic Complains</option>
              <option value="Classroom Complains">Classroom Complains</option>
              <option value="Faculty Complains">Faculty Complains</option>
				      <option value="Hostel Complains">Hostel Complains</option>
				      <option value="Mess Complains">Mess Complains</option>
              <option value="Lab Facilities">Lab Facilities</option>
              <option value="Library Complain / Suggestions">Library Complain / Suggestions</option>
              <option value="Internet Connectivity">Internet Connectivity</option>
              <option value="Sports Department Complains">Sports Department Complains</option>
              <option value="Shuttle Cab / Transportation Complain">Shuttle Cab / Transportation Complains</option>
              <option value="Parking Complains">Parking Complains</option>
              <option value="Other Complains">Other Complains</option>
            </select>         
          </tr>
          
          <tr class="entryTable">
            <td class="label">&nbsp;Complain Title </td>
            <td class="content"><input name="compTitle" type="text" class="box" id="compTitle" value="" size="50" maxlength="100" /></td>
          </tr>

          <tr class="entryTable">
            <td valign="top" class="label">&nbsp;Complain Description .</td>
            <td class="content"><textarea name="compDesc" cols="50" rows="6" class="box" id="compDesc"></textarea></td>
          </tr>


          <tr>
            <td width="200">&nbsp;</td>
            <td width="372">&nbsp;</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td><input name="btnLogin" type="submit" id="btnLogin" value=" Make Complain  "></td>
          </tr>
      </table></td>
  </tr>
</table>
</form>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>