<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.16.9-Hannover" minScale="1e+08" styleCategories="AllStyleCategories" maxScale="0" hasScaleBasedVisibilityFlag="0">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <temporal enabled="0" fetchMode="0" mode="0">
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
      <resampling maxOversampling="2" enabled="false" zoomedInResamplingMethod="nearestNeighbour" zoomedOutResamplingMethod="nearestNeighbour"/>
    </provider>
    <rasterrenderer band="1" opacity="1" nodataColor="" alphaBand="-1" classificationMax="1" classificationMin="0" type="singlebandpseudocolor">
      <rasterTransparency/>
      <minMaxOrigin>
        <limits>None</limits>
        <extent>WholeRaster</extent>
        <statAccuracy>Exact</statAccuracy>
        <cumulativeCutLower>0.02</cumulativeCutLower>
        <cumulativeCutUpper>0.98</cumulativeCutUpper>
        <stdDevFactor>2</stdDevFactor>
      </minMaxOrigin>
      <rastershader>
        <colorrampshader minimumValue="0" labelPrecision="6" classificationMode="2" clip="0" maximumValue="1" colorRampType="INTERPOLATED">
          <colorramp name="[source]" type="gradient">
            <prop k="color1" v="0,0,63,255"/>
            <prop k="color2" v="2,0,56,255"/>
            <prop k="discrete" v="0"/>
            <prop k="rampType" v="gradient"/>
            <prop k="stops" v="0.186667;166,104,62,255:0.233939;225,204,195,255:0.264242;255,255,255,255:0.286061;205,227,109,255:0.406061;38,214,38,255:0.460606;0,187,0,255:0.550303;0,99,0,255"/>
          </colorramp>
          <item color="#00003f" value="0" label="0,000000" alpha="255"/>
          <item color="#2f1d3f" value="0.0526315789473684" label="0,052632" alpha="255"/>
          <item color="#5e3b3f" value="0.105263157894737" label="0,105263" alpha="255"/>
          <item color="#8c583f" value="0.157894736842105" label="0,157895" alpha="255"/>
          <item color="#c49a81" value="0.210526315789474" label="0,210526" alpha="255"/>
          <item color="#fefdfd" value="0.263157894736842" label="0,263158" alpha="255"/>
          <item color="#a4e05b" value="0.315789473684211" label="0,315789" alpha="255"/>
          <item color="#5ada3c" value="0.368421052631579" label="0,368421" alpha="255"/>
          <item color="#1bcf1b" value="0.421052631578947" label="0,421053" alpha="255"/>
          <item color="#00ae00" value="0.473684210526316" label="0,473684" alpha="255"/>
          <item color="#007b00" value="0.526315789473684" label="0,526316" alpha="255"/>
          <item color="#005d04" value="0.578947368421053" label="0,578947" alpha="255"/>
          <item color="#00510a" value="0.631578947368421" label="0,631579" alpha="255"/>
          <item color="#014611" value="0.684210526315789" label="0,684211" alpha="255"/>
          <item color="#013a17" value="0.736842105263158" label="0,736842" alpha="255"/>
          <item color="#012e1e" value="0.789473684210526" label="0,789474" alpha="255"/>
          <item color="#012324" value="0.842105263157895" label="0,842105" alpha="255"/>
          <item color="#01172b" value="0.894736842105263" label="0,894737" alpha="255"/>
          <item color="#020c31" value="0.947368421052632" label="0,947368" alpha="255"/>
          <item color="#020038" value="1" label="1,000000" alpha="255"/>
        </colorrampshader>
      </rastershader>
    </rasterrenderer>
    <brightnesscontrast brightness="0" gamma="1" contrast="0"/>
    <huesaturation colorizeOn="0" colorizeBlue="128" colorizeStrength="100" saturation="0" colorizeGreen="128" grayscaleMode="0" colorizeRed="255"/>
    <rasterresampler maxOversampling="2"/>
    <resamplingStage>resamplingFilter</resamplingStage>
  </pipe>
  <blendMode>0</blendMode>
</qgis>
