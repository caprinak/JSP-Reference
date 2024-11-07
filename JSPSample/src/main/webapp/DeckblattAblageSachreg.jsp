<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/taglib.tld" prefix="visj" %>
<visj:canvas styleclass="mask">
<tr>
  <td style="height:1px;"></td>
  <td style="min-width:105px; width:46%;"></td>
  <td style="min-width:20px"></td>
  <td></td>
  <td style="min-width:105px; width:54%;"></td>
</tr>
<tr valign="top">
  <td style="height:1px;"><visj:label identifier="name"/></td>
  <td colspan="4"><visj:textbox identifier="name" /></td>
</tr>
<tr valign="top">
  <td><visj:label identifier="bemerkung"/></td>
  <td colspan="4"><visj:textarea identifier="bemerkung" rows="4" /></td>
</tr>
<tr valign="top" >
  <td style="height:1px;"><visj:label identifier="erzeugt_am"/></td>
  <td><visj:textbox identifier="erzeugt_am" /></td>
  <td></td>
  <td><visj:label identifier="erzeugt_von"/></td>
  <td><visj:textbox identifier="erzeugt_von" /></td>
</tr>
<tr valign="top" >
  <td style="height:1px;"><visj:label identifier="geaendert_am"/></td>
  <td><visj:textbox identifier="geaendert_am" /></td>
  <td></td>
  <td><visj:label identifier="geaendert_von"/></td>
  <td><visj:textbox identifier="geaendert_von" /></td>
</tr>
</visj:canvas>

