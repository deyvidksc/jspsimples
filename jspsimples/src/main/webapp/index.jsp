<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>



	<table width="20%" height="218" border="0" cellpadding="0"
		align="center" cellspacing="0">

		<tbody>

			<tr>
				<td width="50%" height="218"><table cellspacing="0"
						cellpadding="0" border="0" width="100%">
						<form>
						<tbody>
							<tr>
								<form>
								<td class="normal"><table cellspacing="0" cellpadding="0"
										border="0" width="100%">
										<tbody>
											<tr>
												<td class="normalmt" width="60%" valign="top">Sua
													altura:</td>
												<td class="normal" align="left" valign="top" width="17%"><input
													name="altu" type="text" id="altu"
													style="background-color: #F0f0f0; color: #000000; font-family: arial; font-weight: normal; font-size: 12pt;"
													value="0" size="12" maxlength="5"></td>
												<td width="20%" align="right" valign="top" class="normal"><div
														align="left" class="normalmt">m</div></td>
											</tr>
										</tbody>
									</table>
									<table cellspacing="0" cellpadding="0" border="0" width="100%">
										<tbody>
											<tr height="1">
												<td bgcolor="#ffffff" width="3%"></td>
												<td bgcolor="#e0e0e0" width="85%"></td>
												<td bgcolor="#ffffff" width="12%"></td>
											</tr>
										</tbody>
									</table> <br>
									<table cellspacing="0" cellpadding="0" border="0" width="100%">
										<tbody>
											<tr>
												<td class="normal" width="60%" valign="top"><span
													class="normalmt">Seu peso: </span><br></td>
												<td class="normal" align="left" valign="top" width="17%"><input
													name="peso" type="text" id="peso"
													style="background-color: #F0f0f0; color: #000000; font-family: arial; font-weight: normal; font-size: 12pt;"
													value="0" size="12" maxlength="6"></td>
												<td width="20%" align="right" valign="top" class="normal"><div
														align="left" class="normalmt">kg</div></td>
											</tr>
										</tbody>
									</table>
									<table cellspacing="0" cellpadding="0" border="0" width="100%">
										<tbody>
											<tr height="1">
												<td bgcolor="#ffffff" width="3%"></td>
												<td bgcolor="#e0e0e0" width="85%"></td>
												<td bgcolor="#ffffff" width="12%"></td>
											</tr>
										</tbody>
									</table> <br>
									<table cellspacing="0" cellpadding="0" border="0" width="100%">
										<tbody>
											<tr>
												<td class="normalmt" width="62%" valign="top">Sexo:<br>
													<font a="A">(O cálculo é diferenciado para homens e
														mulheres)</font></td>
												<td class="normal" align="left" valign="top" width="23%">
													<select name="sexo"
													style="background-color: #F0f0f0; color: #000000; font-family: arial; font-weight: normal; font-size: 12pt;">
														<option value="fem">Fem</option>
														<option value="masc">Masc</option>
												</select>
												</td>
												<td width="12%" align="right" valign="top" class="normal">&nbsp;</td>
											</tr>
										</tbody>
									</table>
									<table cellspacing="0" cellpadding="0" border="0" width="100%">
										<tbody>
											<tr height="1">
												<td bgcolor="#ffffff" width="3%"></td>
												<td bgcolor="#e0e0e0" width="85%"></td>
												<td bgcolor="#ffffff" width="12%"></td>
											</tr>
										</tbody>
									</table> <br> <!-- *********** submit -->
									<table cellspacing="0" cellpadding="0" border="0" width="100%">
										<tbody>
											<tr>
												<td width="21%" align="right"><input type="reset"
													name="Submit" value="Limpar"></td>
												<td width="52%" align="center">
													<div id="msg_erro"></div>
												</td>
												<td width="27%" align="left" class="normal"><input
													type="submit" name="botao" value="Calcular"> <br>
													<span style="text-align: right"></span> <span
													style="text-align: right"></span> <span
													style="text-align: right"></span> <span
													style="text-align: right"></span></td>
											</tr>
										</tbody>
									</table> <!-- *********** final da pg HTM --></td>
							</tr>
						</tbody>
						</form>

					</table></td>

			</tr>
		</tbody>


		<tr>
			<td>
				<%
					String altura = request.getParameter("altu");
					String peso = request.getParameter("peso");
					String sexo = request.getParameter("sexo");
					String msg = "";
					altura = altura == null ? "0" : altura;
					peso = peso == null ? "0" : peso;
					double expAltura = Double.parseDouble(altura) * Double.parseDouble(altura);
					double imc = Double.parseDouble(peso) / expAltura;
					sexo = sexo == null ? "masc" : sexo;

					msg = "fiii, informe a altura e o peso.";
					if (!altura.equalsIgnoreCase("0") && !peso.equalsIgnoreCase("0")) {
						if (sexo.equalsIgnoreCase("fem")) {
							if (imc < 19.1) {
								msg = "abaixo do peso";
							} else if ((imc > 19.1) && (imc < 25.8)) {
								msg = "no peso normal";
							} else if ((imc > 25.8) && (imc < 27.3)) {
								msg = "marginalmente acima do peso";
							} else if ((imc > 27.3) && (imc < 32.3)) {
								msg = "acima do peso ideal";
							} else {
								msg = "obeso";
							}
						} else {
							if (imc < 20.7) {
								msg = "abaixo do peso";
							} else if ((imc > 20.7) && (imc < 26.4)) {
								msg = "no peso normal";
							} else if ((imc > 26.4) && (imc < 27.8)) {
								msg = "marginalmente acima do peso";
							} else if ((imc > 27.8) && (imc < 31.1)) {
								msg = "acima do peso ideal";
							} else {
								msg = "obeso";
							}
						}

						msg = "IMC: " + imc + " - " + msg;
					}
				%><h1><%=msg%></h1> <%
 	
 %>

			</td>
		</tr>

	</table>
</body>
</html>