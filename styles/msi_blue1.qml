<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis hasScaleBasedVisibilityFlag="0" minScale="1e+08" styleCategories="AllStyleCategories" version="3.16.9-Hannover" maxScale="0">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <temporal mode="0" fetchMode="0" enabled="0">
    <fixedRange>
      <start></start>
      <end></end>
    </fixedRange>
  </temporal>
  <customproperties>
    <property value="false" key="WMSBackgroundLayer"/>
    <property value="false" key="WMSPublishDataSourceUrl"/>
    <property value="0" key="embeddedWidgets/count"/>
  </customproperties>
  <pipe>
    <provider>
      <resampling zoomedInResamplingMethod="nearestNeighbour" enabled="false" zoomedOutResamplingMethod="nearestNeighbour" maxOversampling="2"/>
    </provider>
    <rasterrenderer nodataColor="" classificationMax="1.3" opacity="1" band="1" type="singlebandpseudocolor" classificationMin="0.3" alphaBand="-1">
      <rasterTransparency/>
      <minMaxOrigin>
        <limits>None</limits>
        <extent>WholeRaster</extent>
        <statAccuracy>Estimated</statAccuracy>
        <cumulativeCutLower>0.02</cumulativeCutLower>
        <cumulativeCutUpper>0.98</cumulativeCutUpper>
        <stdDevFactor>2</stdDevFactor>
      </minMaxOrigin>
      <rastershader>
        <colorrampshader clip="0" classificationMode="2" labelPrecision="4" maximumValue="1.3" colorRampType="INTERPOLATED" minimumValue="0.29999999999999999">
          <colorramp type="gradient" name="[source]">
            <prop v="252,0,252,255" k="color1"/>
            <prop v="255,69,0,255" k="color2"/>
            <prop v="0" k="discrete"/>
            <prop v="gradient" k="rampType"/>
            <prop v="0.0909091;150,0,150,255:0.241212;0,0,97,255:0.453333;0,0,255,255:0.744242;255,255,255,255:0.769697;250,255,192,255:0.791515;255,255,149,255:0.844848;255,253,68,255:0.911515;253,216,67,255:0.984242;255,123,0,255" k="stops"/>
          </colorramp>
          <item label="0,3000" value="0.3" color="#fc00fc" alpha="255"/>
          <item label="0,4111" value="0.411111111111111" color="#82008f" alpha="255"/>
          <item label="0,5222" value="0.522222222222222" color="#130068" alpha="255"/>
          <item label="0,6333" value="0.633333333333333" color="#0000a6" alpha="255"/>
          <item label="0,7444" value="0.744444444444444" color="#0000f8" alpha="255"/>
          <item label="0,8556" value="0.855555555555556" color="#5a5aff" alpha="255"/>
          <item label="0,9667" value="0.966666666666667" color="#bbbbff" alpha="255"/>
          <item label="1,0778" value="1.077777777777778" color="#fcffb0" alpha="255"/>
          <item label="1,1889" value="1.18888888888889" color="#fee543" alpha="255"/>
          <item label="1,3000" value="1.3" color="#ff4500" alpha="255"/>
        </colorrampshader>
      </rastershader>
    </rasterrenderer>
    <brightnesscontrast contrast="0" gamma="1" brightness="0"/>
    <huesaturation colorizeGreen="128" saturation="0" colorizeOn="0" colorizeBlue="128" colorizeStrength="100" colorizeRed="255" grayscaleMode="0"/>
    <rasterresampler maxOversampling="2"/>
    <resamplingStage>resamplingFilter</resamplingStage>
  </pipe>
  <blendMode>0</blendMode>
</qgis>
