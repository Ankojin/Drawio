<mxfile host="app.diagrams.net">
  <diagram name="Azure Deployment">
    <mxGraphModel dx="1218" dy="625" grid="1" gridSize="10" guides="1" tooltips="1" connect="1" arrows="1" fold="1" page="1" pageScale="1" pageWidth="827" pageHeight="1169" math="0" shadow="0">
      <root>
        <mxCell id="0" />
        <mxCell id="1" parent="0" />

        <!-- Virtual WAN Hub -->
        <mxCell id="VWANHub" value="Virtual WAN Hub" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#e1d5e7;strokeColor=#9673a6;" vertex="1" parent="1">
          <mxGeometry x="50" y="200" width="150" height="60" as="geometry" />
        </mxCell>
        
        <!-- Connection to Application Gateway -->
        <mxCell id="ConnectionToAppGw" style="edgeStyle=orthogonalEdgeStyle;rounded=1;strokeColor=#000000;edgeWidth=2;" edge="1" parent="1" source="VWANHub" target="AppGateway">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>

        <!-- Application Gateway -->
        <mxCell id="AppGateway" value="Application Gateway" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#d5e8d4;strokeColor=#82b366;" vertex="1" parent="1">
          <mxGeometry x="50" y="50" width="120" height="60" as="geometry" />
        </mxCell>
        
        <!-- Palo Alto Firewall -->
        <mxCell id="PaloAlto" value="Palo Alto Firewall" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#ffe6cc;strokeColor=#d6b656;" vertex="1" parent="1">
          <mxGeometry x="200" y="50" width="140" height="60" as="geometry" />
        </mxCell>
        
        <!-- Backend Servers -->
        <mxCell id="Backend" value="Backend Servers" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#dae8fc;strokeColor=#6c8ebf;" vertex="1" parent="1">
          <mxGeometry x="400" y="50" width="120" height="60" as="geometry" />
        </mxCell>
        
        <!-- On-Premises Network -->
        <mxCell id="OnPrem" value="On-Premises Network" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#f8cecc;strokeColor=#d79b00;" vertex="1" parent="1">
          <mxGeometry x="600" y="200" width="150" height="60" as="geometry" />
        </mxCell>

        <!-- IPsec VPN Tunnel -->
        <mxCell id="VPNConnection" style="edgeStyle=orthogonalEdgeStyle;rounded=1;dashed=1;strokeColor=#ff0000;" edge="1" parent="1" source="PaloAlto" target="OnPrem">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>

        <!-- Subnets -->
        <mxCell id="AppGwSubnet" value="App Gateway Subnet" style="swimlane;horizontal=0;html=1;strokeColor=#999999;fillColor=#f8cecc;" vertex="1" parent="1">
          <mxGeometry x="30" y="30" width="160" height="100" as="geometry" />
        </mxCell>
        <mxCell id="FirewallSubnet" value="Firewall Subnet" style="swimlane;horizontal=0;html=1;strokeColor=#999999;fillColor=#fff2cc;" vertex="1" parent="1">
          <mxGeometry x="180" y="30" width="180" height="100" as="geometry" />
        </mxCell>
        <mxCell id="BackendSubnet" value="Backend Subnet" style="swimlane;horizontal=0;html=1;strokeColor=#999999;fillColor=#d9eaf7;" vertex="1" parent="1">
          <mxGeometry x="380" y="30" width="160" height="100" as="geometry" />
        </mxCell>

        <!-- Arrows for Traffic Flow -->
        <mxCell id="Arrow1" style="edgeStyle=orthogonalEdgeStyle;rounded=1;strokeColor=#000000;edgeWidth=2;" edge="1" parent="1" source="AppGateway" target="PaloAlto">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="Arrow2" style="edgeStyle=orthogonalEdgeStyle;rounded=1;strokeColor=#000000;edgeWidth=2;" edge="1" parent="1" source="PaloAlto" target="Backend">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
      </root>
    </mxGraphModel>
  </diagram>
</mxfile>