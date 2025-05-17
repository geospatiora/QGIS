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
    <rasterrenderer band="1" opacity="1" nodataColor="" alphaBand="-1" classificationMax="0.4" classificationMin="-0.2" type="singlebandpseudocolor">
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
        <colorrampshader minimumValue="-0.20000000000000001" labelPrecision="4" classificationMode="1" clip="0" maximumValue="0.40000000000000002" colorRampType="INTERPOLATED">
          <colorramp name="[source]" type="gradient">
            <prop k="color1" v="48,18,59,255"/>
            <prop k="color2" v="122,4,3,255"/>
            <prop k="discrete" v="0"/>
            <prop k="rampType" v="gradient"/>
            <prop k="stops" v="0.0039063;50,21,67,255:0.0078125;51,24,74,255:0.0117188;52,27,81,255:0.015625;53,30,88,255:0.0195313;54,33,95,255:0.0234375;55,36,102,255:0.0273438;56,39,109,255:0.03125;57,42,115,255:0.0351563;58,45,121,255:0.0390625;59,47,128,255:0.0429688;60,50,134,255:0.046875;61,53,139,255:0.0507813;62,56,145,255:0.0546875;63,59,151,255:0.0585938;63,62,156,255:0.0625;64,64,162,255:0.0664063;65,67,167,255:0.0703125;65,70,172,255:0.0742188;66,73,177,255:0.078125;66,75,181,255:0.0820313;67,78,186,255:0.0859375;68,81,191,255:0.0898438;68,84,195,255:0.09375;68,86,199,255:0.0976563;69,89,203,255:0.101563;69,92,207,255:0.105469;69,94,211,255:0.109375;70,97,214,255:0.113281;70,100,218,255:0.117188;70,102,221,255:0.121094;70,105,224,255:0.125;70,107,227,255:0.128906;71,110,230,255:0.132813;71,113,233,255:0.136719;71,115,235,255:0.140625;71,118,238,255:0.144531;71,120,240,255:0.148438;71,123,242,255:0.152344;70,125,244,255:0.15625;70,128,246,255:0.160156;70,130,248,255:0.164063;70,133,250,255:0.167969;70,135,251,255:0.171875;69,138,252,255:0.175781;69,140,253,255:0.179688;68,143,254,255:0.183594;67,145,254,255:0.1875;66,148,255,255:0.191406;65,150,255,255:0.195313;64,153,255,255:0.199219;62,155,254,255:0.203125;61,158,254,255:0.207031;59,160,253,255:0.210938;58,163,252,255:0.214844;56,165,251,255:0.21875;55,168,250,255:0.222656;53,171,248,255:0.226563;51,173,247,255:0.230469;49,175,245,255:0.234375;47,178,244,255:0.238281;46,180,242,255:0.242188;44,183,240,255:0.246094;42,185,238,255:0.25;40,188,235,255:0.253906;39,190,233,255:0.257813;37,192,231,255:0.261719;35,195,228,255:0.265625;34,197,226,255:0.269531;32,199,223,255:0.273438;31,201,221,255:0.277344;30,203,218,255:0.28125;28,205,216,255:0.285156;27,208,213,255:0.289063;26,210,210,255:0.292969;26,212,208,255:0.296875;25,213,205,255:0.300781;24,215,202,255:0.304688;24,217,200,255:0.308594;24,219,197,255:0.3125;24,221,194,255:0.316406;24,222,192,255:0.320313;24,224,189,255:0.324219;25,226,187,255:0.328125;25,227,185,255:0.332031;26,228,182,255:0.335938;28,230,180,255:0.339844;29,231,178,255:0.34375;31,233,175,255:0.347656;32,234,172,255:0.351563;34,235,170,255:0.355469;37,236,167,255:0.359375;39,238,164,255:0.363281;42,239,161,255:0.367188;44,240,158,255:0.371094;47,241,155,255:0.375;50,242,152,255:0.378906;53,243,148,255:0.382813;56,244,145,255:0.386719;60,245,142,255:0.390625;63,246,138,255:0.394531;67,247,135,255:0.398438;70,248,132,255:0.402344;74,248,128,255:0.40625;78,249,125,255:0.410156;82,250,122,255:0.414063;85,250,118,255:0.417969;89,251,115,255:0.421875;93,252,111,255:0.425781;97,252,108,255:0.429688;101,253,105,255:0.433594;105,253,102,255:0.4375;109,254,98,255:0.441406;113,254,95,255:0.445313;117,254,92,255:0.449219;121,254,89,255:0.453125;125,255,86,255:0.457031;128,255,83,255:0.460938;132,255,81,255:0.464844;136,255,78,255:0.46875;139,255,75,255:0.472656;143,255,73,255:0.476563;146,255,71,255:0.480469;150,254,68,255:0.484375;153,254,66,255:0.488281;156,254,64,255:0.492188;159,253,63,255:0.496094;161,253,61,255:0.5;164,252,60,255:0.503906;167,252,58,255:0.507813;169,251,57,255:0.511719;172,251,56,255:0.515625;175,250,55,255:0.519531;177,249,54,255:0.523438;180,248,54,255:0.527344;183,247,53,255:0.53125;185,246,53,255:0.535156;188,245,52,255:0.539063;190,244,52,255:0.542969;193,243,52,255:0.546875;195,241,52,255:0.550781;198,240,52,255:0.554688;200,239,52,255:0.558594;203,237,52,255:0.5625;205,236,52,255:0.566406;208,234,52,255:0.570313;210,233,53,255:0.574219;212,231,53,255:0.578125;215,229,53,255:0.582031;217,228,54,255:0.585938;219,226,54,255:0.589844;221,224,55,255:0.59375;223,223,55,255:0.597656;225,221,55,255:0.601563;227,219,56,255:0.605469;229,217,56,255:0.609375;231,215,57,255:0.613281;233,213,57,255:0.617188;235,211,57,255:0.621094;236,209,58,255:0.625;238,207,58,255:0.628906;239,205,58,255:0.632813;241,203,58,255:0.636719;242,201,58,255:0.640625;244,199,58,255:0.644531;245,197,58,255:0.648438;246,195,58,255:0.652344;247,193,58,255:0.65625;248,190,57,255:0.660156;249,188,57,255:0.664063;250,186,57,255:0.667969;251,184,56,255:0.671875;251,182,55,255:0.675781;252,179,54,255:0.679688;252,177,54,255:0.683594;253,174,53,255:0.6875;253,172,52,255:0.691406;254,169,51,255:0.695313;254,167,50,255:0.699219;254,164,49,255:0.703125;254,161,48,255:0.707031;254,158,47,255:0.710938;254,155,45,255:0.714844;254,153,44,255:0.71875;254,150,43,255:0.722656;254,147,42,255:0.726563;254,144,41,255:0.730469;253,141,39,255:0.734375;253,138,38,255:0.738281;252,135,37,255:0.742188;252,132,35,255:0.746094;251,129,34,255:0.75;251,126,33,255:0.753906;250,123,31,255:0.757813;249,120,30,255:0.761719;249,117,29,255:0.765625;248,114,28,255:0.769531;247,111,26,255:0.773438;246,108,25,255:0.777344;245,105,24,255:0.78125;244,102,23,255:0.785156;243,99,21,255:0.789063;242,96,20,255:0.792969;241,93,19,255:0.796875;240,91,18,255:0.800781;239,88,17,255:0.804688;237,85,16,255:0.808594;236,83,15,255:0.8125;235,80,14,255:0.816406;234,78,13,255:0.820313;232,75,12,255:0.824219;231,73,12,255:0.828125;229,71,11,255:0.832031;228,69,10,255:0.835938;226,67,10,255:0.839844;225,65,9,255:0.84375;223,63,8,255:0.847656;221,61,8,255:0.851563;220,59,7,255:0.855469;218,57,7,255:0.859375;216,55,6,255:0.863281;214,53,6,255:0.867188;212,51,5,255:0.871094;210,49,5,255:0.875;208,47,5,255:0.878906;206,45,4,255:0.882813;204,43,4,255:0.886719;202,42,4,255:0.890625;200,40,3,255:0.894531;197,38,3,255:0.898438;195,37,3,255:0.902344;193,35,2,255:0.90625;190,33,2,255:0.910156;188,32,2,255:0.914063;185,30,2,255:0.917969;183,29,2,255:0.921875;180,27,1,255:0.925781;178,26,1,255:0.929688;175,24,1,255:0.933594;172,23,1,255:0.9375;169,22,1,255:0.941406;167,20,1,255:0.945313;164,19,1,255:0.949219;161,18,1,255:0.953125;158,16,1,255:0.957031;155,15,1,255:0.960938;152,14,1,255:0.964844;149,13,1,255:0.96875;146,11,1,255:0.972656;142,10,1,255:0.976563;139,9,2,255:0.980469;136,8,2,255:0.984375;133,7,2,255:0.988281;129,6,2,255"/>
          </colorramp>
          <item color="#30123b" value="-0.2" label="-0,2000" alpha="255"/>
          <item color="#321543" value="-0.19765622" label="-0,1977" alpha="255"/>
          <item color="#33184a" value="-0.1953125" label="-0,1953" alpha="255"/>
          <item color="#341b51" value="-0.19296872" label="-0,1930" alpha="255"/>
          <item color="#351e58" value="-0.190625" label="-0,1906" alpha="255"/>
          <item color="#36215f" value="-0.18828122" label="-0,1883" alpha="255"/>
          <item color="#372466" value="-0.1859375" label="-0,1859" alpha="255"/>
          <item color="#38276d" value="-0.18359372" label="-0,1836" alpha="255"/>
          <item color="#392a73" value="-0.18125" label="-0,1813" alpha="255"/>
          <item color="#3a2d79" value="-0.17890622" label="-0,1789" alpha="255"/>
          <item color="#3b2f80" value="-0.1765625" label="-0,1766" alpha="255"/>
          <item color="#3c3286" value="-0.17421872" label="-0,1742" alpha="255"/>
          <item color="#3d358b" value="-0.171875" label="-0,1719" alpha="255"/>
          <item color="#3e3891" value="-0.16953122" label="-0,1695" alpha="255"/>
          <item color="#3f3b97" value="-0.1671875" label="-0,1672" alpha="255"/>
          <item color="#3f3e9c" value="-0.16484372" label="-0,1648" alpha="255"/>
          <item color="#4040a2" value="-0.1625" label="-0,1625" alpha="255"/>
          <item color="#4143a7" value="-0.16015622" label="-0,1602" alpha="255"/>
          <item color="#4146ac" value="-0.1578125" label="-0,1578" alpha="255"/>
          <item color="#4249b1" value="-0.15546872" label="-0,1555" alpha="255"/>
          <item color="#424bb5" value="-0.153125" label="-0,1531" alpha="255"/>
          <item color="#434eba" value="-0.15078122" label="-0,1508" alpha="255"/>
          <item color="#4451bf" value="-0.1484375" label="-0,1484" alpha="255"/>
          <item color="#4454c3" value="-0.14609372" label="-0,1461" alpha="255"/>
          <item color="#4456c7" value="-0.14375" label="-0,1437" alpha="255"/>
          <item color="#4559cb" value="-0.14140622" label="-0,1414" alpha="255"/>
          <item color="#455ccf" value="-0.1390622" label="-0,1391" alpha="255"/>
          <item color="#455ed3" value="-0.1367186" label="-0,1367" alpha="255"/>
          <item color="#4661d6" value="-0.134375" label="-0,1344" alpha="255"/>
          <item color="#4664da" value="-0.1320314" label="-0,1320" alpha="255"/>
          <item color="#4666dd" value="-0.1296872" label="-0,1297" alpha="255"/>
          <item color="#4669e0" value="-0.1273436" label="-0,1273" alpha="255"/>
          <item color="#466be3" value="-0.125" label="-0,1250" alpha="255"/>
          <item color="#476ee6" value="-0.1226564" label="-0,1227" alpha="255"/>
          <item color="#4771e9" value="-0.1203122" label="-0,1203" alpha="255"/>
          <item color="#4773eb" value="-0.1179686" label="-0,1180" alpha="255"/>
          <item color="#4776ee" value="-0.115625" label="-0,1156" alpha="255"/>
          <item color="#4778f0" value="-0.1132814" label="-0,1133" alpha="255"/>
          <item color="#477bf2" value="-0.1109372" label="-0,1109" alpha="255"/>
          <item color="#467df4" value="-0.1085936" label="-0,1086" alpha="255"/>
          <item color="#4680f6" value="-0.10625" label="-0,1062" alpha="255"/>
          <item color="#4682f8" value="-0.1039064" label="-0,1039" alpha="255"/>
          <item color="#4685fa" value="-0.1015622" label="-0,1016" alpha="255"/>
          <item color="#4687fb" value="-0.0992186" label="-0,0992" alpha="255"/>
          <item color="#458afc" value="-0.096875" label="-0,0969" alpha="255"/>
          <item color="#458cfd" value="-0.0945314" label="-0,0945" alpha="255"/>
          <item color="#448ffe" value="-0.0921872" label="-0,0922" alpha="255"/>
          <item color="#4391fe" value="-0.0898436" label="-0,0898" alpha="255"/>
          <item color="#4294ff" value="-0.0875" label="-0,0875" alpha="255"/>
          <item color="#4196ff" value="-0.0851564" label="-0,0852" alpha="255"/>
          <item color="#4099ff" value="-0.0828122" label="-0,0828" alpha="255"/>
          <item color="#3e9bfe" value="-0.0804686" label="-0,0805" alpha="255"/>
          <item color="#3d9efe" value="-0.078125" label="-0,0781" alpha="255"/>
          <item color="#3ba0fd" value="-0.0757814" label="-0,0758" alpha="255"/>
          <item color="#3aa3fc" value="-0.0734372" label="-0,0734" alpha="255"/>
          <item color="#38a5fb" value="-0.0710936" label="-0,0711" alpha="255"/>
          <item color="#37a8fa" value="-0.06875" label="-0,0687" alpha="255"/>
          <item color="#35abf8" value="-0.0664064" label="-0,0664" alpha="255"/>
          <item color="#33adf7" value="-0.0640622" label="-0,0641" alpha="255"/>
          <item color="#31aff5" value="-0.0617186" label="-0,0617" alpha="255"/>
          <item color="#2fb2f4" value="-0.059375" label="-0,0594" alpha="255"/>
          <item color="#2eb4f2" value="-0.0570314" label="-0,0570" alpha="255"/>
          <item color="#2cb7f0" value="-0.0546872" label="-0,0547" alpha="255"/>
          <item color="#2ab9ee" value="-0.0523436" label="-0,0523" alpha="255"/>
          <item color="#28bceb" value="-0.05" label="-0,0500" alpha="255"/>
          <item color="#27bee9" value="-0.0476564" label="-0,0477" alpha="255"/>
          <item color="#25c0e7" value="-0.0453122" label="-0,0453" alpha="255"/>
          <item color="#23c3e4" value="-0.0429686" label="-0,0430" alpha="255"/>
          <item color="#22c5e2" value="-0.040625" label="-0,0406" alpha="255"/>
          <item color="#20c7df" value="-0.0382814" label="-0,0383" alpha="255"/>
          <item color="#1fc9dd" value="-0.0359372" label="-0,0359" alpha="255"/>
          <item color="#1ecbda" value="-0.0335936" label="-0,0336" alpha="255"/>
          <item color="#1ccdd8" value="-0.03125" label="-0,0313" alpha="255"/>
          <item color="#1bd0d5" value="-0.0289064" label="-0,0289" alpha="255"/>
          <item color="#1ad2d2" value="-0.0265622" label="-0,0266" alpha="255"/>
          <item color="#1ad4d0" value="-0.0242186" label="-0,0242" alpha="255"/>
          <item color="#19d5cd" value="-0.021875" label="-0,0219" alpha="255"/>
          <item color="#18d7ca" value="-0.0195314" label="-0,0195" alpha="255"/>
          <item color="#18d9c8" value="-0.0171872" label="-0,0172" alpha="255"/>
          <item color="#18dbc5" value="-0.0148436" label="-0,0148" alpha="255"/>
          <item color="#18ddc2" value="-0.0125" label="-0,0125" alpha="255"/>
          <item color="#18dec0" value="-0.0101564" label="-0,0102" alpha="255"/>
          <item color="#18e0bd" value="-0.00781219999999996" label="-0,0078" alpha="255"/>
          <item color="#19e2bb" value="-0.00546859999999999" label="-0,0055" alpha="255"/>
          <item color="#19e3b9" value="-0.00312499999999999" label="-0,0031" alpha="255"/>
          <item color="#1ae4b6" value="-0.00078139999999996" label="-0,0008" alpha="255"/>
          <item color="#1ce6b4" value="0.00156280000000003" label="0,0016" alpha="255"/>
          <item color="#1de7b2" value="0.0039064" label="0,0039" alpha="255"/>
          <item color="#1fe9af" value="0.00625000000000003" label="0,0063" alpha="255"/>
          <item color="#20eaac" value="0.00859360000000003" label="0,0086" alpha="255"/>
          <item color="#22ebaa" value="0.0109378" label="0,0109" alpha="255"/>
          <item color="#25eca7" value="0.0132814" label="0,0133" alpha="255"/>
          <item color="#27eea4" value="0.015625" label="0,0156" alpha="255"/>
          <item color="#2aefa1" value="0.0179686" label="0,0180" alpha="255"/>
          <item color="#2cf09e" value="0.0203128" label="0,0203" alpha="255"/>
          <item color="#2ff19b" value="0.0226564" label="0,0227" alpha="255"/>
          <item color="#32f298" value="0.025" label="0,0250" alpha="255"/>
          <item color="#35f394" value="0.0273436" label="0,0273" alpha="255"/>
          <item color="#38f491" value="0.0296878" label="0,0297" alpha="255"/>
          <item color="#3cf58e" value="0.0320314" label="0,0320" alpha="255"/>
          <item color="#3ff68a" value="0.034375" label="0,0344" alpha="255"/>
          <item color="#43f787" value="0.0367186" label="0,0367" alpha="255"/>
          <item color="#46f884" value="0.0390628" label="0,0391" alpha="255"/>
          <item color="#4af880" value="0.0414064" label="0,0414" alpha="255"/>
          <item color="#4ef97d" value="0.04375" label="0,0438" alpha="255"/>
          <item color="#52fa7a" value="0.0460936" label="0,0461" alpha="255"/>
          <item color="#55fa76" value="0.0484378" label="0,0484" alpha="255"/>
          <item color="#59fb73" value="0.0507814" label="0,0508" alpha="255"/>
          <item color="#5dfc6f" value="0.053125" label="0,0531" alpha="255"/>
          <item color="#61fc6c" value="0.0554686" label="0,0555" alpha="255"/>
          <item color="#65fd69" value="0.0578128000000001" label="0,0578" alpha="255"/>
          <item color="#69fd66" value="0.0601564" label="0,0602" alpha="255"/>
          <item color="#6dfe62" value="0.0625000000000001" label="0,0625" alpha="255"/>
          <item color="#71fe5f" value="0.0648436000000001" label="0,0648" alpha="255"/>
          <item color="#75fe5c" value="0.0671878" label="0,0672" alpha="255"/>
          <item color="#79fe59" value="0.0695314" label="0,0695" alpha="255"/>
          <item color="#7dff56" value="0.071875" label="0,0719" alpha="255"/>
          <item color="#80ff53" value="0.0742186" label="0,0742" alpha="255"/>
          <item color="#84ff51" value="0.0765628" label="0,0766" alpha="255"/>
          <item color="#88ff4e" value="0.0789064" label="0,0789" alpha="255"/>
          <item color="#8bff4b" value="0.08125" label="0,0813" alpha="255"/>
          <item color="#8fff49" value="0.0835936" label="0,0836" alpha="255"/>
          <item color="#92ff47" value="0.0859378000000001" label="0,0859" alpha="255"/>
          <item color="#96fe44" value="0.0882814" label="0,0883" alpha="255"/>
          <item color="#99fe42" value="0.090625" label="0,0906" alpha="255"/>
          <item color="#9cfe40" value="0.0929686000000001" label="0,0930" alpha="255"/>
          <item color="#9ffd3f" value="0.0953128" label="0,0953" alpha="255"/>
          <item color="#a1fd3d" value="0.0976564" label="0,0977" alpha="255"/>
          <item color="#a4fc3c" value="0.1" label="0,1000" alpha="255"/>
          <item color="#a7fc3a" value="0.1023436" label="0,1023" alpha="255"/>
          <item color="#a9fb39" value="0.1046878" label="0,1047" alpha="255"/>
          <item color="#acfb38" value="0.1070314" label="0,1070" alpha="255"/>
          <item color="#affa37" value="0.109375" label="0,1094" alpha="255"/>
          <item color="#b1f936" value="0.1117186" label="0,1117" alpha="255"/>
          <item color="#b4f836" value="0.1140628" label="0,1141" alpha="255"/>
          <item color="#b7f735" value="0.1164064" label="0,1164" alpha="255"/>
          <item color="#b9f635" value="0.11875" label="0,1188" alpha="255"/>
          <item color="#bcf534" value="0.1210936" label="0,1211" alpha="255"/>
          <item color="#bef434" value="0.1234378" label="0,1234" alpha="255"/>
          <item color="#c1f334" value="0.1257814" label="0,1258" alpha="255"/>
          <item color="#c3f134" value="0.128125" label="0,1281" alpha="255"/>
          <item color="#c6f034" value="0.1304686" label="0,1305" alpha="255"/>
          <item color="#c8ef34" value="0.1328128" label="0,1328" alpha="255"/>
          <item color="#cbed34" value="0.1351564" label="0,1352" alpha="255"/>
          <item color="#cdec34" value="0.1375" label="0,1375" alpha="255"/>
          <item color="#d0ea34" value="0.1398436" label="0,1398" alpha="255"/>
          <item color="#d2e935" value="0.1421878" label="0,1422" alpha="255"/>
          <item color="#d4e735" value="0.1445314" label="0,1445" alpha="255"/>
          <item color="#d7e535" value="0.146875" label="0,1469" alpha="255"/>
          <item color="#d9e436" value="0.1492186" label="0,1492" alpha="255"/>
          <item color="#dbe236" value="0.1515628" label="0,1516" alpha="255"/>
          <item color="#dde037" value="0.1539064" label="0,1539" alpha="255"/>
          <item color="#dfdf37" value="0.15625" label="0,1563" alpha="255"/>
          <item color="#e1dd37" value="0.1585936" label="0,1586" alpha="255"/>
          <item color="#e3db38" value="0.1609378" label="0,1609" alpha="255"/>
          <item color="#e5d938" value="0.1632814" label="0,1633" alpha="255"/>
          <item color="#e7d739" value="0.165625" label="0,1656" alpha="255"/>
          <item color="#e9d539" value="0.1679686" label="0,1680" alpha="255"/>
          <item color="#ebd339" value="0.1703128" label="0,1703" alpha="255"/>
          <item color="#ecd13a" value="0.1726564" label="0,1727" alpha="255"/>
          <item color="#eecf3a" value="0.175" label="0,1750" alpha="255"/>
          <item color="#efcd3a" value="0.1773436" label="0,1773" alpha="255"/>
          <item color="#f1cb3a" value="0.1796878" label="0,1797" alpha="255"/>
          <item color="#f2c93a" value="0.1820314" label="0,1820" alpha="255"/>
          <item color="#f4c73a" value="0.184375" label="0,1844" alpha="255"/>
          <item color="#f5c53a" value="0.1867186" label="0,1867" alpha="255"/>
          <item color="#f6c33a" value="0.1890628" label="0,1891" alpha="255"/>
          <item color="#f7c13a" value="0.1914064" label="0,1914" alpha="255"/>
          <item color="#f8be39" value="0.19375" label="0,1938" alpha="255"/>
          <item color="#f9bc39" value="0.1960936" label="0,1961" alpha="255"/>
          <item color="#faba39" value="0.1984378" label="0,1984" alpha="255"/>
          <item color="#fbb838" value="0.2007814" label="0,2008" alpha="255"/>
          <item color="#fbb637" value="0.203125" label="0,2031" alpha="255"/>
          <item color="#fcb336" value="0.2054686" label="0,2055" alpha="255"/>
          <item color="#fcb136" value="0.2078128" label="0,2078" alpha="255"/>
          <item color="#fdae35" value="0.2101564" label="0,2102" alpha="255"/>
          <item color="#fdac34" value="0.2125" label="0,2125" alpha="255"/>
          <item color="#fea933" value="0.2148436" label="0,2148" alpha="255"/>
          <item color="#fea732" value="0.2171878" label="0,2172" alpha="255"/>
          <item color="#fea431" value="0.2195314" label="0,2195" alpha="255"/>
          <item color="#fea130" value="0.221875" label="0,2219" alpha="255"/>
          <item color="#fe9e2f" value="0.2242186" label="0,2242" alpha="255"/>
          <item color="#fe9b2d" value="0.2265628" label="0,2266" alpha="255"/>
          <item color="#fe992c" value="0.2289064" label="0,2289" alpha="255"/>
          <item color="#fe962b" value="0.23125" label="0,2313" alpha="255"/>
          <item color="#fe932a" value="0.2335936" label="0,2336" alpha="255"/>
          <item color="#fe9029" value="0.2359378" label="0,2359" alpha="255"/>
          <item color="#fd8d27" value="0.2382814" label="0,2383" alpha="255"/>
          <item color="#fd8a26" value="0.240625" label="0,2406" alpha="255"/>
          <item color="#fc8725" value="0.2429686" label="0,2430" alpha="255"/>
          <item color="#fc8423" value="0.2453128" label="0,2453" alpha="255"/>
          <item color="#fb8122" value="0.2476564" label="0,2477" alpha="255"/>
          <item color="#fb7e21" value="0.25" label="0,2500" alpha="255"/>
          <item color="#fa7b1f" value="0.2523436" label="0,2523" alpha="255"/>
          <item color="#f9781e" value="0.2546878" label="0,2547" alpha="255"/>
          <item color="#f9751d" value="0.2570314" label="0,2570" alpha="255"/>
          <item color="#f8721c" value="0.259375" label="0,2594" alpha="255"/>
          <item color="#f76f1a" value="0.2617186" label="0,2617" alpha="255"/>
          <item color="#f66c19" value="0.2640628" label="0,2641" alpha="255"/>
          <item color="#f56918" value="0.2664064" label="0,2664" alpha="255"/>
          <item color="#f46617" value="0.26875" label="0,2688" alpha="255"/>
          <item color="#f36315" value="0.2710936" label="0,2711" alpha="255"/>
          <item color="#f26014" value="0.2734378" label="0,2734" alpha="255"/>
          <item color="#f15d13" value="0.2757814" label="0,2758" alpha="255"/>
          <item color="#f05b12" value="0.278125" label="0,2781" alpha="255"/>
          <item color="#ef5811" value="0.2804686" label="0,2805" alpha="255"/>
          <item color="#ed5510" value="0.2828128" label="0,2828" alpha="255"/>
          <item color="#ec530f" value="0.2851564" label="0,2852" alpha="255"/>
          <item color="#eb500e" value="0.2875" label="0,2875" alpha="255"/>
          <item color="#ea4e0d" value="0.2898436" label="0,2898" alpha="255"/>
          <item color="#e84b0c" value="0.2921878" label="0,2922" alpha="255"/>
          <item color="#e7490c" value="0.2945314" label="0,2945" alpha="255"/>
          <item color="#e5470b" value="0.296875" label="0,2969" alpha="255"/>
          <item color="#e4450a" value="0.2992186" label="0,2992" alpha="255"/>
          <item color="#e2430a" value="0.3015628" label="0,3016" alpha="255"/>
          <item color="#e14109" value="0.3039064" label="0,3039" alpha="255"/>
          <item color="#df3f08" value="0.30625" label="0,3063" alpha="255"/>
          <item color="#dd3d08" value="0.3085936" label="0,3086" alpha="255"/>
          <item color="#dc3b07" value="0.3109378" label="0,3109" alpha="255"/>
          <item color="#da3907" value="0.3132814" label="0,3133" alpha="255"/>
          <item color="#d83706" value="0.315625" label="0,3156" alpha="255"/>
          <item color="#d63506" value="0.3179686" label="0,3180" alpha="255"/>
          <item color="#d43305" value="0.3203128" label="0,3203" alpha="255"/>
          <item color="#d23105" value="0.3226564" label="0,3227" alpha="255"/>
          <item color="#d02f05" value="0.325" label="0,3250" alpha="255"/>
          <item color="#ce2d04" value="0.3273436" label="0,3273" alpha="255"/>
          <item color="#cc2b04" value="0.3296878" label="0,3297" alpha="255"/>
          <item color="#ca2a04" value="0.3320314" label="0,3320" alpha="255"/>
          <item color="#c82803" value="0.334375" label="0,3344" alpha="255"/>
          <item color="#c52603" value="0.3367186" label="0,3367" alpha="255"/>
          <item color="#c32503" value="0.3390628" label="0,3391" alpha="255"/>
          <item color="#c12302" value="0.3414064" label="0,3414" alpha="255"/>
          <item color="#be2102" value="0.34375" label="0,3438" alpha="255"/>
          <item color="#bc2002" value="0.3460936" label="0,3461" alpha="255"/>
          <item color="#b91e02" value="0.3484378" label="0,3484" alpha="255"/>
          <item color="#b71d02" value="0.3507814" label="0,3508" alpha="255"/>
          <item color="#b41b01" value="0.353125" label="0,3531" alpha="255"/>
          <item color="#b21a01" value="0.3554686" label="0,3555" alpha="255"/>
          <item color="#af1801" value="0.3578128" label="0,3578" alpha="255"/>
          <item color="#ac1701" value="0.3601564" label="0,3602" alpha="255"/>
          <item color="#a91601" value="0.3625" label="0,3625" alpha="255"/>
          <item color="#a71401" value="0.3648436" label="0,3648" alpha="255"/>
          <item color="#a41301" value="0.3671878" label="0,3672" alpha="255"/>
          <item color="#a11201" value="0.3695314" label="0,3695" alpha="255"/>
          <item color="#9e1001" value="0.371875" label="0,3719" alpha="255"/>
          <item color="#9b0f01" value="0.3742186" label="0,3742" alpha="255"/>
          <item color="#980e01" value="0.3765628" label="0,3766" alpha="255"/>
          <item color="#950d01" value="0.3789064" label="0,3789" alpha="255"/>
          <item color="#920b01" value="0.38125" label="0,3813" alpha="255"/>
          <item color="#8e0a01" value="0.3835936" label="0,3836" alpha="255"/>
          <item color="#8b0902" value="0.3859378" label="0,3859" alpha="255"/>
          <item color="#880802" value="0.3882814" label="0,3883" alpha="255"/>
          <item color="#850702" value="0.390625" label="0,3906" alpha="255"/>
          <item color="#810602" value="0.3929686" label="0,3930" alpha="255"/>
          <item color="#7a0403" value="0.4" label="0,4000" alpha="255"/>
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
