require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmFichaRPGmeister1_svg()
    local obj = GUI.fromHandle(_obj_newObject("form"));
    local self = obj;
    local sheet = nil;

    rawset(obj, "_oldSetNodeObjectFunction", rawget(obj, "setNodeObject"));

    function obj:setNodeObject(nodeObject)
        sheet = nodeObject;
        self.sheet = nodeObject;
        self:_oldSetNodeObjectFunction(nodeObject);
    end;

    function obj:setNodeDatabase(nodeObject)
        self:setNodeObject(nodeObject);
    end;

    _gui_assignInitialParentForForm(obj.handle);
    obj:beginUpdate();
    obj:setName("frmFichaRPGmeister1_svg");
    obj:setAlign("client");
    obj:setTheme("dark");
    obj:setMargins({top=1});

    obj.scrollBox1 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj);
    obj.scrollBox1:setAlign("client");
    obj.scrollBox1:setName("scrollBox1");

    obj.popAtributo = GUI.fromHandle(_obj_newObject("popup"));
    obj.popAtributo:setParent(obj.scrollBox1);
    obj.popAtributo:setName("popAtributo");
    obj.popAtributo:setWidth(820);
    obj.popAtributo:setHeight(170);
    obj.popAtributo:setBackOpacity(0.4);
    lfm_setPropAsString(obj.popAtributo, "autoScopeNode",  "false");

    obj.flowLayout1 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout1:setParent(obj.popAtributo);
    obj.flowLayout1:setAlign("top");
    obj.flowLayout1:setAutoHeight(true);
    obj.flowLayout1:setMaxControlsPerLine(13);
    obj.flowLayout1:setMargins({bottom=4});
    obj.flowLayout1:setHorzAlign("center");
    obj.flowLayout1:setName("flowLayout1");

    obj.flowPart1 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart1:setParent(obj.flowLayout1);
    obj.flowPart1:setMinWidth(50);
    obj.flowPart1:setMaxWidth(50);
    obj.flowPart1:setHeight(15);
    obj.flowPart1:setName("flowPart1");

    obj.label1 = GUI.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.flowPart1);
    obj.label1:setAlign("top");
    obj.label1:setFontSize(10);
    obj.label1:setText("Inicial");
    obj.label1:setHorzTextAlign("center");
    obj.label1:setWordWrap(true);
    obj.label1:setTextTrimming("none");
    obj.label1:setAutoSize(true);
    obj.label1:setName("label1");

    obj.flowPart2 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart2:setParent(obj.flowLayout1);
    obj.flowPart2:setMinWidth(50);
    obj.flowPart2:setMaxWidth(50);
    obj.flowPart2:setHeight(15);
    obj.flowPart2:setName("flowPart2");

    obj.label2 = GUI.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.flowPart2);
    obj.label2:setAlign("top");
    obj.label2:setFontSize(10);
    obj.label2:setText("Raça");
    obj.label2:setHorzTextAlign("center");
    obj.label2:setWordWrap(true);
    obj.label2:setTextTrimming("none");
    obj.label2:setAutoSize(true);
    obj.label2:setName("label2");

    obj.flowPart3 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart3:setParent(obj.flowLayout1);
    obj.flowPart3:setMinWidth(50);
    obj.flowPart3:setMaxWidth(50);
    obj.flowPart3:setHeight(15);
    obj.flowPart3:setName("flowPart3");

    obj.label3 = GUI.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj.flowPart3);
    obj.label3:setAlign("top");
    obj.label3:setFontSize(10);
    obj.label3:setText("NEP");
    obj.label3:setHorzTextAlign("center");
    obj.label3:setWordWrap(true);
    obj.label3:setTextTrimming("none");
    obj.label3:setAutoSize(true);
    obj.label3:setName("label3");

    obj.flowPart4 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart4:setParent(obj.flowLayout1);
    obj.flowPart4:setMinWidth(50);
    obj.flowPart4:setMaxWidth(50);
    obj.flowPart4:setHeight(15);
    obj.flowPart4:setName("flowPart4");

    obj.label4 = GUI.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj.flowPart4);
    obj.label4:setAlign("top");
    obj.label4:setFontSize(10);
    obj.label4:setText("Inerente");
    obj.label4:setHorzTextAlign("center");
    obj.label4:setWordWrap(true);
    obj.label4:setTextTrimming("none");
    obj.label4:setAutoSize(true);
    obj.label4:setName("label4");

    obj.flowPart5 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart5:setParent(obj.flowLayout1);
    obj.flowPart5:setMinWidth(50);
    obj.flowPart5:setMaxWidth(50);
    obj.flowPart5:setHeight(15);
    obj.flowPart5:setName("flowPart5");

    obj.label5 = GUI.fromHandle(_obj_newObject("label"));
    obj.label5:setParent(obj.flowPart5);
    obj.label5:setAlign("top");
    obj.label5:setFontSize(10);
    obj.label5:setText("Tamanho");
    obj.label5:setHorzTextAlign("center");
    obj.label5:setWordWrap(true);
    obj.label5:setTextTrimming("none");
    obj.label5:setAutoSize(true);
    obj.label5:setName("label5");

    obj.flowPart6 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart6:setParent(obj.flowLayout1);
    obj.flowPart6:setMinWidth(50);
    obj.flowPart6:setMaxWidth(50);
    obj.flowPart6:setHeight(15);
    obj.flowPart6:setName("flowPart6");

    obj.label6 = GUI.fromHandle(_obj_newObject("label"));
    obj.label6:setParent(obj.flowPart6);
    obj.label6:setAlign("top");
    obj.label6:setFontSize(10);
    obj.label6:setText("Outros");
    obj.label6:setHorzTextAlign("center");
    obj.label6:setWordWrap(true);
    obj.label6:setTextTrimming("none");
    obj.label6:setAutoSize(true);
    obj.label6:setName("label6");

    obj.flowPart7 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart7:setParent(obj.flowLayout1);
    obj.flowPart7:setMinWidth(20);
    obj.flowPart7:setMaxWidth(20);
    obj.flowPart7:setHeight(15);
    obj.flowPart7:setName("flowPart7");

    obj.flowPart8 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart8:setParent(obj.flowLayout1);
    obj.flowPart8:setMinWidth(50);
    obj.flowPart8:setMaxWidth(75);
    obj.flowPart8:setHeight(15);
    obj.flowPart8:setName("flowPart8");

    obj.checkBox1 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox1:setParent(obj.flowPart8);
    obj.checkBox1:setAlign("client");
    obj.checkBox1:setField("isMelhoriaActive");
    obj.checkBox1:setText("Melhoria");
    obj.checkBox1:setHorzTextAlign("center");
    obj.checkBox1:setFontSize(10);
    obj.checkBox1:setName("checkBox1");

    obj.flowPart9 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart9:setParent(obj.flowLayout1);
    obj.flowPart9:setMinWidth(50);
    obj.flowPart9:setMaxWidth(75);
    obj.flowPart9:setHeight(15);
    obj.flowPart9:setName("flowPart9");

    obj.checkBox2 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox2:setParent(obj.flowPart9);
    obj.checkBox2:setAlign("client");
    obj.checkBox2:setField("isDnTempActive");
    obj.checkBox2:setText("Dn Temp.");
    obj.checkBox2:setHorzTextAlign("center");
    obj.checkBox2:setFontSize(10);
    obj.checkBox2:setName("checkBox2");

    obj.flowPart10 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart10:setParent(obj.flowLayout1);
    obj.flowPart10:setMinWidth(50);
    obj.flowPart10:setMaxWidth(75);
    obj.flowPart10:setHeight(15);
    obj.flowPart10:setName("flowPart10");

    obj.checkBox3 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox3:setParent(obj.flowPart10);
    obj.checkBox3:setAlign("client");
    obj.checkBox3:setField("isDnPermActive");
    obj.checkBox3:setText("Dn Perm.");
    obj.checkBox3:setHorzTextAlign("center");
    obj.checkBox3:setFontSize(10);
    obj.checkBox3:setName("checkBox3");

    obj.flowPart11 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart11:setParent(obj.flowLayout1);
    obj.flowPart11:setMinWidth(50);
    obj.flowPart11:setMaxWidth(75);
    obj.flowPart11:setHeight(15);
    obj.flowPart11:setName("flowPart11");

    obj.checkBox4 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox4:setParent(obj.flowPart11);
    obj.checkBox4:setAlign("client");
    obj.checkBox4:setField("isTempActive");
    obj.checkBox4:setText("Temp.");
    obj.checkBox4:setHorzTextAlign("center");
    obj.checkBox4:setFontSize(10);
    obj.checkBox4:setName("checkBox4");

    obj.flowPart12 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart12:setParent(obj.flowLayout1);
    obj.flowPart12:setMinWidth(50);
    obj.flowPart12:setMaxWidth(75);
    obj.flowPart12:setHeight(15);
    obj.flowPart12:setName("flowPart12");

    obj.checkBox5 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox5:setParent(obj.flowPart12);
    obj.checkBox5:setAlign("client");
    obj.checkBox5:setField("isClasseActive");
    obj.checkBox5:setText("Classe");
    obj.checkBox5:setHorzTextAlign("center");
    obj.checkBox5:setFontSize(10);
    obj.checkBox5:setName("checkBox5");

    obj.flowPart13 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart13:setParent(obj.flowLayout1);
    obj.flowPart13:setMinWidth(50);
    obj.flowPart13:setMaxWidth(75);
    obj.flowPart13:setHeight(15);
    obj.flowPart13:setName("flowPart13");

    obj.checkBox6 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox6:setParent(obj.flowPart13);
    obj.checkBox6:setAlign("client");
    obj.checkBox6:setField("isMagiaActive");
    obj.checkBox6:setText("Magia");
    obj.checkBox6:setHorzTextAlign("center");
    obj.checkBox6:setFontSize(10);
    obj.checkBox6:setName("checkBox6");

    obj.flowLayout2 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout2:setParent(obj.popAtributo);
    obj.flowLayout2:setAlign("top");
    obj.flowLayout2:setAutoHeight(true);
    obj.flowLayout2:setMaxControlsPerLine(13);
    obj.flowLayout2:setMargins({bottom=4});
    obj.flowLayout2:setHorzAlign("center");
    obj.flowLayout2:setName("flowLayout2");

    obj.flowPart14 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart14:setParent(obj.flowLayout2);
    obj.flowPart14:setMinWidth(50);
    obj.flowPart14:setMaxWidth(50);
    obj.flowPart14:setHeight(20);
    obj.flowPart14:setName("flowPart14");

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.flowPart14);
    obj.edit1:setAlign("client");
    obj.edit1:setField("inicialFor");
    obj.edit1:setHorzTextAlign("center");
    obj.edit1:setFontSize(12);
    obj.edit1:setType("number");
    obj.edit1:setName("edit1");

    obj.flowPart15 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart15:setParent(obj.flowLayout2);
    obj.flowPart15:setMinWidth(50);
    obj.flowPart15:setMaxWidth(50);
    obj.flowPart15:setHeight(20);
    obj.flowPart15:setName("flowPart15");

    obj.edit2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.flowPart15);
    obj.edit2:setAlign("client");
    obj.edit2:setField("racaFor");
    obj.edit2:setHorzTextAlign("center");
    obj.edit2:setFontSize(12);
    obj.edit2:setType("number");
    obj.edit2:setName("edit2");

    obj.flowPart16 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart16:setParent(obj.flowLayout2);
    obj.flowPart16:setMinWidth(50);
    obj.flowPart16:setMaxWidth(50);
    obj.flowPart16:setHeight(20);
    obj.flowPart16:setName("flowPart16");

    obj.edit3 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.flowPart16);
    obj.edit3:setAlign("client");
    obj.edit3:setField("nepFor");
    obj.edit3:setHorzTextAlign("center");
    obj.edit3:setFontSize(12);
    obj.edit3:setType("number");
    obj.edit3:setName("edit3");

    obj.flowPart17 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart17:setParent(obj.flowLayout2);
    obj.flowPart17:setMinWidth(50);
    obj.flowPart17:setMaxWidth(50);
    obj.flowPart17:setHeight(20);
    obj.flowPart17:setName("flowPart17");

    obj.edit4 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.flowPart17);
    obj.edit4:setAlign("client");
    obj.edit4:setField("inerenteFor");
    obj.edit4:setHorzTextAlign("center");
    obj.edit4:setFontSize(12);
    obj.edit4:setType("number");
    obj.edit4:setName("edit4");

    obj.flowPart18 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart18:setParent(obj.flowLayout2);
    obj.flowPart18:setMinWidth(50);
    obj.flowPart18:setMaxWidth(50);
    obj.flowPart18:setHeight(20);
    obj.flowPart18:setName("flowPart18");

    obj.edit5 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.flowPart18);
    obj.edit5:setAlign("client");
    obj.edit5:setField("tamanhoFor");
    obj.edit5:setHorzTextAlign("center");
    obj.edit5:setFontSize(12);
    obj.edit5:setType("number");
    obj.edit5:setName("edit5");

    obj.flowPart19 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart19:setParent(obj.flowLayout2);
    obj.flowPart19:setMinWidth(50);
    obj.flowPart19:setMaxWidth(50);
    obj.flowPart19:setHeight(20);
    obj.flowPart19:setName("flowPart19");

    obj.edit6 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit6:setParent(obj.flowPart19);
    obj.edit6:setAlign("client");
    obj.edit6:setField("outrosFor");
    obj.edit6:setHorzTextAlign("center");
    obj.edit6:setFontSize(12);
    obj.edit6:setType("number");
    obj.edit6:setName("edit6");

    obj.flowPart20 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart20:setParent(obj.flowLayout2);
    obj.flowPart20:setMinWidth(20);
    obj.flowPart20:setMaxWidth(20);
    obj.flowPart20:setHeight(20);
    obj.flowPart20:setName("flowPart20");

    obj.flowPart21 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart21:setParent(obj.flowLayout2);
    obj.flowPart21:setMinWidth(50);
    obj.flowPart21:setMaxWidth(75);
    obj.flowPart21:setHeight(20);
    obj.flowPart21:setName("flowPart21");

    obj.edit7 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit7:setParent(obj.flowPart21);
    obj.edit7:setAlign("client");
    obj.edit7:setField("melhoriaFor");
    obj.edit7:setHorzTextAlign("center");
    obj.edit7:setFontSize(12);
    obj.edit7:setType("number");
    obj.edit7:setName("edit7");

    obj.flowPart22 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart22:setParent(obj.flowLayout2);
    obj.flowPart22:setMinWidth(50);
    obj.flowPart22:setMaxWidth(75);
    obj.flowPart22:setHeight(20);
    obj.flowPart22:setName("flowPart22");

    obj.edit8 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit8:setParent(obj.flowPart22);
    obj.edit8:setAlign("client");
    obj.edit8:setField("danoTempFor");
    obj.edit8:setHorzTextAlign("center");
    obj.edit8:setFontSize(12);
    obj.edit8:setType("number");
    obj.edit8:setName("edit8");

    obj.flowPart23 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart23:setParent(obj.flowLayout2);
    obj.flowPart23:setMinWidth(50);
    obj.flowPart23:setMaxWidth(75);
    obj.flowPart23:setHeight(20);
    obj.flowPart23:setName("flowPart23");

    obj.edit9 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit9:setParent(obj.flowPart23);
    obj.edit9:setAlign("client");
    obj.edit9:setField("danoPermFor");
    obj.edit9:setHorzTextAlign("center");
    obj.edit9:setFontSize(12);
    obj.edit9:setType("number");
    obj.edit9:setName("edit9");

    obj.flowPart24 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart24:setParent(obj.flowLayout2);
    obj.flowPart24:setMinWidth(50);
    obj.flowPart24:setMaxWidth(75);
    obj.flowPart24:setHeight(20);
    obj.flowPart24:setName("flowPart24");

    obj.edit10 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit10:setParent(obj.flowPart24);
    obj.edit10:setAlign("client");
    obj.edit10:setField("temporarioFor");
    obj.edit10:setHorzTextAlign("center");
    obj.edit10:setFontSize(12);
    obj.edit10:setType("number");
    obj.edit10:setName("edit10");

    obj.flowPart25 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart25:setParent(obj.flowLayout2);
    obj.flowPart25:setMinWidth(50);
    obj.flowPart25:setMaxWidth(75);
    obj.flowPart25:setHeight(20);
    obj.flowPart25:setName("flowPart25");

    obj.edit11 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit11:setParent(obj.flowPart25);
    obj.edit11:setAlign("client");
    obj.edit11:setField("magiaFor");
    obj.edit11:setHorzTextAlign("center");
    obj.edit11:setFontSize(12);
    obj.edit11:setType("number");
    obj.edit11:setName("edit11");

    obj.flowPart26 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart26:setParent(obj.flowLayout2);
    obj.flowPart26:setMinWidth(50);
    obj.flowPart26:setMaxWidth(75);
    obj.flowPart26:setHeight(20);
    obj.flowPart26:setName("flowPart26");

    obj.edit12 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit12:setParent(obj.flowPart26);
    obj.edit12:setAlign("client");
    obj.edit12:setField("classeFor");
    obj.edit12:setHorzTextAlign("center");
    obj.edit12:setFontSize(12);
    obj.edit12:setType("number");
    obj.edit12:setName("edit12");

    obj.dataLink1 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink1:setParent(obj.popAtributo);
    obj.dataLink1:setFields({'isMelhoriaActive', 'isDnTempActive', 'isDnPermActive', 'isTempActive', 'isClasseActive', 'isMagiaActive'});
    obj.dataLink1:setDefaultValues({'true', 'true', 'true', 'true', 'true', 'true'});
    obj.dataLink1:setName("dataLink1");

    obj.dataLink2 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink2:setParent(obj.popAtributo);
    obj.dataLink2:setFields({'inicialFor', 'racaFor', 'nepFor', 'inerenteFor', 'tamanhoFor', 'outrosFor', 'melhoriaFor', 'danoTempFor', 'danoPermFor', 'temporarioFor', 'magiaFor', 'classeFor', 'isMelhoriaActive', 'isDnTempActive', 'isDnPermActive', 'isTempActive', 'isClasseActive', 'isMagiaActive'});
    obj.dataLink2:setName("dataLink2");

    obj.flowLayout3 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout3:setParent(obj.popAtributo);
    obj.flowLayout3:setAlign("top");
    obj.flowLayout3:setAutoHeight(true);
    obj.flowLayout3:setMaxControlsPerLine(13);
    obj.flowLayout3:setMargins({bottom=4});
    obj.flowLayout3:setHorzAlign("center");
    obj.flowLayout3:setName("flowLayout3");

    obj.flowPart27 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart27:setParent(obj.flowLayout3);
    obj.flowPart27:setMinWidth(50);
    obj.flowPart27:setMaxWidth(50);
    obj.flowPart27:setHeight(20);
    obj.flowPart27:setName("flowPart27");

    obj.edit13 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit13:setParent(obj.flowPart27);
    obj.edit13:setAlign("client");
    obj.edit13:setField("inicialDes");
    obj.edit13:setHorzTextAlign("center");
    obj.edit13:setFontSize(12);
    obj.edit13:setType("number");
    obj.edit13:setName("edit13");

    obj.flowPart28 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart28:setParent(obj.flowLayout3);
    obj.flowPart28:setMinWidth(50);
    obj.flowPart28:setMaxWidth(50);
    obj.flowPart28:setHeight(20);
    obj.flowPart28:setName("flowPart28");

    obj.edit14 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit14:setParent(obj.flowPart28);
    obj.edit14:setAlign("client");
    obj.edit14:setField("racaDes");
    obj.edit14:setHorzTextAlign("center");
    obj.edit14:setFontSize(12);
    obj.edit14:setType("number");
    obj.edit14:setName("edit14");

    obj.flowPart29 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart29:setParent(obj.flowLayout3);
    obj.flowPart29:setMinWidth(50);
    obj.flowPart29:setMaxWidth(50);
    obj.flowPart29:setHeight(20);
    obj.flowPart29:setName("flowPart29");

    obj.edit15 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit15:setParent(obj.flowPart29);
    obj.edit15:setAlign("client");
    obj.edit15:setField("nepDes");
    obj.edit15:setHorzTextAlign("center");
    obj.edit15:setFontSize(12);
    obj.edit15:setType("number");
    obj.edit15:setName("edit15");

    obj.flowPart30 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart30:setParent(obj.flowLayout3);
    obj.flowPart30:setMinWidth(50);
    obj.flowPart30:setMaxWidth(50);
    obj.flowPart30:setHeight(20);
    obj.flowPart30:setName("flowPart30");

    obj.edit16 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit16:setParent(obj.flowPart30);
    obj.edit16:setAlign("client");
    obj.edit16:setField("inerenteDes");
    obj.edit16:setHorzTextAlign("center");
    obj.edit16:setFontSize(12);
    obj.edit16:setType("number");
    obj.edit16:setName("edit16");

    obj.flowPart31 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart31:setParent(obj.flowLayout3);
    obj.flowPart31:setMinWidth(50);
    obj.flowPart31:setMaxWidth(50);
    obj.flowPart31:setHeight(20);
    obj.flowPart31:setName("flowPart31");

    obj.edit17 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit17:setParent(obj.flowPart31);
    obj.edit17:setAlign("client");
    obj.edit17:setField("tamanhoDes");
    obj.edit17:setHorzTextAlign("center");
    obj.edit17:setFontSize(12);
    obj.edit17:setType("number");
    obj.edit17:setName("edit17");

    obj.flowPart32 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart32:setParent(obj.flowLayout3);
    obj.flowPart32:setMinWidth(50);
    obj.flowPart32:setMaxWidth(50);
    obj.flowPart32:setHeight(20);
    obj.flowPart32:setName("flowPart32");

    obj.edit18 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit18:setParent(obj.flowPart32);
    obj.edit18:setAlign("client");
    obj.edit18:setField("outrosDes");
    obj.edit18:setHorzTextAlign("center");
    obj.edit18:setFontSize(12);
    obj.edit18:setType("number");
    obj.edit18:setName("edit18");

    obj.flowPart33 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart33:setParent(obj.flowLayout3);
    obj.flowPart33:setMinWidth(20);
    obj.flowPart33:setMaxWidth(20);
    obj.flowPart33:setHeight(20);
    obj.flowPart33:setName("flowPart33");

    obj.flowPart34 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart34:setParent(obj.flowLayout3);
    obj.flowPart34:setMinWidth(50);
    obj.flowPart34:setMaxWidth(75);
    obj.flowPart34:setHeight(20);
    obj.flowPart34:setName("flowPart34");

    obj.edit19 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit19:setParent(obj.flowPart34);
    obj.edit19:setAlign("client");
    obj.edit19:setField("melhoriaDes");
    obj.edit19:setHorzTextAlign("center");
    obj.edit19:setFontSize(12);
    obj.edit19:setType("number");
    obj.edit19:setName("edit19");

    obj.flowPart35 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart35:setParent(obj.flowLayout3);
    obj.flowPart35:setMinWidth(50);
    obj.flowPart35:setMaxWidth(75);
    obj.flowPart35:setHeight(20);
    obj.flowPart35:setName("flowPart35");

    obj.edit20 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit20:setParent(obj.flowPart35);
    obj.edit20:setAlign("client");
    obj.edit20:setField("danoTempDes");
    obj.edit20:setHorzTextAlign("center");
    obj.edit20:setFontSize(12);
    obj.edit20:setType("number");
    obj.edit20:setName("edit20");

    obj.flowPart36 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart36:setParent(obj.flowLayout3);
    obj.flowPart36:setMinWidth(50);
    obj.flowPart36:setMaxWidth(75);
    obj.flowPart36:setHeight(20);
    obj.flowPart36:setName("flowPart36");

    obj.edit21 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit21:setParent(obj.flowPart36);
    obj.edit21:setAlign("client");
    obj.edit21:setField("danoPermDes");
    obj.edit21:setHorzTextAlign("center");
    obj.edit21:setFontSize(12);
    obj.edit21:setType("number");
    obj.edit21:setName("edit21");

    obj.flowPart37 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart37:setParent(obj.flowLayout3);
    obj.flowPart37:setMinWidth(50);
    obj.flowPart37:setMaxWidth(75);
    obj.flowPart37:setHeight(20);
    obj.flowPart37:setName("flowPart37");

    obj.edit22 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit22:setParent(obj.flowPart37);
    obj.edit22:setAlign("client");
    obj.edit22:setField("temporarioDes");
    obj.edit22:setHorzTextAlign("center");
    obj.edit22:setFontSize(12);
    obj.edit22:setType("number");
    obj.edit22:setName("edit22");

    obj.flowPart38 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart38:setParent(obj.flowLayout3);
    obj.flowPart38:setMinWidth(50);
    obj.flowPart38:setMaxWidth(75);
    obj.flowPart38:setHeight(20);
    obj.flowPart38:setName("flowPart38");

    obj.edit23 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit23:setParent(obj.flowPart38);
    obj.edit23:setAlign("client");
    obj.edit23:setField("magiaDes");
    obj.edit23:setHorzTextAlign("center");
    obj.edit23:setFontSize(12);
    obj.edit23:setType("number");
    obj.edit23:setName("edit23");

    obj.flowPart39 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart39:setParent(obj.flowLayout3);
    obj.flowPart39:setMinWidth(50);
    obj.flowPart39:setMaxWidth(75);
    obj.flowPart39:setHeight(20);
    obj.flowPart39:setName("flowPart39");

    obj.edit24 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit24:setParent(obj.flowPart39);
    obj.edit24:setAlign("client");
    obj.edit24:setField("classeDes");
    obj.edit24:setHorzTextAlign("center");
    obj.edit24:setFontSize(12);
    obj.edit24:setType("number");
    obj.edit24:setName("edit24");

    obj.dataLink3 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink3:setParent(obj.popAtributo);
    obj.dataLink3:setFields({'isMelhoriaActive', 'isDnTempActive', 'isDnPermActive', 'isTempActive', 'isClasseActive', 'isMagiaActive'});
    obj.dataLink3:setDefaultValues({'true', 'true', 'true', 'true', 'true', 'true'});
    obj.dataLink3:setName("dataLink3");

    obj.dataLink4 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink4:setParent(obj.popAtributo);
    obj.dataLink4:setFields({'inicialDes', 'racaDes', 'nepDes', 'inerenteDes', 'tamanhoDes', 'outrosDes', 'melhoriaDes', 'danoTempDes', 'danoPermDes', 'temporarioDes', 'magiaDes', 'classeDes', 'isMelhoriaActive', 'isDnTempActive', 'isDnPermActive', 'isTempActive', 'isClasseActive', 'isMagiaActive'});
    obj.dataLink4:setName("dataLink4");

    obj.flowLayout4 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout4:setParent(obj.popAtributo);
    obj.flowLayout4:setAlign("top");
    obj.flowLayout4:setAutoHeight(true);
    obj.flowLayout4:setMaxControlsPerLine(13);
    obj.flowLayout4:setMargins({bottom=4});
    obj.flowLayout4:setHorzAlign("center");
    obj.flowLayout4:setName("flowLayout4");

    obj.flowPart40 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart40:setParent(obj.flowLayout4);
    obj.flowPart40:setMinWidth(50);
    obj.flowPart40:setMaxWidth(50);
    obj.flowPart40:setHeight(20);
    obj.flowPart40:setName("flowPart40");

    obj.edit25 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit25:setParent(obj.flowPart40);
    obj.edit25:setAlign("client");
    obj.edit25:setField("inicialCon");
    obj.edit25:setHorzTextAlign("center");
    obj.edit25:setFontSize(12);
    obj.edit25:setType("number");
    obj.edit25:setName("edit25");

    obj.flowPart41 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart41:setParent(obj.flowLayout4);
    obj.flowPart41:setMinWidth(50);
    obj.flowPart41:setMaxWidth(50);
    obj.flowPart41:setHeight(20);
    obj.flowPart41:setName("flowPart41");

    obj.edit26 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit26:setParent(obj.flowPart41);
    obj.edit26:setAlign("client");
    obj.edit26:setField("racaCon");
    obj.edit26:setHorzTextAlign("center");
    obj.edit26:setFontSize(12);
    obj.edit26:setType("number");
    obj.edit26:setName("edit26");

    obj.flowPart42 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart42:setParent(obj.flowLayout4);
    obj.flowPart42:setMinWidth(50);
    obj.flowPart42:setMaxWidth(50);
    obj.flowPart42:setHeight(20);
    obj.flowPart42:setName("flowPart42");

    obj.edit27 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit27:setParent(obj.flowPart42);
    obj.edit27:setAlign("client");
    obj.edit27:setField("nepCon");
    obj.edit27:setHorzTextAlign("center");
    obj.edit27:setFontSize(12);
    obj.edit27:setType("number");
    obj.edit27:setName("edit27");

    obj.flowPart43 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart43:setParent(obj.flowLayout4);
    obj.flowPart43:setMinWidth(50);
    obj.flowPart43:setMaxWidth(50);
    obj.flowPart43:setHeight(20);
    obj.flowPart43:setName("flowPart43");

    obj.edit28 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit28:setParent(obj.flowPart43);
    obj.edit28:setAlign("client");
    obj.edit28:setField("inerenteCon");
    obj.edit28:setHorzTextAlign("center");
    obj.edit28:setFontSize(12);
    obj.edit28:setType("number");
    obj.edit28:setName("edit28");

    obj.flowPart44 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart44:setParent(obj.flowLayout4);
    obj.flowPart44:setMinWidth(50);
    obj.flowPart44:setMaxWidth(50);
    obj.flowPart44:setHeight(20);
    obj.flowPart44:setName("flowPart44");

    obj.edit29 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit29:setParent(obj.flowPart44);
    obj.edit29:setAlign("client");
    obj.edit29:setField("tamanhoCon");
    obj.edit29:setHorzTextAlign("center");
    obj.edit29:setFontSize(12);
    obj.edit29:setType("number");
    obj.edit29:setName("edit29");

    obj.flowPart45 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart45:setParent(obj.flowLayout4);
    obj.flowPart45:setMinWidth(50);
    obj.flowPart45:setMaxWidth(50);
    obj.flowPart45:setHeight(20);
    obj.flowPart45:setName("flowPart45");

    obj.edit30 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit30:setParent(obj.flowPart45);
    obj.edit30:setAlign("client");
    obj.edit30:setField("outrosCon");
    obj.edit30:setHorzTextAlign("center");
    obj.edit30:setFontSize(12);
    obj.edit30:setType("number");
    obj.edit30:setName("edit30");

    obj.flowPart46 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart46:setParent(obj.flowLayout4);
    obj.flowPart46:setMinWidth(20);
    obj.flowPart46:setMaxWidth(20);
    obj.flowPart46:setHeight(20);
    obj.flowPart46:setName("flowPart46");

    obj.flowPart47 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart47:setParent(obj.flowLayout4);
    obj.flowPart47:setMinWidth(50);
    obj.flowPart47:setMaxWidth(75);
    obj.flowPart47:setHeight(20);
    obj.flowPart47:setName("flowPart47");

    obj.edit31 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit31:setParent(obj.flowPart47);
    obj.edit31:setAlign("client");
    obj.edit31:setField("melhoriaCon");
    obj.edit31:setHorzTextAlign("center");
    obj.edit31:setFontSize(12);
    obj.edit31:setType("number");
    obj.edit31:setName("edit31");

    obj.flowPart48 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart48:setParent(obj.flowLayout4);
    obj.flowPart48:setMinWidth(50);
    obj.flowPart48:setMaxWidth(75);
    obj.flowPart48:setHeight(20);
    obj.flowPart48:setName("flowPart48");

    obj.edit32 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit32:setParent(obj.flowPart48);
    obj.edit32:setAlign("client");
    obj.edit32:setField("danoTempCon");
    obj.edit32:setHorzTextAlign("center");
    obj.edit32:setFontSize(12);
    obj.edit32:setType("number");
    obj.edit32:setName("edit32");

    obj.flowPart49 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart49:setParent(obj.flowLayout4);
    obj.flowPart49:setMinWidth(50);
    obj.flowPart49:setMaxWidth(75);
    obj.flowPart49:setHeight(20);
    obj.flowPart49:setName("flowPart49");

    obj.edit33 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit33:setParent(obj.flowPart49);
    obj.edit33:setAlign("client");
    obj.edit33:setField("danoPermCon");
    obj.edit33:setHorzTextAlign("center");
    obj.edit33:setFontSize(12);
    obj.edit33:setType("number");
    obj.edit33:setName("edit33");

    obj.flowPart50 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart50:setParent(obj.flowLayout4);
    obj.flowPart50:setMinWidth(50);
    obj.flowPart50:setMaxWidth(75);
    obj.flowPart50:setHeight(20);
    obj.flowPart50:setName("flowPart50");

    obj.edit34 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit34:setParent(obj.flowPart50);
    obj.edit34:setAlign("client");
    obj.edit34:setField("temporarioCon");
    obj.edit34:setHorzTextAlign("center");
    obj.edit34:setFontSize(12);
    obj.edit34:setType("number");
    obj.edit34:setName("edit34");

    obj.flowPart51 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart51:setParent(obj.flowLayout4);
    obj.flowPart51:setMinWidth(50);
    obj.flowPart51:setMaxWidth(75);
    obj.flowPart51:setHeight(20);
    obj.flowPart51:setName("flowPart51");

    obj.edit35 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit35:setParent(obj.flowPart51);
    obj.edit35:setAlign("client");
    obj.edit35:setField("magiaCon");
    obj.edit35:setHorzTextAlign("center");
    obj.edit35:setFontSize(12);
    obj.edit35:setType("number");
    obj.edit35:setName("edit35");

    obj.flowPart52 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart52:setParent(obj.flowLayout4);
    obj.flowPart52:setMinWidth(50);
    obj.flowPart52:setMaxWidth(75);
    obj.flowPart52:setHeight(20);
    obj.flowPart52:setName("flowPart52");

    obj.edit36 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit36:setParent(obj.flowPart52);
    obj.edit36:setAlign("client");
    obj.edit36:setField("classeCon");
    obj.edit36:setHorzTextAlign("center");
    obj.edit36:setFontSize(12);
    obj.edit36:setType("number");
    obj.edit36:setName("edit36");

    obj.dataLink5 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink5:setParent(obj.popAtributo);
    obj.dataLink5:setFields({'isMelhoriaActive', 'isDnTempActive', 'isDnPermActive', 'isTempActive', 'isClasseActive', 'isMagiaActive'});
    obj.dataLink5:setDefaultValues({'true', 'true', 'true', 'true', 'true', 'true'});
    obj.dataLink5:setName("dataLink5");

    obj.dataLink6 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink6:setParent(obj.popAtributo);
    obj.dataLink6:setFields({'inicialCon', 'racaCon', 'nepCon', 'inerenteCon', 'tamanhoCon', 'outrosCon', 'melhoriaCon', 'danoTempCon', 'danoPermCon', 'temporarioCon', 'magiaCon', 'classeCon', 'isMelhoriaActive', 'isDnTempActive', 'isDnPermActive', 'isTempActive', 'isClasseActive', 'isMagiaActive'});
    obj.dataLink6:setName("dataLink6");

    obj.flowLayout5 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout5:setParent(obj.popAtributo);
    obj.flowLayout5:setAlign("top");
    obj.flowLayout5:setAutoHeight(true);
    obj.flowLayout5:setMaxControlsPerLine(13);
    obj.flowLayout5:setMargins({bottom=4});
    obj.flowLayout5:setHorzAlign("center");
    obj.flowLayout5:setName("flowLayout5");

    obj.flowPart53 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart53:setParent(obj.flowLayout5);
    obj.flowPart53:setMinWidth(50);
    obj.flowPart53:setMaxWidth(50);
    obj.flowPart53:setHeight(20);
    obj.flowPart53:setName("flowPart53");

    obj.edit37 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit37:setParent(obj.flowPart53);
    obj.edit37:setAlign("client");
    obj.edit37:setField("inicialInt");
    obj.edit37:setHorzTextAlign("center");
    obj.edit37:setFontSize(12);
    obj.edit37:setType("number");
    obj.edit37:setName("edit37");

    obj.flowPart54 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart54:setParent(obj.flowLayout5);
    obj.flowPart54:setMinWidth(50);
    obj.flowPart54:setMaxWidth(50);
    obj.flowPart54:setHeight(20);
    obj.flowPart54:setName("flowPart54");

    obj.edit38 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit38:setParent(obj.flowPart54);
    obj.edit38:setAlign("client");
    obj.edit38:setField("racaInt");
    obj.edit38:setHorzTextAlign("center");
    obj.edit38:setFontSize(12);
    obj.edit38:setType("number");
    obj.edit38:setName("edit38");

    obj.flowPart55 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart55:setParent(obj.flowLayout5);
    obj.flowPart55:setMinWidth(50);
    obj.flowPart55:setMaxWidth(50);
    obj.flowPart55:setHeight(20);
    obj.flowPart55:setName("flowPart55");

    obj.edit39 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit39:setParent(obj.flowPart55);
    obj.edit39:setAlign("client");
    obj.edit39:setField("nepInt");
    obj.edit39:setHorzTextAlign("center");
    obj.edit39:setFontSize(12);
    obj.edit39:setType("number");
    obj.edit39:setName("edit39");

    obj.flowPart56 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart56:setParent(obj.flowLayout5);
    obj.flowPart56:setMinWidth(50);
    obj.flowPart56:setMaxWidth(50);
    obj.flowPart56:setHeight(20);
    obj.flowPart56:setName("flowPart56");

    obj.edit40 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit40:setParent(obj.flowPart56);
    obj.edit40:setAlign("client");
    obj.edit40:setField("inerenteInt");
    obj.edit40:setHorzTextAlign("center");
    obj.edit40:setFontSize(12);
    obj.edit40:setType("number");
    obj.edit40:setName("edit40");

    obj.flowPart57 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart57:setParent(obj.flowLayout5);
    obj.flowPart57:setMinWidth(50);
    obj.flowPart57:setMaxWidth(50);
    obj.flowPart57:setHeight(20);
    obj.flowPart57:setName("flowPart57");

    obj.edit41 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit41:setParent(obj.flowPart57);
    obj.edit41:setAlign("client");
    obj.edit41:setField("tamanhoInt");
    obj.edit41:setHorzTextAlign("center");
    obj.edit41:setFontSize(12);
    obj.edit41:setType("number");
    obj.edit41:setName("edit41");

    obj.flowPart58 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart58:setParent(obj.flowLayout5);
    obj.flowPart58:setMinWidth(50);
    obj.flowPart58:setMaxWidth(50);
    obj.flowPart58:setHeight(20);
    obj.flowPart58:setName("flowPart58");

    obj.edit42 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit42:setParent(obj.flowPart58);
    obj.edit42:setAlign("client");
    obj.edit42:setField("outrosInt");
    obj.edit42:setHorzTextAlign("center");
    obj.edit42:setFontSize(12);
    obj.edit42:setType("number");
    obj.edit42:setName("edit42");

    obj.flowPart59 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart59:setParent(obj.flowLayout5);
    obj.flowPart59:setMinWidth(20);
    obj.flowPart59:setMaxWidth(20);
    obj.flowPart59:setHeight(20);
    obj.flowPart59:setName("flowPart59");

    obj.flowPart60 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart60:setParent(obj.flowLayout5);
    obj.flowPart60:setMinWidth(50);
    obj.flowPart60:setMaxWidth(75);
    obj.flowPart60:setHeight(20);
    obj.flowPart60:setName("flowPart60");

    obj.edit43 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit43:setParent(obj.flowPart60);
    obj.edit43:setAlign("client");
    obj.edit43:setField("melhoriaInt");
    obj.edit43:setHorzTextAlign("center");
    obj.edit43:setFontSize(12);
    obj.edit43:setType("number");
    obj.edit43:setName("edit43");

    obj.flowPart61 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart61:setParent(obj.flowLayout5);
    obj.flowPart61:setMinWidth(50);
    obj.flowPart61:setMaxWidth(75);
    obj.flowPart61:setHeight(20);
    obj.flowPart61:setName("flowPart61");

    obj.edit44 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit44:setParent(obj.flowPart61);
    obj.edit44:setAlign("client");
    obj.edit44:setField("danoTempInt");
    obj.edit44:setHorzTextAlign("center");
    obj.edit44:setFontSize(12);
    obj.edit44:setType("number");
    obj.edit44:setName("edit44");

    obj.flowPart62 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart62:setParent(obj.flowLayout5);
    obj.flowPart62:setMinWidth(50);
    obj.flowPart62:setMaxWidth(75);
    obj.flowPart62:setHeight(20);
    obj.flowPart62:setName("flowPart62");

    obj.edit45 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit45:setParent(obj.flowPart62);
    obj.edit45:setAlign("client");
    obj.edit45:setField("danoPermInt");
    obj.edit45:setHorzTextAlign("center");
    obj.edit45:setFontSize(12);
    obj.edit45:setType("number");
    obj.edit45:setName("edit45");

    obj.flowPart63 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart63:setParent(obj.flowLayout5);
    obj.flowPart63:setMinWidth(50);
    obj.flowPart63:setMaxWidth(75);
    obj.flowPart63:setHeight(20);
    obj.flowPart63:setName("flowPart63");

    obj.edit46 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit46:setParent(obj.flowPart63);
    obj.edit46:setAlign("client");
    obj.edit46:setField("temporarioInt");
    obj.edit46:setHorzTextAlign("center");
    obj.edit46:setFontSize(12);
    obj.edit46:setType("number");
    obj.edit46:setName("edit46");

    obj.flowPart64 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart64:setParent(obj.flowLayout5);
    obj.flowPart64:setMinWidth(50);
    obj.flowPart64:setMaxWidth(75);
    obj.flowPart64:setHeight(20);
    obj.flowPart64:setName("flowPart64");

    obj.edit47 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit47:setParent(obj.flowPart64);
    obj.edit47:setAlign("client");
    obj.edit47:setField("magiaInt");
    obj.edit47:setHorzTextAlign("center");
    obj.edit47:setFontSize(12);
    obj.edit47:setType("number");
    obj.edit47:setName("edit47");

    obj.flowPart65 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart65:setParent(obj.flowLayout5);
    obj.flowPart65:setMinWidth(50);
    obj.flowPart65:setMaxWidth(75);
    obj.flowPart65:setHeight(20);
    obj.flowPart65:setName("flowPart65");

    obj.edit48 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit48:setParent(obj.flowPart65);
    obj.edit48:setAlign("client");
    obj.edit48:setField("classeInt");
    obj.edit48:setHorzTextAlign("center");
    obj.edit48:setFontSize(12);
    obj.edit48:setType("number");
    obj.edit48:setName("edit48");

    obj.dataLink7 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink7:setParent(obj.popAtributo);
    obj.dataLink7:setFields({'isMelhoriaActive', 'isDnTempActive', 'isDnPermActive', 'isTempActive', 'isClasseActive', 'isMagiaActive'});
    obj.dataLink7:setDefaultValues({'true', 'true', 'true', 'true', 'true', 'true'});
    obj.dataLink7:setName("dataLink7");

    obj.dataLink8 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink8:setParent(obj.popAtributo);
    obj.dataLink8:setFields({'inicialInt', 'racaInt', 'nepInt', 'inerenteInt', 'tamanhoInt', 'outrosInt', 'melhoriaInt', 'danoTempInt', 'danoPermInt', 'temporarioInt', 'magiaInt', 'classeInt', 'isMelhoriaActive', 'isDnTempActive', 'isDnPermActive', 'isTempActive', 'isClasseActive', 'isMagiaActive'});
    obj.dataLink8:setName("dataLink8");

    obj.flowLayout6 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout6:setParent(obj.popAtributo);
    obj.flowLayout6:setAlign("top");
    obj.flowLayout6:setAutoHeight(true);
    obj.flowLayout6:setMaxControlsPerLine(13);
    obj.flowLayout6:setMargins({bottom=4});
    obj.flowLayout6:setHorzAlign("center");
    obj.flowLayout6:setName("flowLayout6");

    obj.flowPart66 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart66:setParent(obj.flowLayout6);
    obj.flowPart66:setMinWidth(50);
    obj.flowPart66:setMaxWidth(50);
    obj.flowPart66:setHeight(20);
    obj.flowPart66:setName("flowPart66");

    obj.edit49 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit49:setParent(obj.flowPart66);
    obj.edit49:setAlign("client");
    obj.edit49:setField("inicialSab");
    obj.edit49:setHorzTextAlign("center");
    obj.edit49:setFontSize(12);
    obj.edit49:setType("number");
    obj.edit49:setName("edit49");

    obj.flowPart67 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart67:setParent(obj.flowLayout6);
    obj.flowPart67:setMinWidth(50);
    obj.flowPart67:setMaxWidth(50);
    obj.flowPart67:setHeight(20);
    obj.flowPart67:setName("flowPart67");

    obj.edit50 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit50:setParent(obj.flowPart67);
    obj.edit50:setAlign("client");
    obj.edit50:setField("racaSab");
    obj.edit50:setHorzTextAlign("center");
    obj.edit50:setFontSize(12);
    obj.edit50:setType("number");
    obj.edit50:setName("edit50");

    obj.flowPart68 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart68:setParent(obj.flowLayout6);
    obj.flowPart68:setMinWidth(50);
    obj.flowPart68:setMaxWidth(50);
    obj.flowPart68:setHeight(20);
    obj.flowPart68:setName("flowPart68");

    obj.edit51 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit51:setParent(obj.flowPart68);
    obj.edit51:setAlign("client");
    obj.edit51:setField("nepSab");
    obj.edit51:setHorzTextAlign("center");
    obj.edit51:setFontSize(12);
    obj.edit51:setType("number");
    obj.edit51:setName("edit51");

    obj.flowPart69 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart69:setParent(obj.flowLayout6);
    obj.flowPart69:setMinWidth(50);
    obj.flowPart69:setMaxWidth(50);
    obj.flowPart69:setHeight(20);
    obj.flowPart69:setName("flowPart69");

    obj.edit52 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit52:setParent(obj.flowPart69);
    obj.edit52:setAlign("client");
    obj.edit52:setField("inerenteSab");
    obj.edit52:setHorzTextAlign("center");
    obj.edit52:setFontSize(12);
    obj.edit52:setType("number");
    obj.edit52:setName("edit52");

    obj.flowPart70 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart70:setParent(obj.flowLayout6);
    obj.flowPart70:setMinWidth(50);
    obj.flowPart70:setMaxWidth(50);
    obj.flowPart70:setHeight(20);
    obj.flowPart70:setName("flowPart70");

    obj.edit53 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit53:setParent(obj.flowPart70);
    obj.edit53:setAlign("client");
    obj.edit53:setField("tamanhoSab");
    obj.edit53:setHorzTextAlign("center");
    obj.edit53:setFontSize(12);
    obj.edit53:setType("number");
    obj.edit53:setName("edit53");

    obj.flowPart71 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart71:setParent(obj.flowLayout6);
    obj.flowPart71:setMinWidth(50);
    obj.flowPart71:setMaxWidth(50);
    obj.flowPart71:setHeight(20);
    obj.flowPart71:setName("flowPart71");

    obj.edit54 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit54:setParent(obj.flowPart71);
    obj.edit54:setAlign("client");
    obj.edit54:setField("outrosSab");
    obj.edit54:setHorzTextAlign("center");
    obj.edit54:setFontSize(12);
    obj.edit54:setType("number");
    obj.edit54:setName("edit54");

    obj.flowPart72 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart72:setParent(obj.flowLayout6);
    obj.flowPart72:setMinWidth(20);
    obj.flowPart72:setMaxWidth(20);
    obj.flowPart72:setHeight(20);
    obj.flowPart72:setName("flowPart72");

    obj.flowPart73 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart73:setParent(obj.flowLayout6);
    obj.flowPart73:setMinWidth(50);
    obj.flowPart73:setMaxWidth(75);
    obj.flowPart73:setHeight(20);
    obj.flowPart73:setName("flowPart73");

    obj.edit55 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit55:setParent(obj.flowPart73);
    obj.edit55:setAlign("client");
    obj.edit55:setField("melhoriaSab");
    obj.edit55:setHorzTextAlign("center");
    obj.edit55:setFontSize(12);
    obj.edit55:setType("number");
    obj.edit55:setName("edit55");

    obj.flowPart74 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart74:setParent(obj.flowLayout6);
    obj.flowPart74:setMinWidth(50);
    obj.flowPart74:setMaxWidth(75);
    obj.flowPart74:setHeight(20);
    obj.flowPart74:setName("flowPart74");

    obj.edit56 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit56:setParent(obj.flowPart74);
    obj.edit56:setAlign("client");
    obj.edit56:setField("danoTempSab");
    obj.edit56:setHorzTextAlign("center");
    obj.edit56:setFontSize(12);
    obj.edit56:setType("number");
    obj.edit56:setName("edit56");

    obj.flowPart75 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart75:setParent(obj.flowLayout6);
    obj.flowPart75:setMinWidth(50);
    obj.flowPart75:setMaxWidth(75);
    obj.flowPart75:setHeight(20);
    obj.flowPart75:setName("flowPart75");

    obj.edit57 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit57:setParent(obj.flowPart75);
    obj.edit57:setAlign("client");
    obj.edit57:setField("danoPermSab");
    obj.edit57:setHorzTextAlign("center");
    obj.edit57:setFontSize(12);
    obj.edit57:setType("number");
    obj.edit57:setName("edit57");

    obj.flowPart76 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart76:setParent(obj.flowLayout6);
    obj.flowPart76:setMinWidth(50);
    obj.flowPart76:setMaxWidth(75);
    obj.flowPart76:setHeight(20);
    obj.flowPart76:setName("flowPart76");

    obj.edit58 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit58:setParent(obj.flowPart76);
    obj.edit58:setAlign("client");
    obj.edit58:setField("temporarioSab");
    obj.edit58:setHorzTextAlign("center");
    obj.edit58:setFontSize(12);
    obj.edit58:setType("number");
    obj.edit58:setName("edit58");

    obj.flowPart77 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart77:setParent(obj.flowLayout6);
    obj.flowPart77:setMinWidth(50);
    obj.flowPart77:setMaxWidth(75);
    obj.flowPart77:setHeight(20);
    obj.flowPart77:setName("flowPart77");

    obj.edit59 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit59:setParent(obj.flowPart77);
    obj.edit59:setAlign("client");
    obj.edit59:setField("magiaSab");
    obj.edit59:setHorzTextAlign("center");
    obj.edit59:setFontSize(12);
    obj.edit59:setType("number");
    obj.edit59:setName("edit59");

    obj.flowPart78 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart78:setParent(obj.flowLayout6);
    obj.flowPart78:setMinWidth(50);
    obj.flowPart78:setMaxWidth(75);
    obj.flowPart78:setHeight(20);
    obj.flowPart78:setName("flowPart78");

    obj.edit60 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit60:setParent(obj.flowPart78);
    obj.edit60:setAlign("client");
    obj.edit60:setField("classeSab");
    obj.edit60:setHorzTextAlign("center");
    obj.edit60:setFontSize(12);
    obj.edit60:setType("number");
    obj.edit60:setName("edit60");

    obj.dataLink9 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink9:setParent(obj.popAtributo);
    obj.dataLink9:setFields({'isMelhoriaActive', 'isDnTempActive', 'isDnPermActive', 'isTempActive', 'isClasseActive', 'isMagiaActive'});
    obj.dataLink9:setDefaultValues({'true', 'true', 'true', 'true', 'true', 'true'});
    obj.dataLink9:setName("dataLink9");

    obj.dataLink10 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink10:setParent(obj.popAtributo);
    obj.dataLink10:setFields({'inicialSab', 'racaSab', 'nepSab', 'inerenteSab', 'tamanhoSab', 'outrosSab', 'melhoriaSab', 'danoTempSab', 'danoPermSab', 'temporarioSab', 'magiaSab', 'classeSab', 'isMelhoriaActive', 'isDnTempActive', 'isDnPermActive', 'isTempActive', 'isClasseActive', 'isMagiaActive'});
    obj.dataLink10:setName("dataLink10");

    obj.flowLayout7 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout7:setParent(obj.popAtributo);
    obj.flowLayout7:setAlign("top");
    obj.flowLayout7:setAutoHeight(true);
    obj.flowLayout7:setMaxControlsPerLine(13);
    obj.flowLayout7:setMargins({bottom=4});
    obj.flowLayout7:setHorzAlign("center");
    obj.flowLayout7:setName("flowLayout7");

    obj.flowPart79 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart79:setParent(obj.flowLayout7);
    obj.flowPart79:setMinWidth(50);
    obj.flowPart79:setMaxWidth(50);
    obj.flowPart79:setHeight(20);
    obj.flowPart79:setName("flowPart79");

    obj.edit61 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit61:setParent(obj.flowPart79);
    obj.edit61:setAlign("client");
    obj.edit61:setField("inicialCar");
    obj.edit61:setHorzTextAlign("center");
    obj.edit61:setFontSize(12);
    obj.edit61:setType("number");
    obj.edit61:setName("edit61");

    obj.flowPart80 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart80:setParent(obj.flowLayout7);
    obj.flowPart80:setMinWidth(50);
    obj.flowPart80:setMaxWidth(50);
    obj.flowPart80:setHeight(20);
    obj.flowPart80:setName("flowPart80");

    obj.edit62 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit62:setParent(obj.flowPart80);
    obj.edit62:setAlign("client");
    obj.edit62:setField("racaCar");
    obj.edit62:setHorzTextAlign("center");
    obj.edit62:setFontSize(12);
    obj.edit62:setType("number");
    obj.edit62:setName("edit62");

    obj.flowPart81 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart81:setParent(obj.flowLayout7);
    obj.flowPart81:setMinWidth(50);
    obj.flowPart81:setMaxWidth(50);
    obj.flowPart81:setHeight(20);
    obj.flowPart81:setName("flowPart81");

    obj.edit63 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit63:setParent(obj.flowPart81);
    obj.edit63:setAlign("client");
    obj.edit63:setField("nepCar");
    obj.edit63:setHorzTextAlign("center");
    obj.edit63:setFontSize(12);
    obj.edit63:setType("number");
    obj.edit63:setName("edit63");

    obj.flowPart82 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart82:setParent(obj.flowLayout7);
    obj.flowPart82:setMinWidth(50);
    obj.flowPart82:setMaxWidth(50);
    obj.flowPart82:setHeight(20);
    obj.flowPart82:setName("flowPart82");

    obj.edit64 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit64:setParent(obj.flowPart82);
    obj.edit64:setAlign("client");
    obj.edit64:setField("inerenteCar");
    obj.edit64:setHorzTextAlign("center");
    obj.edit64:setFontSize(12);
    obj.edit64:setType("number");
    obj.edit64:setName("edit64");

    obj.flowPart83 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart83:setParent(obj.flowLayout7);
    obj.flowPart83:setMinWidth(50);
    obj.flowPart83:setMaxWidth(50);
    obj.flowPart83:setHeight(20);
    obj.flowPart83:setName("flowPart83");

    obj.edit65 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit65:setParent(obj.flowPart83);
    obj.edit65:setAlign("client");
    obj.edit65:setField("tamanhoCar");
    obj.edit65:setHorzTextAlign("center");
    obj.edit65:setFontSize(12);
    obj.edit65:setType("number");
    obj.edit65:setName("edit65");

    obj.flowPart84 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart84:setParent(obj.flowLayout7);
    obj.flowPart84:setMinWidth(50);
    obj.flowPart84:setMaxWidth(50);
    obj.flowPart84:setHeight(20);
    obj.flowPart84:setName("flowPart84");

    obj.edit66 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit66:setParent(obj.flowPart84);
    obj.edit66:setAlign("client");
    obj.edit66:setField("outrosCar");
    obj.edit66:setHorzTextAlign("center");
    obj.edit66:setFontSize(12);
    obj.edit66:setType("number");
    obj.edit66:setName("edit66");

    obj.flowPart85 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart85:setParent(obj.flowLayout7);
    obj.flowPart85:setMinWidth(20);
    obj.flowPart85:setMaxWidth(20);
    obj.flowPart85:setHeight(20);
    obj.flowPart85:setName("flowPart85");

    obj.flowPart86 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart86:setParent(obj.flowLayout7);
    obj.flowPart86:setMinWidth(50);
    obj.flowPart86:setMaxWidth(75);
    obj.flowPart86:setHeight(20);
    obj.flowPart86:setName("flowPart86");

    obj.edit67 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit67:setParent(obj.flowPart86);
    obj.edit67:setAlign("client");
    obj.edit67:setField("melhoriaCar");
    obj.edit67:setHorzTextAlign("center");
    obj.edit67:setFontSize(12);
    obj.edit67:setType("number");
    obj.edit67:setName("edit67");

    obj.flowPart87 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart87:setParent(obj.flowLayout7);
    obj.flowPart87:setMinWidth(50);
    obj.flowPart87:setMaxWidth(75);
    obj.flowPart87:setHeight(20);
    obj.flowPart87:setName("flowPart87");

    obj.edit68 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit68:setParent(obj.flowPart87);
    obj.edit68:setAlign("client");
    obj.edit68:setField("danoTempCar");
    obj.edit68:setHorzTextAlign("center");
    obj.edit68:setFontSize(12);
    obj.edit68:setType("number");
    obj.edit68:setName("edit68");

    obj.flowPart88 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart88:setParent(obj.flowLayout7);
    obj.flowPart88:setMinWidth(50);
    obj.flowPart88:setMaxWidth(75);
    obj.flowPart88:setHeight(20);
    obj.flowPart88:setName("flowPart88");

    obj.edit69 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit69:setParent(obj.flowPart88);
    obj.edit69:setAlign("client");
    obj.edit69:setField("danoPermCar");
    obj.edit69:setHorzTextAlign("center");
    obj.edit69:setFontSize(12);
    obj.edit69:setType("number");
    obj.edit69:setName("edit69");

    obj.flowPart89 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart89:setParent(obj.flowLayout7);
    obj.flowPart89:setMinWidth(50);
    obj.flowPart89:setMaxWidth(75);
    obj.flowPart89:setHeight(20);
    obj.flowPart89:setName("flowPart89");

    obj.edit70 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit70:setParent(obj.flowPart89);
    obj.edit70:setAlign("client");
    obj.edit70:setField("temporarioCar");
    obj.edit70:setHorzTextAlign("center");
    obj.edit70:setFontSize(12);
    obj.edit70:setType("number");
    obj.edit70:setName("edit70");

    obj.flowPart90 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart90:setParent(obj.flowLayout7);
    obj.flowPart90:setMinWidth(50);
    obj.flowPart90:setMaxWidth(75);
    obj.flowPart90:setHeight(20);
    obj.flowPart90:setName("flowPart90");

    obj.edit71 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit71:setParent(obj.flowPart90);
    obj.edit71:setAlign("client");
    obj.edit71:setField("magiaCar");
    obj.edit71:setHorzTextAlign("center");
    obj.edit71:setFontSize(12);
    obj.edit71:setType("number");
    obj.edit71:setName("edit71");

    obj.flowPart91 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart91:setParent(obj.flowLayout7);
    obj.flowPart91:setMinWidth(50);
    obj.flowPart91:setMaxWidth(75);
    obj.flowPart91:setHeight(20);
    obj.flowPart91:setName("flowPart91");

    obj.edit72 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit72:setParent(obj.flowPart91);
    obj.edit72:setAlign("client");
    obj.edit72:setField("classeCar");
    obj.edit72:setHorzTextAlign("center");
    obj.edit72:setFontSize(12);
    obj.edit72:setType("number");
    obj.edit72:setName("edit72");

    obj.dataLink11 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink11:setParent(obj.popAtributo);
    obj.dataLink11:setFields({'isMelhoriaActive', 'isDnTempActive', 'isDnPermActive', 'isTempActive', 'isClasseActive', 'isMagiaActive'});
    obj.dataLink11:setDefaultValues({'true', 'true', 'true', 'true', 'true', 'true'});
    obj.dataLink11:setName("dataLink11");

    obj.dataLink12 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink12:setParent(obj.popAtributo);
    obj.dataLink12:setFields({'inicialCar', 'racaCar', 'nepCar', 'inerenteCar', 'tamanhoCar', 'outrosCar', 'melhoriaCar', 'danoTempCar', 'danoPermCar', 'temporarioCar', 'magiaCar', 'classeCar', 'isMelhoriaActive', 'isDnTempActive', 'isDnPermActive', 'isTempActive', 'isClasseActive', 'isMagiaActive'});
    obj.dataLink12:setName("dataLink12");

    obj.popResistencia = GUI.fromHandle(_obj_newObject("popup"));
    obj.popResistencia:setParent(obj.scrollBox1);
    obj.popResistencia:setName("popResistencia");
    obj.popResistencia:setWidth(380);
    obj.popResistencia:setHeight(150);
    obj.popResistencia:setBackOpacity(0.4);
    lfm_setPropAsString(obj.popResistencia, "autoScopeNode",  "false");

    obj.flowLayout8 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout8:setParent(obj.popResistencia);
    obj.flowLayout8:setAlign("top");
    obj.flowLayout8:setAutoHeight(true);
    obj.flowLayout8:setMaxControlsPerLine(11);
    obj.flowLayout8:setMargins({bottom=4});
    obj.flowLayout8:setHorzAlign("center");
    obj.flowLayout8:setName("flowLayout8");

    obj.flowPart92 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart92:setParent(obj.flowLayout8);
    obj.flowPart92:setMinWidth(50);
    obj.flowPart92:setMaxWidth(50);
    obj.flowPart92:setHeight(15);
    obj.flowPart92:setName("flowPart92");

    obj.label7 = GUI.fromHandle(_obj_newObject("label"));
    obj.label7:setParent(obj.flowPart92);
    obj.label7:setAlign("top");
    obj.label7:setFontSize(10);
    obj.label7:setText("Base");
    obj.label7:setHorzTextAlign("center");
    obj.label7:setWordWrap(true);
    obj.label7:setTextTrimming("none");
    obj.label7:setAutoSize(true);
    obj.label7:setName("label7");

    obj.flowPart93 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart93:setParent(obj.flowLayout8);
    obj.flowPart93:setMinWidth(50);
    obj.flowPart93:setMaxWidth(50);
    obj.flowPart93:setHeight(15);
    obj.flowPart93:setName("flowPart93");

    obj.label8 = GUI.fromHandle(_obj_newObject("label"));
    obj.label8:setParent(obj.flowPart93);
    obj.label8:setAlign("top");
    obj.label8:setFontSize(10);
    obj.label8:setText("Atributo");
    obj.label8:setHorzTextAlign("center");
    obj.label8:setWordWrap(true);
    obj.label8:setTextTrimming("none");
    obj.label8:setAutoSize(true);
    obj.label8:setName("label8");

    obj.flowPart94 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart94:setParent(obj.flowLayout8);
    obj.flowPart94:setMinWidth(50);
    obj.flowPart94:setMaxWidth(50);
    obj.flowPart94:setHeight(15);
    obj.flowPart94:setName("flowPart94");

    obj.label9 = GUI.fromHandle(_obj_newObject("label"));
    obj.label9:setParent(obj.flowPart94);
    obj.label9:setAlign("top");
    obj.label9:setFontSize(10);
    obj.label9:setText("Magia");
    obj.label9:setHorzTextAlign("center");
    obj.label9:setWordWrap(true);
    obj.label9:setTextTrimming("none");
    obj.label9:setAutoSize(true);
    obj.label9:setName("label9");

    obj.flowPart95 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart95:setParent(obj.flowLayout8);
    obj.flowPart95:setMinWidth(50);
    obj.flowPart95:setMaxWidth(50);
    obj.flowPart95:setHeight(15);
    obj.flowPart95:setName("flowPart95");

    obj.label10 = GUI.fromHandle(_obj_newObject("label"));
    obj.label10:setParent(obj.flowPart95);
    obj.label10:setAlign("top");
    obj.label10:setFontSize(10);
    obj.label10:setText("Melhoria");
    obj.label10:setHorzTextAlign("center");
    obj.label10:setWordWrap(true);
    obj.label10:setTextTrimming("none");
    obj.label10:setAutoSize(true);
    obj.label10:setName("label10");

    obj.flowPart96 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart96:setParent(obj.flowLayout8);
    obj.flowPart96:setMinWidth(50);
    obj.flowPart96:setMaxWidth(50);
    obj.flowPart96:setHeight(15);
    obj.flowPart96:setName("flowPart96");

    obj.label11 = GUI.fromHandle(_obj_newObject("label"));
    obj.label11:setParent(obj.flowPart96);
    obj.label11:setAlign("top");
    obj.label11:setFontSize(10);
    obj.label11:setText("Temp.");
    obj.label11:setHorzTextAlign("center");
    obj.label11:setWordWrap(true);
    obj.label11:setTextTrimming("none");
    obj.label11:setAutoSize(true);
    obj.label11:setName("label11");

    obj.flowPart97 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart97:setParent(obj.flowLayout8);
    obj.flowPart97:setMinWidth(50);
    obj.flowPart97:setMaxWidth(50);
    obj.flowPart97:setHeight(15);
    obj.flowPart97:setName("flowPart97");

    obj.label12 = GUI.fromHandle(_obj_newObject("label"));
    obj.label12:setParent(obj.flowPart97);
    obj.label12:setAlign("top");
    obj.label12:setFontSize(10);
    obj.label12:setText("Outros");
    obj.label12:setHorzTextAlign("center");
    obj.label12:setWordWrap(true);
    obj.label12:setTextTrimming("none");
    obj.label12:setAutoSize(true);
    obj.label12:setName("label12");

    obj.flowPart98 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart98:setParent(obj.flowLayout8);
    obj.flowPart98:setMinWidth(50);
    obj.flowPart98:setMaxWidth(50);
    obj.flowPart98:setHeight(15);
    obj.flowPart98:setName("flowPart98");

    obj.label13 = GUI.fromHandle(_obj_newObject("label"));
    obj.label13:setParent(obj.flowPart98);
    obj.label13:setAlign("top");
    obj.label13:setFontSize(10);
    obj.label13:setText("");
    obj.label13:setHorzTextAlign("center");
    obj.label13:setWordWrap(true);
    obj.label13:setTextTrimming("none");
    obj.label13:setAutoSize(true);
    obj.label13:setName("label13");

    obj.flowLayout9 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout9:setParent(obj.popResistencia);
    obj.flowLayout9:setAlign("top");
    obj.flowLayout9:setAutoHeight(true);
    obj.flowLayout9:setMaxControlsPerLine(11);
    obj.flowLayout9:setMargins({bottom=4});
    obj.flowLayout9:setHorzAlign("center");
    obj.flowLayout9:setName("flowLayout9");

    obj.flowPart99 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart99:setParent(obj.flowLayout9);
    obj.flowPart99:setMinWidth(50);
    obj.flowPart99:setMaxWidth(50);
    obj.flowPart99:setHeight(20);
    obj.flowPart99:setName("flowPart99");

    obj.edit73 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit73:setParent(obj.flowPart99);
    obj.edit73:setAlign("client");
    obj.edit73:setField("baseFort");
    obj.edit73:setHorzTextAlign("center");
    obj.edit73:setFontSize(12);
    obj.edit73:setType("number");
    obj.edit73:setName("edit73");

    obj.flowPart100 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart100:setParent(obj.flowLayout9);
    obj.flowPart100:setMinWidth(50);
    obj.flowPart100:setMaxWidth(50);
    obj.flowPart100:setHeight(20);
    obj.flowPart100:setName("flowPart100");

    obj.rectangle1 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj.flowPart100);
    obj.rectangle1:setAlign("client");
    obj.rectangle1:setColor("black");
    obj.rectangle1:setStrokeColor("white");
    obj.rectangle1:setStrokeSize(1);
    obj.rectangle1:setName("rectangle1");

    obj.label14 = GUI.fromHandle(_obj_newObject("label"));
    obj.label14:setParent(obj.flowPart100);
    obj.label14:setAlign("client");
    obj.label14:setField("atrModFort");
    obj.label14:setHorzTextAlign("center");
    obj.label14:setFontSize(12);
    obj.label14:setName("label14");

    obj.flowPart101 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart101:setParent(obj.flowLayout9);
    obj.flowPart101:setMinWidth(50);
    obj.flowPart101:setMaxWidth(50);
    obj.flowPart101:setHeight(20);
    obj.flowPart101:setName("flowPart101");

    obj.edit74 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit74:setParent(obj.flowPart101);
    obj.edit74:setAlign("client");
    obj.edit74:setField("magiaFort");
    obj.edit74:setHorzTextAlign("center");
    obj.edit74:setFontSize(12);
    obj.edit74:setType("number");
    obj.edit74:setName("edit74");

    obj.flowPart102 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart102:setParent(obj.flowLayout9);
    obj.flowPart102:setMinWidth(50);
    obj.flowPart102:setMaxWidth(50);
    obj.flowPart102:setHeight(20);
    obj.flowPart102:setName("flowPart102");

    obj.edit75 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit75:setParent(obj.flowPart102);
    obj.edit75:setAlign("client");
    obj.edit75:setField("variavelFort");
    obj.edit75:setHorzTextAlign("center");
    obj.edit75:setFontSize(12);
    obj.edit75:setType("number");
    obj.edit75:setName("edit75");

    obj.flowPart103 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart103:setParent(obj.flowLayout9);
    obj.flowPart103:setMinWidth(50);
    obj.flowPart103:setMaxWidth(50);
    obj.flowPart103:setHeight(20);
    obj.flowPart103:setName("flowPart103");

    obj.edit76 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit76:setParent(obj.flowPart103);
    obj.edit76:setAlign("client");
    obj.edit76:setField("temporarioFort");
    obj.edit76:setHorzTextAlign("center");
    obj.edit76:setFontSize(12);
    obj.edit76:setType("number");
    obj.edit76:setName("edit76");

    obj.flowPart104 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart104:setParent(obj.flowLayout9);
    obj.flowPart104:setMinWidth(50);
    obj.flowPart104:setMaxWidth(50);
    obj.flowPart104:setHeight(20);
    obj.flowPart104:setName("flowPart104");

    obj.edit77 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit77:setParent(obj.flowPart104);
    obj.edit77:setAlign("client");
    obj.edit77:setField("outrosFort");
    obj.edit77:setHorzTextAlign("center");
    obj.edit77:setFontSize(12);
    obj.edit77:setType("number");
    obj.edit77:setName("edit77");

    obj.flowPart105 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart105:setParent(obj.flowLayout9);
    obj.flowPart105:setMinWidth(60);
    obj.flowPart105:setMaxWidth(60);
    obj.flowPart105:setHeight(20);
    obj.flowPart105:setName("flowPart105");

    obj.comboBox1 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox1:setParent(obj.flowPart105);
    obj.comboBox1:setAlign("client");
    obj.comboBox1:setFontColor("white");
    obj.comboBox1:setField("atrTrFort");
    obj.comboBox1:setItems({'FOR', 'DES', 'CON', 'INT', 'SAB', 'CAR', '-'});
    obj.comboBox1:setValues({'1', '2', '3', '4', '5', '6', '7'});
    obj.comboBox1:setName("comboBox1");

    obj.dataLink13 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink13:setParent(obj.popResistencia);
    obj.dataLink13:setFields({'baseFort', 'atrModFort', 'magiaFort', 'variavelFort', 'temporarioFort', 'outrosFort'});
    obj.dataLink13:setName("dataLink13");

    obj.flowLayout10 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout10:setParent(obj.popResistencia);
    obj.flowLayout10:setAlign("top");
    obj.flowLayout10:setAutoHeight(true);
    obj.flowLayout10:setMaxControlsPerLine(11);
    obj.flowLayout10:setMargins({bottom=4});
    obj.flowLayout10:setHorzAlign("center");
    obj.flowLayout10:setName("flowLayout10");

    obj.flowPart106 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart106:setParent(obj.flowLayout10);
    obj.flowPart106:setMinWidth(50);
    obj.flowPart106:setMaxWidth(50);
    obj.flowPart106:setHeight(20);
    obj.flowPart106:setName("flowPart106");

    obj.edit78 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit78:setParent(obj.flowPart106);
    obj.edit78:setAlign("client");
    obj.edit78:setField("baseRef");
    obj.edit78:setHorzTextAlign("center");
    obj.edit78:setFontSize(12);
    obj.edit78:setType("number");
    obj.edit78:setName("edit78");

    obj.flowPart107 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart107:setParent(obj.flowLayout10);
    obj.flowPart107:setMinWidth(50);
    obj.flowPart107:setMaxWidth(50);
    obj.flowPart107:setHeight(20);
    obj.flowPart107:setName("flowPart107");

    obj.rectangle2 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle2:setParent(obj.flowPart107);
    obj.rectangle2:setAlign("client");
    obj.rectangle2:setColor("black");
    obj.rectangle2:setStrokeColor("white");
    obj.rectangle2:setStrokeSize(1);
    obj.rectangle2:setName("rectangle2");

    obj.label15 = GUI.fromHandle(_obj_newObject("label"));
    obj.label15:setParent(obj.flowPart107);
    obj.label15:setAlign("client");
    obj.label15:setField("atrModRef");
    obj.label15:setHorzTextAlign("center");
    obj.label15:setFontSize(12);
    obj.label15:setName("label15");

    obj.flowPart108 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart108:setParent(obj.flowLayout10);
    obj.flowPart108:setMinWidth(50);
    obj.flowPart108:setMaxWidth(50);
    obj.flowPart108:setHeight(20);
    obj.flowPart108:setName("flowPart108");

    obj.edit79 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit79:setParent(obj.flowPart108);
    obj.edit79:setAlign("client");
    obj.edit79:setField("magiaRef");
    obj.edit79:setHorzTextAlign("center");
    obj.edit79:setFontSize(12);
    obj.edit79:setType("number");
    obj.edit79:setName("edit79");

    obj.flowPart109 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart109:setParent(obj.flowLayout10);
    obj.flowPart109:setMinWidth(50);
    obj.flowPart109:setMaxWidth(50);
    obj.flowPart109:setHeight(20);
    obj.flowPart109:setName("flowPart109");

    obj.edit80 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit80:setParent(obj.flowPart109);
    obj.edit80:setAlign("client");
    obj.edit80:setField("variavelRef");
    obj.edit80:setHorzTextAlign("center");
    obj.edit80:setFontSize(12);
    obj.edit80:setType("number");
    obj.edit80:setName("edit80");

    obj.flowPart110 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart110:setParent(obj.flowLayout10);
    obj.flowPart110:setMinWidth(50);
    obj.flowPart110:setMaxWidth(50);
    obj.flowPart110:setHeight(20);
    obj.flowPart110:setName("flowPart110");

    obj.edit81 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit81:setParent(obj.flowPart110);
    obj.edit81:setAlign("client");
    obj.edit81:setField("temporarioRef");
    obj.edit81:setHorzTextAlign("center");
    obj.edit81:setFontSize(12);
    obj.edit81:setType("number");
    obj.edit81:setName("edit81");

    obj.flowPart111 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart111:setParent(obj.flowLayout10);
    obj.flowPart111:setMinWidth(50);
    obj.flowPart111:setMaxWidth(50);
    obj.flowPart111:setHeight(20);
    obj.flowPart111:setName("flowPart111");

    obj.edit82 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit82:setParent(obj.flowPart111);
    obj.edit82:setAlign("client");
    obj.edit82:setField("outrosRef");
    obj.edit82:setHorzTextAlign("center");
    obj.edit82:setFontSize(12);
    obj.edit82:setType("number");
    obj.edit82:setName("edit82");

    obj.flowPart112 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart112:setParent(obj.flowLayout10);
    obj.flowPart112:setMinWidth(60);
    obj.flowPart112:setMaxWidth(60);
    obj.flowPart112:setHeight(20);
    obj.flowPart112:setName("flowPart112");

    obj.comboBox2 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox2:setParent(obj.flowPart112);
    obj.comboBox2:setAlign("client");
    obj.comboBox2:setFontColor("white");
    obj.comboBox2:setField("atrTrRef");
    obj.comboBox2:setItems({'FOR', 'DES', 'CON', 'INT', 'SAB', 'CAR', '-'});
    obj.comboBox2:setValues({'1', '2', '3', '4', '5', '6', '7'});
    obj.comboBox2:setName("comboBox2");

    obj.dataLink14 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink14:setParent(obj.popResistencia);
    obj.dataLink14:setFields({'baseRef', 'atrModRef', 'magiaRef', 'variavelRef', 'temporarioRef', 'outrosRef'});
    obj.dataLink14:setName("dataLink14");

    obj.flowLayout11 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout11:setParent(obj.popResistencia);
    obj.flowLayout11:setAlign("top");
    obj.flowLayout11:setAutoHeight(true);
    obj.flowLayout11:setMaxControlsPerLine(11);
    obj.flowLayout11:setMargins({bottom=4});
    obj.flowLayout11:setHorzAlign("center");
    obj.flowLayout11:setName("flowLayout11");

    obj.flowPart113 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart113:setParent(obj.flowLayout11);
    obj.flowPart113:setMinWidth(50);
    obj.flowPart113:setMaxWidth(50);
    obj.flowPart113:setHeight(20);
    obj.flowPart113:setName("flowPart113");

    obj.edit83 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit83:setParent(obj.flowPart113);
    obj.edit83:setAlign("client");
    obj.edit83:setField("baseVon");
    obj.edit83:setHorzTextAlign("center");
    obj.edit83:setFontSize(12);
    obj.edit83:setType("number");
    obj.edit83:setName("edit83");

    obj.flowPart114 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart114:setParent(obj.flowLayout11);
    obj.flowPart114:setMinWidth(50);
    obj.flowPart114:setMaxWidth(50);
    obj.flowPart114:setHeight(20);
    obj.flowPart114:setName("flowPart114");

    obj.rectangle3 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle3:setParent(obj.flowPart114);
    obj.rectangle3:setAlign("client");
    obj.rectangle3:setColor("black");
    obj.rectangle3:setStrokeColor("white");
    obj.rectangle3:setStrokeSize(1);
    obj.rectangle3:setName("rectangle3");

    obj.label16 = GUI.fromHandle(_obj_newObject("label"));
    obj.label16:setParent(obj.flowPart114);
    obj.label16:setAlign("client");
    obj.label16:setField("atrModVon");
    obj.label16:setHorzTextAlign("center");
    obj.label16:setFontSize(12);
    obj.label16:setName("label16");

    obj.flowPart115 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart115:setParent(obj.flowLayout11);
    obj.flowPart115:setMinWidth(50);
    obj.flowPart115:setMaxWidth(50);
    obj.flowPart115:setHeight(20);
    obj.flowPart115:setName("flowPart115");

    obj.edit84 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit84:setParent(obj.flowPart115);
    obj.edit84:setAlign("client");
    obj.edit84:setField("magiaVon");
    obj.edit84:setHorzTextAlign("center");
    obj.edit84:setFontSize(12);
    obj.edit84:setType("number");
    obj.edit84:setName("edit84");

    obj.flowPart116 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart116:setParent(obj.flowLayout11);
    obj.flowPart116:setMinWidth(50);
    obj.flowPart116:setMaxWidth(50);
    obj.flowPart116:setHeight(20);
    obj.flowPart116:setName("flowPart116");

    obj.edit85 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit85:setParent(obj.flowPart116);
    obj.edit85:setAlign("client");
    obj.edit85:setField("variavelVon");
    obj.edit85:setHorzTextAlign("center");
    obj.edit85:setFontSize(12);
    obj.edit85:setType("number");
    obj.edit85:setName("edit85");

    obj.flowPart117 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart117:setParent(obj.flowLayout11);
    obj.flowPart117:setMinWidth(50);
    obj.flowPart117:setMaxWidth(50);
    obj.flowPart117:setHeight(20);
    obj.flowPart117:setName("flowPart117");

    obj.edit86 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit86:setParent(obj.flowPart117);
    obj.edit86:setAlign("client");
    obj.edit86:setField("temporarioVon");
    obj.edit86:setHorzTextAlign("center");
    obj.edit86:setFontSize(12);
    obj.edit86:setType("number");
    obj.edit86:setName("edit86");

    obj.flowPart118 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart118:setParent(obj.flowLayout11);
    obj.flowPart118:setMinWidth(50);
    obj.flowPart118:setMaxWidth(50);
    obj.flowPart118:setHeight(20);
    obj.flowPart118:setName("flowPart118");

    obj.edit87 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit87:setParent(obj.flowPart118);
    obj.edit87:setAlign("client");
    obj.edit87:setField("outrosVon");
    obj.edit87:setHorzTextAlign("center");
    obj.edit87:setFontSize(12);
    obj.edit87:setType("number");
    obj.edit87:setName("edit87");

    obj.flowPart119 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart119:setParent(obj.flowLayout11);
    obj.flowPart119:setMinWidth(60);
    obj.flowPart119:setMaxWidth(60);
    obj.flowPart119:setHeight(20);
    obj.flowPart119:setName("flowPart119");

    obj.comboBox3 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox3:setParent(obj.flowPart119);
    obj.comboBox3:setAlign("client");
    obj.comboBox3:setFontColor("white");
    obj.comboBox3:setField("atrTrVon");
    obj.comboBox3:setItems({'FOR', 'DES', 'CON', 'INT', 'SAB', 'CAR', '-'});
    obj.comboBox3:setValues({'1', '2', '3', '4', '5', '6', '7'});
    obj.comboBox3:setName("comboBox3");

    obj.dataLink15 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink15:setParent(obj.popResistencia);
    obj.dataLink15:setFields({'baseVon', 'atrModVon', 'magiaVon', 'variavelVon', 'temporarioVon', 'outrosVon'});
    obj.dataLink15:setName("dataLink15");

    obj.textEditor1 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor1:setParent(obj.popResistencia);
    obj.textEditor1:setAlign("client");
    obj.textEditor1:setField("trCondicional");
    obj.textEditor1:setName("textEditor1");

    obj.popCA = GUI.fromHandle(_obj_newObject("popup"));
    obj.popCA:setParent(obj.scrollBox1);
    obj.popCA:setName("popCA");
    obj.popCA:setWidth(600);
    obj.popCA:setHeight(210);
    obj.popCA:setBackOpacity(0.4);
    lfm_setPropAsString(obj.popCA, "autoScopeNode",  "false");

    obj.flowLayout12 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout12:setParent(obj.popCA);
    obj.flowLayout12:setAlign("top");
    obj.flowLayout12:setAutoHeight(true);
    obj.flowLayout12:setMargins({bottom=4});
    obj.flowLayout12:setName("flowLayout12");

    obj.flowPart120 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart120:setParent(obj.flowLayout12);
    obj.flowPart120:setMinWidth(50);
    obj.flowPart120:setMaxWidth(50);
    obj.flowPart120:setHeight(15);
    obj.flowPart120:setName("flowPart120");

    obj.label17 = GUI.fromHandle(_obj_newObject("label"));
    obj.label17:setParent(obj.flowPart120);
    obj.label17:setAlign("top");
    obj.label17:setFontSize(10);
    obj.label17:setText("Armadura");
    obj.label17:setHorzTextAlign("center");
    obj.label17:setWordWrap(true);
    obj.label17:setTextTrimming("none");
    obj.label17:setAutoSize(true);
    obj.label17:setName("label17");

    obj.flowPart121 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart121:setParent(obj.flowLayout12);
    obj.flowPart121:setMinWidth(50);
    obj.flowPart121:setMaxWidth(50);
    obj.flowPart121:setHeight(20);
    obj.flowPart121:setName("flowPart121");

    obj.edit88 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit88:setParent(obj.flowPart121);
    obj.edit88:setAlign("client");
    obj.edit88:setField("armaduraCa");
    obj.edit88:setHorzTextAlign("center");
    obj.edit88:setFontSize(12);
    obj.edit88:setType("number");
    obj.edit88:setName("edit88");

    obj.flowPart122 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart122:setParent(obj.flowLayout12);
    obj.flowPart122:setMinWidth(140);
    obj.flowPart122:setMaxWidth(150);
    obj.flowPart122:setHeight(20);
    obj.flowPart122:setName("flowPart122");

    obj.edit89 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit89:setParent(obj.flowPart122);
    obj.edit89:setAlign("client");
    obj.edit89:setField("armaduraCa2");
    obj.edit89:setFontSize(12);
    obj.edit89:setName("edit89");

    obj.flowPart123 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart123:setParent(obj.flowLayout12);
    obj.flowPart123:setMinWidth(50);
    obj.flowPart123:setMaxWidth(60);
    obj.flowPart123:setHeight(20);
    obj.flowPart123:setName("flowPart123");

    obj.checkBox7 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox7:setParent(obj.flowPart123);
    obj.checkBox7:setField("armaduraCaSurp");
    obj.checkBox7:setText("Surpresa");
    obj.checkBox7:setFontSize(10);
    obj.checkBox7:setHeight(20);
    obj.checkBox7:setName("checkBox7");

    obj.flowPart124 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart124:setParent(obj.flowLayout12);
    obj.flowPart124:setMinWidth(50);
    obj.flowPart124:setMaxWidth(60);
    obj.flowPart124:setHeight(20);
    obj.flowPart124:setName("flowPart124");

    obj.checkBox8 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox8:setParent(obj.flowPart124);
    obj.checkBox8:setField("armaduraCaToque");
    obj.checkBox8:setText("Toque");
    obj.checkBox8:setFontSize(10);
    obj.checkBox8:setHeight(15);
    obj.checkBox8:setName("checkBox8");

    obj.flowPart125 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart125:setParent(obj.flowLayout12);
    obj.flowPart125:setMinWidth(10);
    obj.flowPart125:setMaxWidth(20);
    obj.flowPart125:setHeight(15);
    obj.flowPart125:setName("flowPart125");

    obj.flowPart126 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart126:setParent(obj.flowLayout12);
    obj.flowPart126:setMinWidth(50);
    obj.flowPart126:setMaxWidth(50);
    obj.flowPart126:setHeight(15);
    obj.flowPart126:setName("flowPart126");

    obj.label18 = GUI.fromHandle(_obj_newObject("label"));
    obj.label18:setParent(obj.flowPart126);
    obj.label18:setAlign("top");
    obj.label18:setFontSize(10);
    obj.label18:setText("Penalidade");
    obj.label18:setHorzTextAlign("center");
    obj.label18:setWordWrap(true);
    obj.label18:setTextTrimming("none");
    obj.label18:setAutoSize(true);
    obj.label18:setName("label18");

    obj.flowPart127 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart127:setParent(obj.flowLayout12);
    obj.flowPart127:setMinWidth(50);
    obj.flowPart127:setMaxWidth(50);
    obj.flowPart127:setHeight(20);
    obj.flowPart127:setName("flowPart127");

    obj.rectangle4 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle4:setParent(obj.flowPart127);
    obj.rectangle4:setAlign("client");
    obj.rectangle4:setColor("black");
    obj.rectangle4:setStrokeColor("white");
    obj.rectangle4:setStrokeSize(1);
    obj.rectangle4:setName("rectangle4");

    obj.label19 = GUI.fromHandle(_obj_newObject("label"));
    obj.label19:setParent(obj.flowPart127);
    obj.label19:setAlign("client");
    obj.label19:setField("equipamentoCorpoPen");
    obj.label19:setHorzTextAlign("center");
    obj.label19:setFontSize(12);
    obj.label19:setName("label19");

    obj.flowPart128 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart128:setParent(obj.flowLayout12);
    obj.flowPart128:setMinWidth(50);
    obj.flowPart128:setMaxWidth(50);
    obj.flowPart128:setHeight(15);
    obj.flowPart128:setName("flowPart128");

    obj.label20 = GUI.fromHandle(_obj_newObject("label"));
    obj.label20:setParent(obj.flowPart128);
    obj.label20:setAlign("top");
    obj.label20:setFontSize(10);
    obj.label20:setText("Falha");
    obj.label20:setHorzTextAlign("center");
    obj.label20:setWordWrap(true);
    obj.label20:setTextTrimming("none");
    obj.label20:setAutoSize(true);
    obj.label20:setName("label20");

    obj.flowPart129 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart129:setParent(obj.flowLayout12);
    obj.flowPart129:setMinWidth(50);
    obj.flowPart129:setMaxWidth(50);
    obj.flowPart129:setHeight(20);
    obj.flowPart129:setName("flowPart129");

    obj.rectangle5 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle5:setParent(obj.flowPart129);
    obj.rectangle5:setAlign("client");
    obj.rectangle5:setColor("black");
    obj.rectangle5:setStrokeColor("white");
    obj.rectangle5:setStrokeSize(1);
    obj.rectangle5:setName("rectangle5");

    obj.label21 = GUI.fromHandle(_obj_newObject("label"));
    obj.label21:setParent(obj.flowPart129);
    obj.label21:setAlign("client");
    obj.label21:setField("equipamentoCorpoFalha");
    obj.label21:setHorzTextAlign("center");
    obj.label21:setFontSize(12);
    obj.label21:setName("label21");

    obj.flowLineBreak1 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak1:setParent(obj.flowLayout12);
    obj.flowLineBreak1:setName("flowLineBreak1");

    obj.flowPart130 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart130:setParent(obj.flowLayout12);
    obj.flowPart130:setMinWidth(50);
    obj.flowPart130:setMaxWidth(50);
    obj.flowPart130:setHeight(15);
    obj.flowPart130:setName("flowPart130");

    obj.label22 = GUI.fromHandle(_obj_newObject("label"));
    obj.label22:setParent(obj.flowPart130);
    obj.label22:setAlign("top");
    obj.label22:setFontSize(10);
    obj.label22:setText("Escudo");
    obj.label22:setHorzTextAlign("center");
    obj.label22:setWordWrap(true);
    obj.label22:setTextTrimming("none");
    obj.label22:setAutoSize(true);
    obj.label22:setName("label22");

    obj.flowPart131 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart131:setParent(obj.flowLayout12);
    obj.flowPart131:setMinWidth(50);
    obj.flowPart131:setMaxWidth(50);
    obj.flowPart131:setHeight(20);
    obj.flowPart131:setName("flowPart131");

    obj.edit90 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit90:setParent(obj.flowPart131);
    obj.edit90:setAlign("client");
    obj.edit90:setField("escudoCa");
    obj.edit90:setHorzTextAlign("center");
    obj.edit90:setFontSize(12);
    obj.edit90:setType("number");
    obj.edit90:setName("edit90");

    obj.flowPart132 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart132:setParent(obj.flowLayout12);
    obj.flowPart132:setMinWidth(140);
    obj.flowPart132:setMaxWidth(150);
    obj.flowPart132:setHeight(20);
    obj.flowPart132:setName("flowPart132");

    obj.edit91 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit91:setParent(obj.flowPart132);
    obj.edit91:setAlign("client");
    obj.edit91:setField("escudoCa2");
    obj.edit91:setFontSize(12);
    obj.edit91:setName("edit91");

    obj.flowPart133 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart133:setParent(obj.flowLayout12);
    obj.flowPart133:setMinWidth(50);
    obj.flowPart133:setMaxWidth(60);
    obj.flowPart133:setHeight(20);
    obj.flowPart133:setName("flowPart133");

    obj.checkBox9 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox9:setParent(obj.flowPart133);
    obj.checkBox9:setField("escudoCaSurp");
    obj.checkBox9:setText("Surpresa");
    obj.checkBox9:setFontSize(10);
    obj.checkBox9:setHeight(20);
    obj.checkBox9:setName("checkBox9");

    obj.flowPart134 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart134:setParent(obj.flowLayout12);
    obj.flowPart134:setMinWidth(50);
    obj.flowPart134:setMaxWidth(60);
    obj.flowPart134:setHeight(20);
    obj.flowPart134:setName("flowPart134");

    obj.checkBox10 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox10:setParent(obj.flowPart134);
    obj.checkBox10:setField("escudoCaToque");
    obj.checkBox10:setText("Toque");
    obj.checkBox10:setFontSize(10);
    obj.checkBox10:setHeight(15);
    obj.checkBox10:setName("checkBox10");

    obj.flowPart135 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart135:setParent(obj.flowLayout12);
    obj.flowPart135:setMinWidth(10);
    obj.flowPart135:setMaxWidth(20);
    obj.flowPart135:setHeight(15);
    obj.flowPart135:setName("flowPart135");

    obj.flowPart136 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart136:setParent(obj.flowLayout12);
    obj.flowPart136:setMinWidth(50);
    obj.flowPart136:setMaxWidth(50);
    obj.flowPart136:setHeight(15);
    obj.flowPart136:setName("flowPart136");

    obj.label23 = GUI.fromHandle(_obj_newObject("label"));
    obj.label23:setParent(obj.flowPart136);
    obj.label23:setAlign("top");
    obj.label23:setFontSize(10);
    obj.label23:setText("Penalidade");
    obj.label23:setHorzTextAlign("center");
    obj.label23:setWordWrap(true);
    obj.label23:setTextTrimming("none");
    obj.label23:setAutoSize(true);
    obj.label23:setName("label23");

    obj.flowPart137 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart137:setParent(obj.flowLayout12);
    obj.flowPart137:setMinWidth(50);
    obj.flowPart137:setMaxWidth(50);
    obj.flowPart137:setHeight(20);
    obj.flowPart137:setName("flowPart137");

    obj.edit92 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit92:setParent(obj.flowPart137);
    obj.edit92:setAlign("client");
    obj.edit92:setField("escudoPen");
    obj.edit92:setHorzTextAlign("center");
    obj.edit92:setFontSize(12);
    obj.edit92:setType("number");
    obj.edit92:setName("edit92");

    obj.flowPart138 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart138:setParent(obj.flowLayout12);
    obj.flowPart138:setMinWidth(50);
    obj.flowPart138:setMaxWidth(50);
    obj.flowPart138:setHeight(15);
    obj.flowPart138:setName("flowPart138");

    obj.label24 = GUI.fromHandle(_obj_newObject("label"));
    obj.label24:setParent(obj.flowPart138);
    obj.label24:setAlign("top");
    obj.label24:setFontSize(10);
    obj.label24:setText("Falha");
    obj.label24:setHorzTextAlign("center");
    obj.label24:setWordWrap(true);
    obj.label24:setTextTrimming("none");
    obj.label24:setAutoSize(true);
    obj.label24:setName("label24");

    obj.flowPart139 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart139:setParent(obj.flowLayout12);
    obj.flowPart139:setMinWidth(50);
    obj.flowPart139:setMaxWidth(50);
    obj.flowPart139:setHeight(20);
    obj.flowPart139:setName("flowPart139");

    obj.edit93 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit93:setParent(obj.flowPart139);
    obj.edit93:setAlign("client");
    obj.edit93:setField("escudoFalha");
    obj.edit93:setHorzTextAlign("center");
    obj.edit93:setFontSize(12);
    obj.edit93:setType("number");
    obj.edit93:setName("edit93");

    obj.flowLineBreak2 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak2:setParent(obj.flowLayout12);
    obj.flowLineBreak2:setName("flowLineBreak2");

    obj.flowPart140 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart140:setParent(obj.flowLayout12);
    obj.flowPart140:setMinWidth(50);
    obj.flowPart140:setMaxWidth(50);
    obj.flowPart140:setHeight(15);
    obj.flowPart140:setName("flowPart140");

    obj.label25 = GUI.fromHandle(_obj_newObject("label"));
    obj.label25:setParent(obj.flowPart140);
    obj.label25:setAlign("top");
    obj.label25:setFontSize(10);
    obj.label25:setText("Destreza");
    obj.label25:setHorzTextAlign("center");
    obj.label25:setWordWrap(true);
    obj.label25:setTextTrimming("none");
    obj.label25:setAutoSize(true);
    obj.label25:setName("label25");

    obj.flowPart141 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart141:setParent(obj.flowLayout12);
    obj.flowPart141:setMinWidth(50);
    obj.flowPart141:setMaxWidth(50);
    obj.flowPart141:setHeight(20);
    obj.flowPart141:setName("flowPart141");

    obj.rectangle6 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle6:setParent(obj.flowPart141);
    obj.rectangle6:setAlign("client");
    obj.rectangle6:setColor("black");
    obj.rectangle6:setStrokeColor("white");
    obj.rectangle6:setStrokeSize(1);
    obj.rectangle6:setName("rectangle6");

    obj.label26 = GUI.fromHandle(_obj_newObject("label"));
    obj.label26:setParent(obj.flowPart141);
    obj.label26:setAlign("client");
    obj.label26:setField("efetModDes");
    obj.label26:setHorzTextAlign("center");
    obj.label26:setFontSize(12);
    obj.label26:setName("label26");

    obj.flowPart142 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart142:setParent(obj.flowLayout12);
    obj.flowPart142:setMinWidth(140);
    obj.flowPart142:setMaxWidth(150);
    obj.flowPart142:setHeight(20);
    obj.flowPart142:setName("flowPart142");

    obj.edit94 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit94:setParent(obj.flowPart142);
    obj.edit94:setAlign("client");
    obj.edit94:setField("destrezaCa2");
    obj.edit94:setFontSize(12);
    obj.edit94:setName("edit94");

    obj.flowPart143 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart143:setParent(obj.flowLayout12);
    obj.flowPart143:setMinWidth(50);
    obj.flowPart143:setMaxWidth(60);
    obj.flowPart143:setHeight(20);
    obj.flowPart143:setName("flowPart143");

    obj.checkBox11 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox11:setParent(obj.flowPart143);
    obj.checkBox11:setField("destrezaCaSurp");
    obj.checkBox11:setText("Surpresa");
    obj.checkBox11:setFontSize(10);
    obj.checkBox11:setHeight(20);
    obj.checkBox11:setName("checkBox11");

    obj.flowPart144 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart144:setParent(obj.flowLayout12);
    obj.flowPart144:setMinWidth(50);
    obj.flowPart144:setMaxWidth(60);
    obj.flowPart144:setHeight(20);
    obj.flowPart144:setName("flowPart144");

    obj.checkBox12 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox12:setParent(obj.flowPart144);
    obj.checkBox12:setField("destrezaCaToque");
    obj.checkBox12:setText("Toque");
    obj.checkBox12:setFontSize(10);
    obj.checkBox12:setHeight(15);
    obj.checkBox12:setName("checkBox12");

    obj.flowLineBreak3 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak3:setParent(obj.flowLayout12);
    obj.flowLineBreak3:setName("flowLineBreak3");

    obj.flowPart145 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart145:setParent(obj.flowLayout12);
    obj.flowPart145:setMinWidth(50);
    obj.flowPart145:setMaxWidth(50);
    obj.flowPart145:setHeight(15);
    obj.flowPart145:setName("flowPart145");

    obj.label27 = GUI.fromHandle(_obj_newObject("label"));
    obj.label27:setParent(obj.flowPart145);
    obj.label27:setAlign("top");
    obj.label27:setFontSize(10);
    obj.label27:setText("Tamanho");
    obj.label27:setHorzTextAlign("center");
    obj.label27:setWordWrap(true);
    obj.label27:setTextTrimming("none");
    obj.label27:setAutoSize(true);
    obj.label27:setName("label27");

    obj.flowPart146 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart146:setParent(obj.flowLayout12);
    obj.flowPart146:setMinWidth(50);
    obj.flowPart146:setMaxWidth(50);
    obj.flowPart146:setHeight(20);
    obj.flowPart146:setName("flowPart146");

    obj.edit95 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit95:setParent(obj.flowPart146);
    obj.edit95:setAlign("client");
    obj.edit95:setField("tamanhoCa");
    obj.edit95:setHorzTextAlign("center");
    obj.edit95:setFontSize(12);
    obj.edit95:setType("number");
    obj.edit95:setName("edit95");

    obj.flowPart147 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart147:setParent(obj.flowLayout12);
    obj.flowPart147:setMinWidth(140);
    obj.flowPart147:setMaxWidth(150);
    obj.flowPart147:setHeight(20);
    obj.flowPart147:setName("flowPart147");

    obj.edit96 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit96:setParent(obj.flowPart147);
    obj.edit96:setAlign("client");
    obj.edit96:setField("tamanhoCa2");
    obj.edit96:setFontSize(12);
    obj.edit96:setName("edit96");

    obj.flowPart148 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart148:setParent(obj.flowLayout12);
    obj.flowPart148:setMinWidth(50);
    obj.flowPart148:setMaxWidth(60);
    obj.flowPart148:setHeight(20);
    obj.flowPart148:setName("flowPart148");

    obj.checkBox13 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox13:setParent(obj.flowPart148);
    obj.checkBox13:setField("tamanhoCaSurp");
    obj.checkBox13:setText("Surpresa");
    obj.checkBox13:setFontSize(10);
    obj.checkBox13:setHeight(20);
    obj.checkBox13:setName("checkBox13");

    obj.flowPart149 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart149:setParent(obj.flowLayout12);
    obj.flowPart149:setMinWidth(50);
    obj.flowPart149:setMaxWidth(60);
    obj.flowPart149:setHeight(20);
    obj.flowPart149:setName("flowPart149");

    obj.checkBox14 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox14:setParent(obj.flowPart149);
    obj.checkBox14:setField("tamanhoCaToque");
    obj.checkBox14:setText("Toque");
    obj.checkBox14:setFontSize(10);
    obj.checkBox14:setHeight(15);
    obj.checkBox14:setName("checkBox14");

    obj.flowLineBreak4 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak4:setParent(obj.flowLayout12);
    obj.flowLineBreak4:setName("flowLineBreak4");

    obj.flowPart150 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart150:setParent(obj.flowLayout12);
    obj.flowPart150:setMinWidth(50);
    obj.flowPart150:setMaxWidth(50);
    obj.flowPart150:setHeight(15);
    obj.flowPart150:setName("flowPart150");

    obj.label28 = GUI.fromHandle(_obj_newObject("label"));
    obj.label28:setParent(obj.flowPart150);
    obj.label28:setAlign("top");
    obj.label28:setFontSize(10);
    obj.label28:setText("Natural");
    obj.label28:setHorzTextAlign("center");
    obj.label28:setWordWrap(true);
    obj.label28:setTextTrimming("none");
    obj.label28:setAutoSize(true);
    obj.label28:setName("label28");

    obj.flowPart151 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart151:setParent(obj.flowLayout12);
    obj.flowPart151:setMinWidth(50);
    obj.flowPart151:setMaxWidth(50);
    obj.flowPart151:setHeight(20);
    obj.flowPart151:setName("flowPart151");

    obj.edit97 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit97:setParent(obj.flowPart151);
    obj.edit97:setAlign("client");
    obj.edit97:setField("naturalCa");
    obj.edit97:setHorzTextAlign("center");
    obj.edit97:setFontSize(12);
    obj.edit97:setType("number");
    obj.edit97:setName("edit97");

    obj.flowPart152 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart152:setParent(obj.flowLayout12);
    obj.flowPart152:setMinWidth(140);
    obj.flowPart152:setMaxWidth(150);
    obj.flowPart152:setHeight(20);
    obj.flowPart152:setName("flowPart152");

    obj.edit98 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit98:setParent(obj.flowPart152);
    obj.edit98:setAlign("client");
    obj.edit98:setField("naturalCa2");
    obj.edit98:setFontSize(12);
    obj.edit98:setName("edit98");

    obj.flowPart153 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart153:setParent(obj.flowLayout12);
    obj.flowPart153:setMinWidth(50);
    obj.flowPart153:setMaxWidth(60);
    obj.flowPart153:setHeight(20);
    obj.flowPart153:setName("flowPart153");

    obj.checkBox15 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox15:setParent(obj.flowPart153);
    obj.checkBox15:setField("naturalCaSurp");
    obj.checkBox15:setText("Surpresa");
    obj.checkBox15:setFontSize(10);
    obj.checkBox15:setHeight(20);
    obj.checkBox15:setName("checkBox15");

    obj.flowPart154 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart154:setParent(obj.flowLayout12);
    obj.flowPart154:setMinWidth(50);
    obj.flowPart154:setMaxWidth(60);
    obj.flowPart154:setHeight(20);
    obj.flowPart154:setName("flowPart154");

    obj.checkBox16 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox16:setParent(obj.flowPart154);
    obj.checkBox16:setField("naturalCaToque");
    obj.checkBox16:setText("Toque");
    obj.checkBox16:setFontSize(10);
    obj.checkBox16:setHeight(15);
    obj.checkBox16:setName("checkBox16");

    obj.flowLineBreak5 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak5:setParent(obj.flowLayout12);
    obj.flowLineBreak5:setName("flowLineBreak5");

    obj.flowPart155 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart155:setParent(obj.flowLayout12);
    obj.flowPart155:setMinWidth(50);
    obj.flowPart155:setMaxWidth(50);
    obj.flowPart155:setHeight(15);
    obj.flowPart155:setName("flowPart155");

    obj.label29 = GUI.fromHandle(_obj_newObject("label"));
    obj.label29:setParent(obj.flowPart155);
    obj.label29:setAlign("top");
    obj.label29:setFontSize(10);
    obj.label29:setText("Deflexao");
    obj.label29:setHorzTextAlign("center");
    obj.label29:setWordWrap(true);
    obj.label29:setTextTrimming("none");
    obj.label29:setAutoSize(true);
    obj.label29:setName("label29");

    obj.flowPart156 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart156:setParent(obj.flowLayout12);
    obj.flowPart156:setMinWidth(50);
    obj.flowPart156:setMaxWidth(50);
    obj.flowPart156:setHeight(20);
    obj.flowPart156:setName("flowPart156");

    obj.edit99 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit99:setParent(obj.flowPart156);
    obj.edit99:setAlign("client");
    obj.edit99:setField("deflexaoCa");
    obj.edit99:setHorzTextAlign("center");
    obj.edit99:setFontSize(12);
    obj.edit99:setType("number");
    obj.edit99:setName("edit99");

    obj.flowPart157 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart157:setParent(obj.flowLayout12);
    obj.flowPart157:setMinWidth(140);
    obj.flowPart157:setMaxWidth(150);
    obj.flowPart157:setHeight(20);
    obj.flowPart157:setName("flowPart157");

    obj.edit100 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit100:setParent(obj.flowPart157);
    obj.edit100:setAlign("client");
    obj.edit100:setField("deflexaoCa2");
    obj.edit100:setFontSize(12);
    obj.edit100:setName("edit100");

    obj.flowPart158 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart158:setParent(obj.flowLayout12);
    obj.flowPart158:setMinWidth(50);
    obj.flowPart158:setMaxWidth(60);
    obj.flowPart158:setHeight(20);
    obj.flowPart158:setName("flowPart158");

    obj.checkBox17 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox17:setParent(obj.flowPart158);
    obj.checkBox17:setField("deflexaoCaSurp");
    obj.checkBox17:setText("Surpresa");
    obj.checkBox17:setFontSize(10);
    obj.checkBox17:setHeight(20);
    obj.checkBox17:setName("checkBox17");

    obj.flowPart159 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart159:setParent(obj.flowLayout12);
    obj.flowPart159:setMinWidth(50);
    obj.flowPart159:setMaxWidth(60);
    obj.flowPart159:setHeight(20);
    obj.flowPart159:setName("flowPart159");

    obj.checkBox18 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox18:setParent(obj.flowPart159);
    obj.checkBox18:setField("deflexaoCaToque");
    obj.checkBox18:setText("Toque");
    obj.checkBox18:setFontSize(10);
    obj.checkBox18:setHeight(15);
    obj.checkBox18:setName("checkBox18");

    obj.flowLineBreak6 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak6:setParent(obj.flowLayout12);
    obj.flowLineBreak6:setName("flowLineBreak6");

    obj.flowPart160 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart160:setParent(obj.flowLayout12);
    obj.flowPart160:setMinWidth(50);
    obj.flowPart160:setMaxWidth(50);
    obj.flowPart160:setHeight(15);
    obj.flowPart160:setName("flowPart160");

    obj.label30 = GUI.fromHandle(_obj_newObject("label"));
    obj.label30:setParent(obj.flowPart160);
    obj.label30:setAlign("top");
    obj.label30:setFontSize(10);
    obj.label30:setText("Esquiva");
    obj.label30:setHorzTextAlign("center");
    obj.label30:setWordWrap(true);
    obj.label30:setTextTrimming("none");
    obj.label30:setAutoSize(true);
    obj.label30:setName("label30");

    obj.flowPart161 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart161:setParent(obj.flowLayout12);
    obj.flowPart161:setMinWidth(50);
    obj.flowPart161:setMaxWidth(50);
    obj.flowPart161:setHeight(20);
    obj.flowPart161:setName("flowPart161");

    obj.edit101 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit101:setParent(obj.flowPart161);
    obj.edit101:setAlign("client");
    obj.edit101:setField("esquivaCa");
    obj.edit101:setHorzTextAlign("center");
    obj.edit101:setFontSize(12);
    obj.edit101:setType("number");
    obj.edit101:setName("edit101");

    obj.flowPart162 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart162:setParent(obj.flowLayout12);
    obj.flowPart162:setMinWidth(140);
    obj.flowPart162:setMaxWidth(150);
    obj.flowPart162:setHeight(20);
    obj.flowPart162:setName("flowPart162");

    obj.edit102 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit102:setParent(obj.flowPart162);
    obj.edit102:setAlign("client");
    obj.edit102:setField("esquivaCa2");
    obj.edit102:setFontSize(12);
    obj.edit102:setName("edit102");

    obj.flowPart163 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart163:setParent(obj.flowLayout12);
    obj.flowPart163:setMinWidth(50);
    obj.flowPart163:setMaxWidth(60);
    obj.flowPart163:setHeight(20);
    obj.flowPart163:setName("flowPart163");

    obj.checkBox19 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox19:setParent(obj.flowPart163);
    obj.checkBox19:setField("esquivaCaSurp");
    obj.checkBox19:setText("Surpresa");
    obj.checkBox19:setFontSize(10);
    obj.checkBox19:setHeight(20);
    obj.checkBox19:setName("checkBox19");

    obj.flowPart164 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart164:setParent(obj.flowLayout12);
    obj.flowPart164:setMinWidth(50);
    obj.flowPart164:setMaxWidth(60);
    obj.flowPart164:setHeight(20);
    obj.flowPart164:setName("flowPart164");

    obj.checkBox20 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox20:setParent(obj.flowPart164);
    obj.checkBox20:setField("esquivaCaToque");
    obj.checkBox20:setText("Toque");
    obj.checkBox20:setFontSize(10);
    obj.checkBox20:setHeight(15);
    obj.checkBox20:setName("checkBox20");

    obj.flowLineBreak7 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak7:setParent(obj.flowLayout12);
    obj.flowLineBreak7:setName("flowLineBreak7");

    obj.flowPart165 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart165:setParent(obj.flowLayout12);
    obj.flowPart165:setMinWidth(50);
    obj.flowPart165:setMaxWidth(50);
    obj.flowPart165:setHeight(15);
    obj.flowPart165:setName("flowPart165");

    obj.label31 = GUI.fromHandle(_obj_newObject("label"));
    obj.label31:setParent(obj.flowPart165);
    obj.label31:setAlign("top");
    obj.label31:setFontSize(10);
    obj.label31:setText("Sorte");
    obj.label31:setHorzTextAlign("center");
    obj.label31:setWordWrap(true);
    obj.label31:setTextTrimming("none");
    obj.label31:setAutoSize(true);
    obj.label31:setName("label31");

    obj.flowPart166 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart166:setParent(obj.flowLayout12);
    obj.flowPart166:setMinWidth(50);
    obj.flowPart166:setMaxWidth(50);
    obj.flowPart166:setHeight(20);
    obj.flowPart166:setName("flowPart166");

    obj.edit103 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit103:setParent(obj.flowPart166);
    obj.edit103:setAlign("client");
    obj.edit103:setField("sorteCa");
    obj.edit103:setHorzTextAlign("center");
    obj.edit103:setFontSize(12);
    obj.edit103:setType("number");
    obj.edit103:setName("edit103");

    obj.flowPart167 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart167:setParent(obj.flowLayout12);
    obj.flowPart167:setMinWidth(140);
    obj.flowPart167:setMaxWidth(150);
    obj.flowPart167:setHeight(20);
    obj.flowPart167:setName("flowPart167");

    obj.edit104 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit104:setParent(obj.flowPart167);
    obj.edit104:setAlign("client");
    obj.edit104:setField("sorteCa2");
    obj.edit104:setFontSize(12);
    obj.edit104:setName("edit104");

    obj.flowPart168 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart168:setParent(obj.flowLayout12);
    obj.flowPart168:setMinWidth(50);
    obj.flowPart168:setMaxWidth(60);
    obj.flowPart168:setHeight(20);
    obj.flowPart168:setName("flowPart168");

    obj.checkBox21 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox21:setParent(obj.flowPart168);
    obj.checkBox21:setField("sorteCaSurp");
    obj.checkBox21:setText("Surpresa");
    obj.checkBox21:setFontSize(10);
    obj.checkBox21:setHeight(20);
    obj.checkBox21:setName("checkBox21");

    obj.flowPart169 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart169:setParent(obj.flowLayout12);
    obj.flowPart169:setMinWidth(50);
    obj.flowPart169:setMaxWidth(60);
    obj.flowPart169:setHeight(20);
    obj.flowPart169:setName("flowPart169");

    obj.checkBox22 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox22:setParent(obj.flowPart169);
    obj.checkBox22:setField("sorteCaToque");
    obj.checkBox22:setText("Toque");
    obj.checkBox22:setFontSize(10);
    obj.checkBox22:setHeight(15);
    obj.checkBox22:setName("checkBox22");

    obj.flowLineBreak8 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak8:setParent(obj.flowLayout12);
    obj.flowLineBreak8:setName("flowLineBreak8");

    obj.flowPart170 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart170:setParent(obj.flowLayout12);
    obj.flowPart170:setMinWidth(50);
    obj.flowPart170:setMaxWidth(50);
    obj.flowPart170:setHeight(15);
    obj.flowPart170:setName("flowPart170");

    obj.label32 = GUI.fromHandle(_obj_newObject("label"));
    obj.label32:setParent(obj.flowPart170);
    obj.label32:setAlign("top");
    obj.label32:setFontSize(10);
    obj.label32:setText("Outros");
    obj.label32:setHorzTextAlign("center");
    obj.label32:setWordWrap(true);
    obj.label32:setTextTrimming("none");
    obj.label32:setAutoSize(true);
    obj.label32:setName("label32");

    obj.flowPart171 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart171:setParent(obj.flowLayout12);
    obj.flowPart171:setMinWidth(50);
    obj.flowPart171:setMaxWidth(50);
    obj.flowPart171:setHeight(20);
    obj.flowPart171:setName("flowPart171");

    obj.edit105 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit105:setParent(obj.flowPart171);
    obj.edit105:setAlign("client");
    obj.edit105:setField("outrosCa");
    obj.edit105:setHorzTextAlign("center");
    obj.edit105:setFontSize(12);
    obj.edit105:setType("number");
    obj.edit105:setName("edit105");

    obj.flowPart172 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart172:setParent(obj.flowLayout12);
    obj.flowPart172:setMinWidth(140);
    obj.flowPart172:setMaxWidth(150);
    obj.flowPart172:setHeight(20);
    obj.flowPart172:setName("flowPart172");

    obj.edit106 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit106:setParent(obj.flowPart172);
    obj.edit106:setAlign("client");
    obj.edit106:setField("outrosCa2");
    obj.edit106:setFontSize(12);
    obj.edit106:setName("edit106");

    obj.flowPart173 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart173:setParent(obj.flowLayout12);
    obj.flowPart173:setMinWidth(50);
    obj.flowPart173:setMaxWidth(60);
    obj.flowPart173:setHeight(20);
    obj.flowPart173:setName("flowPart173");

    obj.checkBox23 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox23:setParent(obj.flowPart173);
    obj.checkBox23:setField("outrosCaSurp");
    obj.checkBox23:setText("Surpresa");
    obj.checkBox23:setFontSize(10);
    obj.checkBox23:setHeight(20);
    obj.checkBox23:setName("checkBox23");

    obj.flowPart174 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart174:setParent(obj.flowLayout12);
    obj.flowPart174:setMinWidth(50);
    obj.flowPart174:setMaxWidth(60);
    obj.flowPart174:setHeight(20);
    obj.flowPart174:setName("flowPart174");

    obj.checkBox24 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox24:setParent(obj.flowPart174);
    obj.checkBox24:setField("outrosCaToque");
    obj.checkBox24:setText("Toque");
    obj.checkBox24:setFontSize(10);
    obj.checkBox24:setHeight(15);
    obj.checkBox24:setName("checkBox24");

    obj.flowLineBreak9 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak9:setParent(obj.flowLayout12);
    obj.flowLineBreak9:setName("flowLineBreak9");

    obj.flowPart175 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart175:setParent(obj.flowLayout12);
    obj.flowPart175:setMinWidth(50);
    obj.flowPart175:setMaxWidth(50);
    obj.flowPart175:setHeight(15);
    obj.flowPart175:setName("flowPart175");

    obj.label33 = GUI.fromHandle(_obj_newObject("label"));
    obj.label33:setParent(obj.flowPart175);
    obj.label33:setAlign("top");
    obj.label33:setFontSize(10);
    obj.label33:setText("Variados");
    obj.label33:setHorzTextAlign("center");
    obj.label33:setWordWrap(true);
    obj.label33:setTextTrimming("none");
    obj.label33:setAutoSize(true);
    obj.label33:setName("label33");

    obj.flowPart176 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart176:setParent(obj.flowLayout12);
    obj.flowPart176:setMinWidth(50);
    obj.flowPart176:setMaxWidth(50);
    obj.flowPart176:setHeight(20);
    obj.flowPart176:setName("flowPart176");

    obj.edit107 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit107:setParent(obj.flowPart176);
    obj.edit107:setAlign("client");
    obj.edit107:setField("variadosCa");
    obj.edit107:setHorzTextAlign("center");
    obj.edit107:setFontSize(12);
    obj.edit107:setType("number");
    obj.edit107:setName("edit107");

    obj.flowPart177 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart177:setParent(obj.flowLayout12);
    obj.flowPart177:setMinWidth(140);
    obj.flowPart177:setMaxWidth(150);
    obj.flowPart177:setHeight(20);
    obj.flowPart177:setName("flowPart177");

    obj.edit108 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit108:setParent(obj.flowPart177);
    obj.edit108:setAlign("client");
    obj.edit108:setField("variadosCa2");
    obj.edit108:setFontSize(12);
    obj.edit108:setName("edit108");

    obj.flowPart178 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart178:setParent(obj.flowLayout12);
    obj.flowPart178:setMinWidth(50);
    obj.flowPart178:setMaxWidth(60);
    obj.flowPart178:setHeight(20);
    obj.flowPart178:setName("flowPart178");

    obj.checkBox25 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox25:setParent(obj.flowPart178);
    obj.checkBox25:setField("variadosCaSurp");
    obj.checkBox25:setText("Surpresa");
    obj.checkBox25:setFontSize(10);
    obj.checkBox25:setHeight(20);
    obj.checkBox25:setName("checkBox25");

    obj.flowPart179 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart179:setParent(obj.flowLayout12);
    obj.flowPart179:setMinWidth(50);
    obj.flowPart179:setMaxWidth(60);
    obj.flowPart179:setHeight(20);
    obj.flowPart179:setName("flowPart179");

    obj.checkBox26 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox26:setParent(obj.flowPart179);
    obj.checkBox26:setField("variadosCaToque");
    obj.checkBox26:setText("Toque");
    obj.checkBox26:setFontSize(10);
    obj.checkBox26:setHeight(15);
    obj.checkBox26:setName("checkBox26");

    obj.flowLineBreak10 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak10:setParent(obj.flowLayout12);
    obj.flowLineBreak10:setName("flowLineBreak10");

    obj.popGrapple = GUI.fromHandle(_obj_newObject("popup"));
    obj.popGrapple:setParent(obj.scrollBox1);
    obj.popGrapple:setName("popGrapple");
    obj.popGrapple:setWidth(225);
    obj.popGrapple:setHeight(50);
    obj.popGrapple:setBackOpacity(0.4);
    lfm_setPropAsString(obj.popGrapple, "autoScopeNode",  "false");

    obj.flowLayout13 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout13:setParent(obj.popGrapple);
    obj.flowLayout13:setAlign("top");
    obj.flowLayout13:setAutoHeight(true);
    obj.flowLayout13:setMaxControlsPerLine(4);
    obj.flowLayout13:setMargins({bottom=4});
    obj.flowLayout13:setHorzAlign("center");
    obj.flowLayout13:setName("flowLayout13");

    obj.flowPart180 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart180:setParent(obj.flowLayout13);
    obj.flowPart180:setMinWidth(50);
    obj.flowPart180:setMaxWidth(50);
    obj.flowPart180:setHeight(15);
    obj.flowPart180:setName("flowPart180");

    obj.label34 = GUI.fromHandle(_obj_newObject("label"));
    obj.label34:setParent(obj.flowPart180);
    obj.label34:setAlign("top");
    obj.label34:setFontSize(10);
    obj.label34:setText("BBA");
    obj.label34:setHorzTextAlign("center");
    obj.label34:setWordWrap(true);
    obj.label34:setTextTrimming("none");
    obj.label34:setAutoSize(true);
    obj.label34:setName("label34");

    obj.flowPart181 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart181:setParent(obj.flowLayout13);
    obj.flowPart181:setMinWidth(50);
    obj.flowPart181:setMaxWidth(50);
    obj.flowPart181:setHeight(15);
    obj.flowPart181:setName("flowPart181");

    obj.label35 = GUI.fromHandle(_obj_newObject("label"));
    obj.label35:setParent(obj.flowPart181);
    obj.label35:setAlign("top");
    obj.label35:setFontSize(10);
    obj.label35:setText("Força");
    obj.label35:setHorzTextAlign("center");
    obj.label35:setWordWrap(true);
    obj.label35:setTextTrimming("none");
    obj.label35:setAutoSize(true);
    obj.label35:setName("label35");

    obj.flowPart182 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart182:setParent(obj.flowLayout13);
    obj.flowPart182:setMinWidth(50);
    obj.flowPart182:setMaxWidth(50);
    obj.flowPart182:setHeight(15);
    obj.flowPart182:setName("flowPart182");

    obj.label36 = GUI.fromHandle(_obj_newObject("label"));
    obj.label36:setParent(obj.flowPart182);
    obj.label36:setAlign("top");
    obj.label36:setFontSize(10);
    obj.label36:setText("Tamanho");
    obj.label36:setHorzTextAlign("center");
    obj.label36:setWordWrap(true);
    obj.label36:setTextTrimming("none");
    obj.label36:setAutoSize(true);
    obj.label36:setName("label36");

    obj.flowPart183 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart183:setParent(obj.flowLayout13);
    obj.flowPart183:setMinWidth(50);
    obj.flowPart183:setMaxWidth(50);
    obj.flowPart183:setHeight(15);
    obj.flowPart183:setName("flowPart183");

    obj.label37 = GUI.fromHandle(_obj_newObject("label"));
    obj.label37:setParent(obj.flowPart183);
    obj.label37:setAlign("top");
    obj.label37:setFontSize(10);
    obj.label37:setText("Outros");
    obj.label37:setHorzTextAlign("center");
    obj.label37:setWordWrap(true);
    obj.label37:setTextTrimming("none");
    obj.label37:setAutoSize(true);
    obj.label37:setName("label37");

    obj.flowPart184 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart184:setParent(obj.flowLayout13);
    obj.flowPart184:setMinWidth(50);
    obj.flowPart184:setMaxWidth(50);
    obj.flowPart184:setHeight(20);
    obj.flowPart184:setName("flowPart184");

    obj.rectangle7 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle7:setParent(obj.flowPart184);
    obj.rectangle7:setAlign("client");
    obj.rectangle7:setColor("black");
    obj.rectangle7:setStrokeColor("white");
    obj.rectangle7:setStrokeSize(1);
    obj.rectangle7:setName("rectangle7");

    obj.label38 = GUI.fromHandle(_obj_newObject("label"));
    obj.label38:setParent(obj.flowPart184);
    obj.label38:setAlign("client");
    obj.label38:setField("bba");
    obj.label38:setHorzTextAlign("center");
    obj.label38:setFontSize(12);
    obj.label38:setName("label38");

    obj.flowPart185 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart185:setParent(obj.flowLayout13);
    obj.flowPart185:setMinWidth(50);
    obj.flowPart185:setMaxWidth(50);
    obj.flowPart185:setHeight(20);
    obj.flowPart185:setName("flowPart185");

    obj.rectangle8 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle8:setParent(obj.flowPart185);
    obj.rectangle8:setAlign("client");
    obj.rectangle8:setColor("black");
    obj.rectangle8:setStrokeColor("white");
    obj.rectangle8:setStrokeSize(1);
    obj.rectangle8:setName("rectangle8");

    obj.label39 = GUI.fromHandle(_obj_newObject("label"));
    obj.label39:setParent(obj.flowPart185);
    obj.label39:setAlign("client");
    obj.label39:setField("efetModFor");
    obj.label39:setHorzTextAlign("center");
    obj.label39:setFontSize(12);
    obj.label39:setName("label39");

    obj.flowPart186 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart186:setParent(obj.flowLayout13);
    obj.flowPart186:setMinWidth(50);
    obj.flowPart186:setMaxWidth(50);
    obj.flowPart186:setHeight(20);
    obj.flowPart186:setName("flowPart186");

    obj.edit109 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit109:setParent(obj.flowPart186);
    obj.edit109:setAlign("client");
    obj.edit109:setField("agarrarTam");
    obj.edit109:setHorzTextAlign("center");
    obj.edit109:setFontSize(12);
    obj.edit109:setType("number");
    obj.edit109:setName("edit109");

    obj.flowPart187 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart187:setParent(obj.flowLayout13);
    obj.flowPart187:setMinWidth(50);
    obj.flowPart187:setMaxWidth(50);
    obj.flowPart187:setHeight(20);
    obj.flowPart187:setName("flowPart187");

    obj.edit110 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit110:setParent(obj.flowPart187);
    obj.edit110:setAlign("client");
    obj.edit110:setField("agarrarVar");
    obj.edit110:setHorzTextAlign("center");
    obj.edit110:setFontSize(12);
    obj.edit110:setType("number");
    obj.edit110:setName("edit110");

    obj.popManeuver = GUI.fromHandle(_obj_newObject("popup"));
    obj.popManeuver:setParent(obj.scrollBox1);
    obj.popManeuver:setName("popManeuver");
    obj.popManeuver:setWidth(580);
    obj.popManeuver:setHeight(125);
    obj.popManeuver:setBackOpacity(0.4);
    lfm_setPropAsString(obj.popManeuver, "autoScopeNode",  "false");

    obj.flowLayout14 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout14:setParent(obj.popManeuver);
    obj.flowLayout14:setAlign("top");
    obj.flowLayout14:setAutoHeight(true);
    obj.flowLayout14:setMaxControlsPerLine(11);
    obj.flowLayout14:setMargins({bottom=4});
    obj.flowLayout14:setHorzAlign("center");
    obj.flowLayout14:setName("flowLayout14");

    obj.flowPart188 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart188:setParent(obj.flowLayout14);
    obj.flowPart188:setMinWidth(50);
    obj.flowPart188:setMaxWidth(50);
    obj.flowPart188:setHeight(15);
    obj.flowPart188:setName("flowPart188");

    obj.flowPart189 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart189:setParent(obj.flowLayout14);
    obj.flowPart189:setMinWidth(50);
    obj.flowPart189:setMaxWidth(50);
    obj.flowPart189:setHeight(15);
    obj.flowPart189:setName("flowPart189");

    obj.label40 = GUI.fromHandle(_obj_newObject("label"));
    obj.label40:setParent(obj.flowPart189);
    obj.label40:setAlign("top");
    obj.label40:setFontSize(10);
    obj.label40:setText("BBA");
    obj.label40:setHorzTextAlign("center");
    obj.label40:setWordWrap(true);
    obj.label40:setTextTrimming("none");
    obj.label40:setAutoSize(true);
    obj.label40:setName("label40");

    obj.flowPart190 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart190:setParent(obj.flowLayout14);
    obj.flowPart190:setMinWidth(50);
    obj.flowPart190:setMaxWidth(50);
    obj.flowPart190:setHeight(15);
    obj.flowPart190:setName("flowPart190");

    obj.label41 = GUI.fromHandle(_obj_newObject("label"));
    obj.label41:setParent(obj.flowPart190);
    obj.label41:setAlign("top");
    obj.label41:setFontSize(10);
    obj.label41:setText("Força");
    obj.label41:setHorzTextAlign("center");
    obj.label41:setWordWrap(true);
    obj.label41:setTextTrimming("none");
    obj.label41:setAutoSize(true);
    obj.label41:setName("label41");

    obj.flowPart191 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart191:setParent(obj.flowLayout14);
    obj.flowPart191:setMinWidth(50);
    obj.flowPart191:setMaxWidth(50);
    obj.flowPart191:setHeight(15);
    obj.flowPart191:setName("flowPart191");

    obj.label42 = GUI.fromHandle(_obj_newObject("label"));
    obj.label42:setParent(obj.flowPart191);
    obj.label42:setAlign("top");
    obj.label42:setFontSize(10);
    obj.label42:setText("Tamanho");
    obj.label42:setHorzTextAlign("center");
    obj.label42:setWordWrap(true);
    obj.label42:setTextTrimming("none");
    obj.label42:setAutoSize(true);
    obj.label42:setName("label42");

    obj.flowPart192 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart192:setParent(obj.flowLayout14);
    obj.flowPart192:setMinWidth(50);
    obj.flowPart192:setMaxWidth(50);
    obj.flowPart192:setHeight(15);
    obj.flowPart192:setName("flowPart192");

    obj.label43 = GUI.fromHandle(_obj_newObject("label"));
    obj.label43:setParent(obj.flowPart192);
    obj.label43:setAlign("top");
    obj.label43:setFontSize(10);
    obj.label43:setText("Outros");
    obj.label43:setHorzTextAlign("center");
    obj.label43:setWordWrap(true);
    obj.label43:setTextTrimming("none");
    obj.label43:setAutoSize(true);
    obj.label43:setName("label43");

    obj.flowPart193 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart193:setParent(obj.flowLayout14);
    obj.flowPart193:setMinWidth(50);
    obj.flowPart193:setMaxWidth(50);
    obj.flowPart193:setHeight(15);
    obj.flowPart193:setName("flowPart193");

    obj.label44 = GUI.fromHandle(_obj_newObject("label"));
    obj.label44:setParent(obj.flowPart193);
    obj.label44:setAlign("top");
    obj.label44:setFontSize(10);
    obj.label44:setText("Destreza");
    obj.label44:setHorzTextAlign("center");
    obj.label44:setWordWrap(true);
    obj.label44:setTextTrimming("none");
    obj.label44:setAutoSize(true);
    obj.label44:setName("label44");

    obj.flowPart194 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart194:setParent(obj.flowLayout14);
    obj.flowPart194:setMinWidth(50);
    obj.flowPart194:setMaxWidth(50);
    obj.flowPart194:setHeight(15);
    obj.flowPart194:setName("flowPart194");

    obj.label45 = GUI.fromHandle(_obj_newObject("label"));
    obj.label45:setParent(obj.flowPart194);
    obj.label45:setAlign("top");
    obj.label45:setFontSize(10);
    obj.label45:setText("Diversos");
    obj.label45:setHorzTextAlign("center");
    obj.label45:setWordWrap(true);
    obj.label45:setTextTrimming("none");
    obj.label45:setAutoSize(true);
    obj.label45:setName("label45");

    obj.flowLineBreak11 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak11:setParent(obj.flowLayout14);
    obj.flowLineBreak11:setName("flowLineBreak11");

    obj.flowPart195 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart195:setParent(obj.flowLayout14);
    obj.flowPart195:setMinWidth(50);
    obj.flowPart195:setMaxWidth(50);
    obj.flowPart195:setHeight(15);
    obj.flowPart195:setName("flowPart195");

    obj.label46 = GUI.fromHandle(_obj_newObject("label"));
    obj.label46:setParent(obj.flowPart195);
    obj.label46:setAlign("top");
    obj.label46:setFontSize(10);
    obj.label46:setText("BMC");
    obj.label46:setHorzTextAlign("center");
    obj.label46:setWordWrap(true);
    obj.label46:setTextTrimming("none");
    obj.label46:setAutoSize(true);
    obj.label46:setName("label46");

    obj.flowPart196 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart196:setParent(obj.flowLayout14);
    obj.flowPart196:setMinWidth(50);
    obj.flowPart196:setMaxWidth(50);
    obj.flowPart196:setHeight(20);
    obj.flowPart196:setName("flowPart196");

    obj.rectangle9 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle9:setParent(obj.flowPart196);
    obj.rectangle9:setAlign("client");
    obj.rectangle9:setColor("black");
    obj.rectangle9:setStrokeColor("white");
    obj.rectangle9:setStrokeSize(1);
    obj.rectangle9:setName("rectangle9");

    obj.label47 = GUI.fromHandle(_obj_newObject("label"));
    obj.label47:setParent(obj.flowPart196);
    obj.label47:setAlign("client");
    obj.label47:setField("bba");
    obj.label47:setHorzTextAlign("center");
    obj.label47:setFontSize(12);
    obj.label47:setName("label47");

    obj.flowPart197 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart197:setParent(obj.flowLayout14);
    obj.flowPart197:setMinWidth(50);
    obj.flowPart197:setMaxWidth(50);
    obj.flowPart197:setHeight(20);
    obj.flowPart197:setName("flowPart197");

    obj.rectangle10 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle10:setParent(obj.flowPart197);
    obj.rectangle10:setAlign("client");
    obj.rectangle10:setColor("black");
    obj.rectangle10:setStrokeColor("white");
    obj.rectangle10:setStrokeSize(1);
    obj.rectangle10:setName("rectangle10");

    obj.label48 = GUI.fromHandle(_obj_newObject("label"));
    obj.label48:setParent(obj.flowPart197);
    obj.label48:setAlign("client");
    obj.label48:setField("efetModFor");
    obj.label48:setHorzTextAlign("center");
    obj.label48:setFontSize(12);
    obj.label48:setName("label48");

    obj.flowPart198 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart198:setParent(obj.flowLayout14);
    obj.flowPart198:setMinWidth(50);
    obj.flowPart198:setMaxWidth(50);
    obj.flowPart198:setHeight(20);
    obj.flowPart198:setName("flowPart198");

    obj.edit111 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit111:setParent(obj.flowPart198);
    obj.edit111:setAlign("client");
    obj.edit111:setField("bmcTamanho");
    obj.edit111:setHorzTextAlign("center");
    obj.edit111:setFontSize(12);
    obj.edit111:setType("number");
    obj.edit111:setName("edit111");

    obj.flowPart199 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart199:setParent(obj.flowLayout14);
    obj.flowPart199:setMinWidth(50);
    obj.flowPart199:setMaxWidth(50);
    obj.flowPart199:setHeight(20);
    obj.flowPart199:setName("flowPart199");

    obj.edit112 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit112:setParent(obj.flowPart199);
    obj.edit112:setAlign("client");
    obj.edit112:setField("bmcOutros");
    obj.edit112:setHorzTextAlign("center");
    obj.edit112:setFontSize(12);
    obj.edit112:setType("number");
    obj.edit112:setName("edit112");

    obj.flowPart200 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart200:setParent(obj.flowLayout14);
    obj.flowPart200:setMinWidth(50);
    obj.flowPart200:setMaxWidth(50);
    obj.flowPart200:setHeight(20);
    obj.flowPart200:setName("flowPart200");

    obj.checkBox27 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox27:setParent(obj.flowPart200);
    obj.checkBox27:setField("destrezaBMC");
    obj.checkBox27:setLeft(15);
    obj.checkBox27:setFontSize(10);
    obj.checkBox27:setHeight(20);
    obj.checkBox27:setName("checkBox27");

    obj.flowPart201 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart201:setParent(obj.flowLayout14);
    obj.flowPart201:setMinWidth(50);
    obj.flowPart201:setMaxWidth(50);
    obj.flowPart201:setHeight(20);
    obj.flowPart201:setName("flowPart201");

    obj.edit113 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit113:setParent(obj.flowPart201);
    obj.edit113:setAlign("client");
    obj.edit113:setField("bmcDiversos");
    obj.edit113:setHorzTextAlign("center");
    obj.edit113:setFontSize(12);
    obj.edit113:setType("number");
    obj.edit113:setName("edit113");

    obj.flowLineBreak12 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak12:setParent(obj.flowLayout14);
    obj.flowLineBreak12:setName("flowLineBreak12");

    obj.flowPart202 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart202:setParent(obj.flowLayout14);
    obj.flowPart202:setMinWidth(50);
    obj.flowPart202:setMaxWidth(50);
    obj.flowPart202:setHeight(15);
    obj.flowPart202:setName("flowPart202");

    obj.label49 = GUI.fromHandle(_obj_newObject("label"));
    obj.label49:setParent(obj.flowPart202);
    obj.label49:setAlign("top");
    obj.label49:setFontSize(10);
    obj.label49:setText("BMD");
    obj.label49:setHorzTextAlign("center");
    obj.label49:setWordWrap(true);
    obj.label49:setTextTrimming("none");
    obj.label49:setAutoSize(true);
    obj.label49:setName("label49");

    obj.flowPart203 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart203:setParent(obj.flowLayout14);
    obj.flowPart203:setMinWidth(50);
    obj.flowPart203:setMaxWidth(50);
    obj.flowPart203:setHeight(20);
    obj.flowPart203:setName("flowPart203");

    obj.rectangle11 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle11:setParent(obj.flowPart203);
    obj.rectangle11:setAlign("client");
    obj.rectangle11:setColor("black");
    obj.rectangle11:setStrokeColor("white");
    obj.rectangle11:setStrokeSize(1);
    obj.rectangle11:setName("rectangle11");

    obj.label50 = GUI.fromHandle(_obj_newObject("label"));
    obj.label50:setParent(obj.flowPart203);
    obj.label50:setAlign("client");
    obj.label50:setField("bba");
    obj.label50:setHorzTextAlign("center");
    obj.label50:setFontSize(12);
    obj.label50:setName("label50");

    obj.flowPart204 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart204:setParent(obj.flowLayout14);
    obj.flowPart204:setMinWidth(50);
    obj.flowPart204:setMaxWidth(50);
    obj.flowPart204:setHeight(20);
    obj.flowPart204:setName("flowPart204");

    obj.rectangle12 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle12:setParent(obj.flowPart204);
    obj.rectangle12:setAlign("client");
    obj.rectangle12:setColor("black");
    obj.rectangle12:setStrokeColor("white");
    obj.rectangle12:setStrokeSize(1);
    obj.rectangle12:setName("rectangle12");

    obj.label51 = GUI.fromHandle(_obj_newObject("label"));
    obj.label51:setParent(obj.flowPart204);
    obj.label51:setAlign("client");
    obj.label51:setField("efetModFor");
    obj.label51:setHorzTextAlign("center");
    obj.label51:setFontSize(12);
    obj.label51:setName("label51");

    obj.flowPart205 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart205:setParent(obj.flowLayout14);
    obj.flowPart205:setMinWidth(50);
    obj.flowPart205:setMaxWidth(50);
    obj.flowPart205:setHeight(20);
    obj.flowPart205:setName("flowPart205");

    obj.edit114 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit114:setParent(obj.flowPart205);
    obj.edit114:setAlign("client");
    obj.edit114:setField("bmdTamanho");
    obj.edit114:setHorzTextAlign("center");
    obj.edit114:setFontSize(12);
    obj.edit114:setType("number");
    obj.edit114:setName("edit114");

    obj.flowPart206 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart206:setParent(obj.flowLayout14);
    obj.flowPart206:setMinWidth(50);
    obj.flowPart206:setMaxWidth(50);
    obj.flowPart206:setHeight(20);
    obj.flowPart206:setName("flowPart206");

    obj.edit115 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit115:setParent(obj.flowPart206);
    obj.edit115:setAlign("client");
    obj.edit115:setField("bmdOutros");
    obj.edit115:setHorzTextAlign("center");
    obj.edit115:setFontSize(12);
    obj.edit115:setType("number");
    obj.edit115:setName("edit115");

    obj.flowPart207 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart207:setParent(obj.flowLayout14);
    obj.flowPart207:setMinWidth(50);
    obj.flowPart207:setMaxWidth(50);
    obj.flowPart207:setHeight(20);
    obj.flowPart207:setName("flowPart207");

    obj.rectangle13 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle13:setParent(obj.flowPart207);
    obj.rectangle13:setAlign("client");
    obj.rectangle13:setColor("black");
    obj.rectangle13:setStrokeColor("white");
    obj.rectangle13:setStrokeSize(1);
    obj.rectangle13:setName("rectangle13");

    obj.label52 = GUI.fromHandle(_obj_newObject("label"));
    obj.label52:setParent(obj.flowPart207);
    obj.label52:setAlign("client");
    obj.label52:setField("efetModDes");
    obj.label52:setHorzTextAlign("center");
    obj.label52:setFontSize(12);
    obj.label52:setName("label52");

    obj.flowPart208 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart208:setParent(obj.flowLayout14);
    obj.flowPart208:setMinWidth(50);
    obj.flowPart208:setMaxWidth(50);
    obj.flowPart208:setHeight(20);
    obj.flowPart208:setName("flowPart208");

    obj.edit116 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit116:setParent(obj.flowPart208);
    obj.edit116:setAlign("client");
    obj.edit116:setField("bmdDiversos");
    obj.edit116:setHorzTextAlign("center");
    obj.edit116:setFontSize(12);
    obj.edit116:setType("number");
    obj.edit116:setName("edit116");

    obj.flowLineBreak13 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak13:setParent(obj.flowLayout14);
    obj.flowLineBreak13:setName("flowLineBreak13");

    obj.flowPart209 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart209:setParent(obj.flowLayout14);
    obj.flowPart209:setMinWidth(50);
    obj.flowPart209:setMaxWidth(50);
    obj.flowPart209:setHeight(15);
    obj.flowPart209:setName("flowPart209");

    obj.flowPart210 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart210:setParent(obj.flowLayout14);
    obj.flowPart210:setMinWidth(50);
    obj.flowPart210:setMaxWidth(50);
    obj.flowPart210:setHeight(15);
    obj.flowPart210:setName("flowPart210");

    obj.label53 = GUI.fromHandle(_obj_newObject("label"));
    obj.label53:setParent(obj.flowPart210);
    obj.label53:setAlign("top");
    obj.label53:setFontSize(10);
    obj.label53:setText("Outro");
    obj.label53:setHorzTextAlign("center");
    obj.label53:setWordWrap(true);
    obj.label53:setTextTrimming("none");
    obj.label53:setAutoSize(true);
    obj.label53:setName("label53");

    obj.flowPart211 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart211:setParent(obj.flowLayout14);
    obj.flowPart211:setMinWidth(50);
    obj.flowPart211:setMaxWidth(50);
    obj.flowPart211:setHeight(15);
    obj.flowPart211:setName("flowPart211");

    obj.label54 = GUI.fromHandle(_obj_newObject("label"));
    obj.label54:setParent(obj.flowPart211);
    obj.label54:setAlign("top");
    obj.label54:setFontSize(10);
    obj.label54:setText("Encontrão");
    obj.label54:setHorzTextAlign("center");
    obj.label54:setWordWrap(true);
    obj.label54:setTextTrimming("none");
    obj.label54:setAutoSize(true);
    obj.label54:setName("label54");

    obj.flowPart212 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart212:setParent(obj.flowLayout14);
    obj.flowPart212:setMinWidth(50);
    obj.flowPart212:setMaxWidth(50);
    obj.flowPart212:setHeight(15);
    obj.flowPart212:setName("flowPart212");

    obj.label55 = GUI.fromHandle(_obj_newObject("label"));
    obj.label55:setParent(obj.flowPart212);
    obj.label55:setAlign("top");
    obj.label55:setFontSize(10);
    obj.label55:setText("Truque Sujo");
    obj.label55:setHorzTextAlign("center");
    obj.label55:setWordWrap(true);
    obj.label55:setTextTrimming("none");
    obj.label55:setAutoSize(true);
    obj.label55:setName("label55");

    obj.flowPart213 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart213:setParent(obj.flowLayout14);
    obj.flowPart213:setMinWidth(50);
    obj.flowPart213:setMaxWidth(50);
    obj.flowPart213:setHeight(15);
    obj.flowPart213:setName("flowPart213");

    obj.label56 = GUI.fromHandle(_obj_newObject("label"));
    obj.label56:setParent(obj.flowPart213);
    obj.label56:setAlign("top");
    obj.label56:setFontSize(10);
    obj.label56:setText("Desarmar");
    obj.label56:setHorzTextAlign("center");
    obj.label56:setWordWrap(true);
    obj.label56:setTextTrimming("none");
    obj.label56:setAutoSize(true);
    obj.label56:setName("label56");

    obj.flowPart214 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart214:setParent(obj.flowLayout14);
    obj.flowPart214:setMinWidth(50);
    obj.flowPart214:setMaxWidth(50);
    obj.flowPart214:setHeight(15);
    obj.flowPart214:setName("flowPart214");

    obj.label57 = GUI.fromHandle(_obj_newObject("label"));
    obj.label57:setParent(obj.flowPart214);
    obj.label57:setAlign("top");
    obj.label57:setFontSize(10);
    obj.label57:setText("Agarrar");
    obj.label57:setHorzTextAlign("center");
    obj.label57:setWordWrap(true);
    obj.label57:setTextTrimming("none");
    obj.label57:setAutoSize(true);
    obj.label57:setName("label57");

    obj.flowPart215 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart215:setParent(obj.flowLayout14);
    obj.flowPart215:setMinWidth(50);
    obj.flowPart215:setMaxWidth(50);
    obj.flowPart215:setHeight(15);
    obj.flowPart215:setName("flowPart215");

    obj.label58 = GUI.fromHandle(_obj_newObject("label"));
    obj.label58:setParent(obj.flowPart215);
    obj.label58:setAlign("top");
    obj.label58:setFontSize(10);
    obj.label58:setText("Atropelar");
    obj.label58:setHorzTextAlign("center");
    obj.label58:setWordWrap(true);
    obj.label58:setTextTrimming("none");
    obj.label58:setAutoSize(true);
    obj.label58:setName("label58");

    obj.flowPart216 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart216:setParent(obj.flowLayout14);
    obj.flowPart216:setMinWidth(50);
    obj.flowPart216:setMaxWidth(50);
    obj.flowPart216:setHeight(15);
    obj.flowPart216:setName("flowPart216");

    obj.label59 = GUI.fromHandle(_obj_newObject("label"));
    obj.label59:setParent(obj.flowPart216);
    obj.label59:setAlign("top");
    obj.label59:setFontSize(10);
    obj.label59:setText("Reposição");
    obj.label59:setHorzTextAlign("center");
    obj.label59:setWordWrap(true);
    obj.label59:setTextTrimming("none");
    obj.label59:setAutoSize(true);
    obj.label59:setName("label59");

    obj.flowPart217 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart217:setParent(obj.flowLayout14);
    obj.flowPart217:setMinWidth(50);
    obj.flowPart217:setMaxWidth(50);
    obj.flowPart217:setHeight(15);
    obj.flowPart217:setName("flowPart217");

    obj.label60 = GUI.fromHandle(_obj_newObject("label"));
    obj.label60:setParent(obj.flowPart217);
    obj.label60:setAlign("top");
    obj.label60:setFontSize(10);
    obj.label60:setText("Roubar");
    obj.label60:setHorzTextAlign("center");
    obj.label60:setWordWrap(true);
    obj.label60:setTextTrimming("none");
    obj.label60:setAutoSize(true);
    obj.label60:setName("label60");

    obj.flowPart218 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart218:setParent(obj.flowLayout14);
    obj.flowPart218:setMinWidth(50);
    obj.flowPart218:setMaxWidth(50);
    obj.flowPart218:setHeight(15);
    obj.flowPart218:setName("flowPart218");

    obj.label61 = GUI.fromHandle(_obj_newObject("label"));
    obj.label61:setParent(obj.flowPart218);
    obj.label61:setAlign("top");
    obj.label61:setFontSize(10);
    obj.label61:setText("Separar");
    obj.label61:setHorzTextAlign("center");
    obj.label61:setWordWrap(true);
    obj.label61:setTextTrimming("none");
    obj.label61:setAutoSize(true);
    obj.label61:setName("label61");

    obj.flowPart219 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart219:setParent(obj.flowLayout14);
    obj.flowPart219:setMinWidth(50);
    obj.flowPart219:setMaxWidth(50);
    obj.flowPart219:setHeight(15);
    obj.flowPart219:setName("flowPart219");

    obj.label62 = GUI.fromHandle(_obj_newObject("label"));
    obj.label62:setParent(obj.flowPart219);
    obj.label62:setAlign("top");
    obj.label62:setFontSize(10);
    obj.label62:setText("Derrubar");
    obj.label62:setHorzTextAlign("center");
    obj.label62:setWordWrap(true);
    obj.label62:setTextTrimming("none");
    obj.label62:setAutoSize(true);
    obj.label62:setName("label62");

    obj.flowLineBreak14 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak14:setParent(obj.flowLayout14);
    obj.flowLineBreak14:setName("flowLineBreak14");

    obj.flowPart220 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart220:setParent(obj.flowLayout14);
    obj.flowPart220:setMinWidth(50);
    obj.flowPart220:setMaxWidth(50);
    obj.flowPart220:setHeight(15);
    obj.flowPart220:setName("flowPart220");

    obj.label63 = GUI.fromHandle(_obj_newObject("label"));
    obj.label63:setParent(obj.flowPart220);
    obj.label63:setAlign("top");
    obj.label63:setFontSize(10);
    obj.label63:setText("BMC");
    obj.label63:setHorzTextAlign("center");
    obj.label63:setWordWrap(true);
    obj.label63:setTextTrimming("none");
    obj.label63:setAutoSize(true);
    obj.label63:setName("label63");

    obj.flowPart221 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart221:setParent(obj.flowLayout14);
    obj.flowPart221:setMinWidth(50);
    obj.flowPart221:setMaxWidth(50);
    obj.flowPart221:setHeight(20);
    obj.flowPart221:setName("flowPart221");

    obj.checkBox28 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox28:setParent(obj.flowPart221);
    obj.checkBox28:setField("bmcInvestidaCheck");
    obj.checkBox28:setLeft(1);
    obj.checkBox28:setFontSize(10);
    obj.checkBox28:setHeight(20);
    obj.checkBox28:setName("checkBox28");

    obj.edit117 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit117:setParent(obj.flowPart221);
    obj.edit117:setField("bmcInvestida");
    obj.edit117:setLeft(18);
    obj.edit117:setHeight(25);
    obj.edit117:setWidth(30);
    obj.edit117:setHorzTextAlign("center");
    obj.edit117:setFontSize(12);
    obj.edit117:setType("number");
    obj.edit117:setName("edit117");

    obj.flowPart222 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart222:setParent(obj.flowLayout14);
    obj.flowPart222:setMinWidth(50);
    obj.flowPart222:setMaxWidth(50);
    obj.flowPart222:setHeight(20);
    obj.flowPart222:setName("flowPart222");

    obj.checkBox29 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox29:setParent(obj.flowPart222);
    obj.checkBox29:setField("bmcEncontraoCheck");
    obj.checkBox29:setLeft(1);
    obj.checkBox29:setFontSize(10);
    obj.checkBox29:setHeight(20);
    obj.checkBox29:setName("checkBox29");

    obj.edit118 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit118:setParent(obj.flowPart222);
    obj.edit118:setField("bmcEncontrao");
    obj.edit118:setLeft(18);
    obj.edit118:setHeight(25);
    obj.edit118:setWidth(30);
    obj.edit118:setHorzTextAlign("center");
    obj.edit118:setFontSize(12);
    obj.edit118:setType("number");
    obj.edit118:setName("edit118");

    obj.flowPart223 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart223:setParent(obj.flowLayout14);
    obj.flowPart223:setMinWidth(50);
    obj.flowPart223:setMaxWidth(50);
    obj.flowPart223:setHeight(20);
    obj.flowPart223:setName("flowPart223");

    obj.checkBox30 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox30:setParent(obj.flowPart223);
    obj.checkBox30:setField("bmcTruqueSujoCheck");
    obj.checkBox30:setLeft(1);
    obj.checkBox30:setFontSize(10);
    obj.checkBox30:setHeight(20);
    obj.checkBox30:setName("checkBox30");

    obj.edit119 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit119:setParent(obj.flowPart223);
    obj.edit119:setField("bmcTruqueSujo");
    obj.edit119:setLeft(18);
    obj.edit119:setHeight(25);
    obj.edit119:setWidth(30);
    obj.edit119:setHorzTextAlign("center");
    obj.edit119:setFontSize(12);
    obj.edit119:setType("number");
    obj.edit119:setName("edit119");

    obj.flowPart224 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart224:setParent(obj.flowLayout14);
    obj.flowPart224:setMinWidth(50);
    obj.flowPart224:setMaxWidth(50);
    obj.flowPart224:setHeight(20);
    obj.flowPart224:setName("flowPart224");

    obj.checkBox31 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox31:setParent(obj.flowPart224);
    obj.checkBox31:setField("bmcDesarmarCheck");
    obj.checkBox31:setLeft(1);
    obj.checkBox31:setFontSize(10);
    obj.checkBox31:setHeight(20);
    obj.checkBox31:setName("checkBox31");

    obj.edit120 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit120:setParent(obj.flowPart224);
    obj.edit120:setField("bmcDesarmar");
    obj.edit120:setLeft(18);
    obj.edit120:setHeight(25);
    obj.edit120:setWidth(30);
    obj.edit120:setHorzTextAlign("center");
    obj.edit120:setFontSize(12);
    obj.edit120:setType("number");
    obj.edit120:setName("edit120");

    obj.flowPart225 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart225:setParent(obj.flowLayout14);
    obj.flowPart225:setMinWidth(50);
    obj.flowPart225:setMaxWidth(50);
    obj.flowPart225:setHeight(20);
    obj.flowPart225:setName("flowPart225");

    obj.checkBox32 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox32:setParent(obj.flowPart225);
    obj.checkBox32:setField("bmcAgarrarCheck");
    obj.checkBox32:setLeft(1);
    obj.checkBox32:setFontSize(10);
    obj.checkBox32:setHeight(20);
    obj.checkBox32:setName("checkBox32");

    obj.edit121 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit121:setParent(obj.flowPart225);
    obj.edit121:setField("bmcAgarrar");
    obj.edit121:setLeft(18);
    obj.edit121:setHeight(25);
    obj.edit121:setWidth(30);
    obj.edit121:setHorzTextAlign("center");
    obj.edit121:setFontSize(12);
    obj.edit121:setType("number");
    obj.edit121:setName("edit121");

    obj.flowPart226 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart226:setParent(obj.flowLayout14);
    obj.flowPart226:setMinWidth(50);
    obj.flowPart226:setMaxWidth(50);
    obj.flowPart226:setHeight(20);
    obj.flowPart226:setName("flowPart226");

    obj.checkBox33 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox33:setParent(obj.flowPart226);
    obj.checkBox33:setField("bmcAtropelarCheck");
    obj.checkBox33:setLeft(1);
    obj.checkBox33:setFontSize(10);
    obj.checkBox33:setHeight(20);
    obj.checkBox33:setName("checkBox33");

    obj.edit122 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit122:setParent(obj.flowPart226);
    obj.edit122:setField("bmcAtropelar");
    obj.edit122:setLeft(18);
    obj.edit122:setHeight(25);
    obj.edit122:setWidth(30);
    obj.edit122:setHorzTextAlign("center");
    obj.edit122:setFontSize(12);
    obj.edit122:setType("number");
    obj.edit122:setName("edit122");

    obj.flowPart227 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart227:setParent(obj.flowLayout14);
    obj.flowPart227:setMinWidth(50);
    obj.flowPart227:setMaxWidth(50);
    obj.flowPart227:setHeight(20);
    obj.flowPart227:setName("flowPart227");

    obj.checkBox34 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox34:setParent(obj.flowPart227);
    obj.checkBox34:setField("bmcReposicionarCheck");
    obj.checkBox34:setLeft(1);
    obj.checkBox34:setFontSize(10);
    obj.checkBox34:setHeight(20);
    obj.checkBox34:setName("checkBox34");

    obj.edit123 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit123:setParent(obj.flowPart227);
    obj.edit123:setField("bmcReposicionar");
    obj.edit123:setLeft(18);
    obj.edit123:setHeight(25);
    obj.edit123:setWidth(30);
    obj.edit123:setHorzTextAlign("center");
    obj.edit123:setFontSize(12);
    obj.edit123:setType("number");
    obj.edit123:setName("edit123");

    obj.flowPart228 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart228:setParent(obj.flowLayout14);
    obj.flowPart228:setMinWidth(50);
    obj.flowPart228:setMaxWidth(50);
    obj.flowPart228:setHeight(20);
    obj.flowPart228:setName("flowPart228");

    obj.checkBox35 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox35:setParent(obj.flowPart228);
    obj.checkBox35:setField("bmcRoubarCheck");
    obj.checkBox35:setLeft(1);
    obj.checkBox35:setFontSize(10);
    obj.checkBox35:setHeight(20);
    obj.checkBox35:setName("checkBox35");

    obj.edit124 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit124:setParent(obj.flowPart228);
    obj.edit124:setField("bmcRoubar");
    obj.edit124:setLeft(18);
    obj.edit124:setHeight(25);
    obj.edit124:setWidth(30);
    obj.edit124:setHorzTextAlign("center");
    obj.edit124:setFontSize(12);
    obj.edit124:setType("number");
    obj.edit124:setName("edit124");

    obj.flowPart229 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart229:setParent(obj.flowLayout14);
    obj.flowPart229:setMinWidth(50);
    obj.flowPart229:setMaxWidth(50);
    obj.flowPart229:setHeight(20);
    obj.flowPart229:setName("flowPart229");

    obj.checkBox36 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox36:setParent(obj.flowPart229);
    obj.checkBox36:setField("bmcSepararCheck");
    obj.checkBox36:setLeft(1);
    obj.checkBox36:setFontSize(10);
    obj.checkBox36:setHeight(20);
    obj.checkBox36:setName("checkBox36");

    obj.edit125 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit125:setParent(obj.flowPart229);
    obj.edit125:setField("bmcSeparar");
    obj.edit125:setLeft(18);
    obj.edit125:setHeight(25);
    obj.edit125:setWidth(30);
    obj.edit125:setHorzTextAlign("center");
    obj.edit125:setFontSize(12);
    obj.edit125:setType("number");
    obj.edit125:setName("edit125");

    obj.flowPart230 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart230:setParent(obj.flowLayout14);
    obj.flowPart230:setMinWidth(50);
    obj.flowPart230:setMaxWidth(50);
    obj.flowPart230:setHeight(20);
    obj.flowPart230:setName("flowPart230");

    obj.checkBox37 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox37:setParent(obj.flowPart230);
    obj.checkBox37:setField("bmcDerrubarCheck");
    obj.checkBox37:setLeft(1);
    obj.checkBox37:setFontSize(10);
    obj.checkBox37:setHeight(20);
    obj.checkBox37:setName("checkBox37");

    obj.edit126 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit126:setParent(obj.flowPart230);
    obj.edit126:setField("bmcDerrubar");
    obj.edit126:setLeft(18);
    obj.edit126:setHeight(25);
    obj.edit126:setWidth(30);
    obj.edit126:setHorzTextAlign("center");
    obj.edit126:setFontSize(12);
    obj.edit126:setType("number");
    obj.edit126:setName("edit126");

    obj.flowLineBreak15 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak15:setParent(obj.flowLayout14);
    obj.flowLineBreak15:setName("flowLineBreak15");

    obj.flowPart231 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart231:setParent(obj.flowLayout14);
    obj.flowPart231:setMinWidth(50);
    obj.flowPart231:setMaxWidth(50);
    obj.flowPart231:setHeight(15);
    obj.flowPart231:setName("flowPart231");

    obj.label64 = GUI.fromHandle(_obj_newObject("label"));
    obj.label64:setParent(obj.flowPart231);
    obj.label64:setAlign("top");
    obj.label64:setFontSize(10);
    obj.label64:setText("BMD");
    obj.label64:setHorzTextAlign("center");
    obj.label64:setWordWrap(true);
    obj.label64:setTextTrimming("none");
    obj.label64:setAutoSize(true);
    obj.label64:setName("label64");

    obj.flowPart232 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart232:setParent(obj.flowLayout14);
    obj.flowPart232:setMinWidth(50);
    obj.flowPart232:setMaxWidth(50);
    obj.flowPart232:setHeight(20);
    obj.flowPart232:setName("flowPart232");

    obj.checkBox38 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox38:setParent(obj.flowPart232);
    obj.checkBox38:setField("bmdInvestidaCheck");
    obj.checkBox38:setLeft(1);
    obj.checkBox38:setFontSize(10);
    obj.checkBox38:setHeight(20);
    obj.checkBox38:setName("checkBox38");

    obj.edit127 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit127:setParent(obj.flowPart232);
    obj.edit127:setField("bmdInvestida");
    obj.edit127:setLeft(18);
    obj.edit127:setHeight(25);
    obj.edit127:setWidth(30);
    obj.edit127:setHorzTextAlign("center");
    obj.edit127:setFontSize(12);
    obj.edit127:setType("number");
    obj.edit127:setName("edit127");

    obj.flowPart233 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart233:setParent(obj.flowLayout14);
    obj.flowPart233:setMinWidth(50);
    obj.flowPart233:setMaxWidth(50);
    obj.flowPart233:setHeight(20);
    obj.flowPart233:setName("flowPart233");

    obj.checkBox39 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox39:setParent(obj.flowPart233);
    obj.checkBox39:setField("bmdEncontraoCheck");
    obj.checkBox39:setLeft(1);
    obj.checkBox39:setFontSize(10);
    obj.checkBox39:setHeight(20);
    obj.checkBox39:setName("checkBox39");

    obj.edit128 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit128:setParent(obj.flowPart233);
    obj.edit128:setField("bmdEncontrao");
    obj.edit128:setLeft(18);
    obj.edit128:setHeight(25);
    obj.edit128:setWidth(30);
    obj.edit128:setHorzTextAlign("center");
    obj.edit128:setFontSize(12);
    obj.edit128:setType("number");
    obj.edit128:setName("edit128");

    obj.flowPart234 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart234:setParent(obj.flowLayout14);
    obj.flowPart234:setMinWidth(50);
    obj.flowPart234:setMaxWidth(50);
    obj.flowPart234:setHeight(20);
    obj.flowPart234:setName("flowPart234");

    obj.checkBox40 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox40:setParent(obj.flowPart234);
    obj.checkBox40:setField("bmdTruqueSujoCheck");
    obj.checkBox40:setLeft(1);
    obj.checkBox40:setFontSize(10);
    obj.checkBox40:setHeight(20);
    obj.checkBox40:setName("checkBox40");

    obj.edit129 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit129:setParent(obj.flowPart234);
    obj.edit129:setField("bmdTruqueSujo");
    obj.edit129:setLeft(18);
    obj.edit129:setHeight(25);
    obj.edit129:setWidth(30);
    obj.edit129:setHorzTextAlign("center");
    obj.edit129:setFontSize(12);
    obj.edit129:setType("number");
    obj.edit129:setName("edit129");

    obj.flowPart235 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart235:setParent(obj.flowLayout14);
    obj.flowPart235:setMinWidth(50);
    obj.flowPart235:setMaxWidth(50);
    obj.flowPart235:setHeight(20);
    obj.flowPart235:setName("flowPart235");

    obj.checkBox41 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox41:setParent(obj.flowPart235);
    obj.checkBox41:setField("bmdDesarmarCheck");
    obj.checkBox41:setLeft(1);
    obj.checkBox41:setFontSize(10);
    obj.checkBox41:setHeight(20);
    obj.checkBox41:setName("checkBox41");

    obj.edit130 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit130:setParent(obj.flowPart235);
    obj.edit130:setField("bmdDesarmar");
    obj.edit130:setLeft(18);
    obj.edit130:setHeight(25);
    obj.edit130:setWidth(30);
    obj.edit130:setHorzTextAlign("center");
    obj.edit130:setFontSize(12);
    obj.edit130:setType("number");
    obj.edit130:setName("edit130");

    obj.flowPart236 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart236:setParent(obj.flowLayout14);
    obj.flowPart236:setMinWidth(50);
    obj.flowPart236:setMaxWidth(50);
    obj.flowPart236:setHeight(20);
    obj.flowPart236:setName("flowPart236");

    obj.checkBox42 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox42:setParent(obj.flowPart236);
    obj.checkBox42:setField("bmdAgarrarCheck");
    obj.checkBox42:setLeft(1);
    obj.checkBox42:setFontSize(10);
    obj.checkBox42:setHeight(20);
    obj.checkBox42:setName("checkBox42");

    obj.edit131 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit131:setParent(obj.flowPart236);
    obj.edit131:setField("bmdAgarrar");
    obj.edit131:setLeft(18);
    obj.edit131:setHeight(25);
    obj.edit131:setWidth(30);
    obj.edit131:setHorzTextAlign("center");
    obj.edit131:setFontSize(12);
    obj.edit131:setType("number");
    obj.edit131:setName("edit131");

    obj.flowPart237 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart237:setParent(obj.flowLayout14);
    obj.flowPart237:setMinWidth(50);
    obj.flowPart237:setMaxWidth(50);
    obj.flowPart237:setHeight(20);
    obj.flowPart237:setName("flowPart237");

    obj.checkBox43 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox43:setParent(obj.flowPart237);
    obj.checkBox43:setField("bmdAtropelarCheck");
    obj.checkBox43:setLeft(1);
    obj.checkBox43:setFontSize(10);
    obj.checkBox43:setHeight(20);
    obj.checkBox43:setName("checkBox43");

    obj.edit132 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit132:setParent(obj.flowPart237);
    obj.edit132:setField("bmdAtropelar");
    obj.edit132:setLeft(18);
    obj.edit132:setHeight(25);
    obj.edit132:setWidth(30);
    obj.edit132:setHorzTextAlign("center");
    obj.edit132:setFontSize(12);
    obj.edit132:setType("number");
    obj.edit132:setName("edit132");

    obj.flowPart238 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart238:setParent(obj.flowLayout14);
    obj.flowPart238:setMinWidth(50);
    obj.flowPart238:setMaxWidth(50);
    obj.flowPart238:setHeight(20);
    obj.flowPart238:setName("flowPart238");

    obj.checkBox44 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox44:setParent(obj.flowPart238);
    obj.checkBox44:setField("bmdReposicionarCheck");
    obj.checkBox44:setLeft(1);
    obj.checkBox44:setFontSize(10);
    obj.checkBox44:setHeight(20);
    obj.checkBox44:setName("checkBox44");

    obj.edit133 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit133:setParent(obj.flowPart238);
    obj.edit133:setField("bmdReposicionar");
    obj.edit133:setLeft(18);
    obj.edit133:setHeight(25);
    obj.edit133:setWidth(30);
    obj.edit133:setHorzTextAlign("center");
    obj.edit133:setFontSize(12);
    obj.edit133:setType("number");
    obj.edit133:setName("edit133");

    obj.flowPart239 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart239:setParent(obj.flowLayout14);
    obj.flowPart239:setMinWidth(50);
    obj.flowPart239:setMaxWidth(50);
    obj.flowPart239:setHeight(20);
    obj.flowPart239:setName("flowPart239");

    obj.checkBox45 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox45:setParent(obj.flowPart239);
    obj.checkBox45:setField("bmdRoubarCheck");
    obj.checkBox45:setLeft(1);
    obj.checkBox45:setFontSize(10);
    obj.checkBox45:setHeight(20);
    obj.checkBox45:setName("checkBox45");

    obj.edit134 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit134:setParent(obj.flowPart239);
    obj.edit134:setField("bmdRoubar");
    obj.edit134:setLeft(18);
    obj.edit134:setHeight(25);
    obj.edit134:setWidth(30);
    obj.edit134:setHorzTextAlign("center");
    obj.edit134:setFontSize(12);
    obj.edit134:setType("number");
    obj.edit134:setName("edit134");

    obj.flowPart240 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart240:setParent(obj.flowLayout14);
    obj.flowPart240:setMinWidth(50);
    obj.flowPart240:setMaxWidth(50);
    obj.flowPart240:setHeight(20);
    obj.flowPart240:setName("flowPart240");

    obj.checkBox46 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox46:setParent(obj.flowPart240);
    obj.checkBox46:setField("bmdSepararCheck");
    obj.checkBox46:setLeft(1);
    obj.checkBox46:setFontSize(10);
    obj.checkBox46:setHeight(20);
    obj.checkBox46:setName("checkBox46");

    obj.edit135 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit135:setParent(obj.flowPart240);
    obj.edit135:setField("bmdSeparar");
    obj.edit135:setLeft(18);
    obj.edit135:setHeight(25);
    obj.edit135:setWidth(30);
    obj.edit135:setHorzTextAlign("center");
    obj.edit135:setFontSize(12);
    obj.edit135:setType("number");
    obj.edit135:setName("edit135");

    obj.flowPart241 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart241:setParent(obj.flowLayout14);
    obj.flowPart241:setMinWidth(50);
    obj.flowPart241:setMaxWidth(50);
    obj.flowPart241:setHeight(20);
    obj.flowPart241:setName("flowPart241");

    obj.checkBox47 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox47:setParent(obj.flowPart241);
    obj.checkBox47:setField("bmdDerrubarCheck");
    obj.checkBox47:setLeft(1);
    obj.checkBox47:setFontSize(10);
    obj.checkBox47:setHeight(20);
    obj.checkBox47:setName("checkBox47");

    obj.edit136 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit136:setParent(obj.flowPart241);
    obj.edit136:setField("bmdDerrubar");
    obj.edit136:setLeft(18);
    obj.edit136:setHeight(25);
    obj.edit136:setWidth(30);
    obj.edit136:setHorzTextAlign("center");
    obj.edit136:setFontSize(12);
    obj.edit136:setType("number");
    obj.edit136:setName("edit136");


			local function getMOD(valor)
				if valor~= nil then
					local mod = math.floor(((tonumber(valor) or 10) / 2) - 5);
					if (mod >= 0) then
						mod = "+" .. mod;
					end;					   
					return mod;
				else
					return "+0";
				end;
			end;
			


    obj.rectangle14 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle14:setParent(obj.scrollBox1);
    obj.rectangle14:setLeft(0);
    obj.rectangle14:setTop(0);
    obj.rectangle14:setWidth(1107);
    obj.rectangle14:setHeight(110);
    obj.rectangle14:setColor("black");
    obj.rectangle14:setName("rectangle14");

    obj.label65 = GUI.fromHandle(_obj_newObject("label"));
    obj.label65:setParent(obj.rectangle14);
    obj.label65:setLeft(5);
    obj.label65:setTop(5);
    obj.label65:setWidth(50);
    obj.label65:setHeight(25);
    obj.label65:setText("CLASSE");
    obj.label65:setName("label65");

    obj.edit137 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit137:setParent(obj.rectangle14);
    obj.edit137:setVertTextAlign("center");
    obj.edit137:setLeft(60);
    obj.edit137:setTop(5);
    obj.edit137:setWidth(380);
    obj.edit137:setHeight(25);
    obj.edit137:setField("classe1");
    obj.edit137:setName("edit137");

    obj.label66 = GUI.fromHandle(_obj_newObject("label"));
    obj.label66:setParent(obj.rectangle14);
    obj.label66:setLeft(5);
    obj.label66:setTop(30);
    obj.label66:setWidth(50);
    obj.label66:setHeight(25);
    obj.label66:setText("RAÇA");
    obj.label66:setName("label66");

    obj.edit138 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit138:setParent(obj.rectangle14);
    obj.edit138:setVertTextAlign("center");
    obj.edit138:setLeft(60);
    obj.edit138:setTop(30);
    obj.edit138:setWidth(380);
    obj.edit138:setHeight(25);
    obj.edit138:setField("raca");
    obj.edit138:setName("edit138");

    obj.label67 = GUI.fromHandle(_obj_newObject("label"));
    obj.label67:setParent(obj.rectangle14);
    obj.label67:setLeft(5);
    obj.label67:setTop(55);
    obj.label67:setWidth(50);
    obj.label67:setHeight(25);
    obj.label67:setText("TIPO");
    obj.label67:setName("label67");

    obj.edit139 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit139:setParent(obj.rectangle14);
    obj.edit139:setVertTextAlign("center");
    obj.edit139:setLeft(60);
    obj.edit139:setTop(55);
    obj.edit139:setWidth(380);
    obj.edit139:setHeight(25);
    obj.edit139:setField("tipo");
    obj.edit139:setName("edit139");

    obj.label68 = GUI.fromHandle(_obj_newObject("label"));
    obj.label68:setParent(obj.rectangle14);
    obj.label68:setLeft(5);
    obj.label68:setTop(80);
    obj.label68:setWidth(70);
    obj.label68:setHeight(25);
    obj.label68:setText("SUBTIPO");
    obj.label68:setName("label68");

    obj.edit140 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit140:setParent(obj.rectangle14);
    obj.edit140:setVertTextAlign("center");
    obj.edit140:setLeft(60);
    obj.edit140:setTop(80);
    obj.edit140:setWidth(380);
    obj.edit140:setHeight(25);
    obj.edit140:setField("subtipo");
    obj.edit140:setName("edit140");

    obj.label69 = GUI.fromHandle(_obj_newObject("label"));
    obj.label69:setParent(obj.rectangle14);
    obj.label69:setLeft(445);
    obj.label69:setTop(5);
    obj.label69:setWidth(50);
    obj.label69:setHeight(25);
    obj.label69:setText("NOME");
    obj.label69:setName("label69");

    obj.edit141 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit141:setParent(obj.rectangle14);
    obj.edit141:setVertTextAlign("center");
    obj.edit141:setLeft(520);
    obj.edit141:setTop(5);
    obj.edit141:setWidth(290);
    obj.edit141:setHeight(25);
    obj.edit141:setField("nome");
    obj.edit141:setName("edit141");

    obj.label70 = GUI.fromHandle(_obj_newObject("label"));
    obj.label70:setParent(obj.rectangle14);
    obj.label70:setLeft(445);
    obj.label70:setTop(30);
    obj.label70:setWidth(70);
    obj.label70:setHeight(25);
    obj.label70:setText("TENDÊNCIA");
    obj.label70:setName("label70");

    obj.edit142 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit142:setParent(obj.rectangle14);
    obj.edit142:setVertTextAlign("center");
    obj.edit142:setLeft(520);
    obj.edit142:setTop(30);
    obj.edit142:setWidth(290);
    obj.edit142:setHeight(25);
    obj.edit142:setField("tendencia");
    obj.edit142:setName("edit142");

    obj.label71 = GUI.fromHandle(_obj_newObject("label"));
    obj.label71:setParent(obj.rectangle14);
    obj.label71:setLeft(445);
    obj.label71:setTop(55);
    obj.label71:setWidth(70);
    obj.label71:setHeight(25);
    obj.label71:setText("CULTO");
    obj.label71:setName("label71");

    obj.edit143 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit143:setParent(obj.rectangle14);
    obj.edit143:setVertTextAlign("center");
    obj.edit143:setLeft(520);
    obj.edit143:setTop(55);
    obj.edit143:setWidth(290);
    obj.edit143:setHeight(25);
    obj.edit143:setField("culto");
    obj.edit143:setName("edit143");

    obj.label72 = GUI.fromHandle(_obj_newObject("label"));
    obj.label72:setParent(obj.rectangle14);
    obj.label72:setLeft(445);
    obj.label72:setTop(80);
    obj.label72:setWidth(70);
    obj.label72:setHeight(25);
    obj.label72:setText("TITULO");
    obj.label72:setName("label72");

    obj.edit144 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit144:setParent(obj.rectangle14);
    obj.edit144:setVertTextAlign("center");
    obj.edit144:setLeft(520);
    obj.edit144:setTop(80);
    obj.edit144:setWidth(290);
    obj.edit144:setHeight(25);
    obj.edit144:setField("posto");
    obj.edit144:setName("edit144");

    obj.label73 = GUI.fromHandle(_obj_newObject("label"));
    obj.label73:setParent(obj.rectangle14);
    obj.label73:setLeft(815);
    obj.label73:setTop(5);
    obj.label73:setWidth(70);
    obj.label73:setHeight(25);
    obj.label73:setText("NEP");
    obj.label73:setName("label73");

    obj.rectangle15 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle15:setParent(obj.rectangle14);
    obj.rectangle15:setLeft(890);
    obj.rectangle15:setTop(5);
    obj.rectangle15:setWidth(70);
    obj.rectangle15:setHeight(25);
    obj.rectangle15:setColor("black");
    obj.rectangle15:setStrokeColor("white");
    obj.rectangle15:setStrokeSize(1);
    obj.rectangle15:setName("rectangle15");

    obj.label74 = GUI.fromHandle(_obj_newObject("label"));
    obj.label74:setParent(obj.rectangle14);
    obj.label74:setField("nep");
    obj.label74:setLeft(890);
    obj.label74:setTop(5);
    obj.label74:setWidth(70);
    obj.label74:setHeight(25);
    obj.label74:setHorzTextAlign("center");
    obj.label74:setName("label74");

    obj.label75 = GUI.fromHandle(_obj_newObject("label"));
    obj.label75:setParent(obj.rectangle14);
    obj.label75:setLeft(975);
    obj.label75:setTop(5);
    obj.label75:setWidth(60);
    obj.label75:setHeight(25);
    obj.label75:setText("MÍTICO");
    obj.label75:setName("label75");

    obj.edit145 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit145:setParent(obj.rectangle14);
    obj.edit145:setVertTextAlign("center");
    obj.edit145:setLeft(1030);
    obj.edit145:setTop(5);
    obj.edit145:setWidth(70);
    obj.edit145:setHeight(25);
    obj.edit145:setField("ajuste");
    obj.edit145:setName("edit145");

    obj.label76 = GUI.fromHandle(_obj_newObject("label"));
    obj.label76:setParent(obj.rectangle14);
    obj.label76:setLeft(815);
    obj.label76:setTop(30);
    obj.label76:setWidth(70);
    obj.label76:setHeight(25);
    obj.label76:setText("XP ATUAL");
    obj.label76:setName("label76");

    obj.edit146 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit146:setParent(obj.rectangle14);
    obj.edit146:setVertTextAlign("center");
    obj.edit146:setLeft(890);
    obj.edit146:setTop(30);
    obj.edit146:setWidth(210);
    obj.edit146:setHeight(25);
    obj.edit146:setField("xpAtual");
    obj.edit146:setName("edit146");

    obj.button1 = GUI.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj.rectangle14);
    obj.button1:setLeft(815);
    obj.button1:setTop(56);
    obj.button1:setWidth(50);
    obj.button1:setText("ADD");
    obj.button1:setName("button1");

    obj.edit147 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit147:setParent(obj.rectangle14);
    obj.edit147:setVertTextAlign("center");
    obj.edit147:setLeft(890);
    obj.edit147:setTop(55);
    obj.edit147:setWidth(210);
    obj.edit147:setHeight(25);
    obj.edit147:setField("xpNova");
    obj.edit147:setName("edit147");

    obj.label77 = GUI.fromHandle(_obj_newObject("label"));
    obj.label77:setParent(obj.rectangle14);
    obj.label77:setLeft(815);
    obj.label77:setTop(80);
    obj.label77:setWidth(70);
    obj.label77:setHeight(25);
    obj.label77:setText("XP ALVO");
    obj.label77:setName("label77");

    obj.rectangle16 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle16:setParent(obj.rectangle14);
    obj.rectangle16:setLeft(890);
    obj.rectangle16:setTop(80);
    obj.rectangle16:setWidth(100);
    obj.rectangle16:setHeight(25);
    obj.rectangle16:setColor("black");
    obj.rectangle16:setStrokeColor("white");
    obj.rectangle16:setStrokeSize(1);
    obj.rectangle16:setName("rectangle16");

    obj.label78 = GUI.fromHandle(_obj_newObject("label"));
    obj.label78:setParent(obj.rectangle14);
    obj.label78:setField("xpNivel");
    obj.label78:setLeft(890);
    obj.label78:setTop(80);
    obj.label78:setWidth(100);
    obj.label78:setHeight(25);
    obj.label78:setHorzTextAlign("center");
    obj.label78:setName("label78");

    obj.comboBox4 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox4:setParent(obj.rectangle14);
    obj.comboBox4:setField("xpVelocidade");
    obj.comboBox4:setLeft(1000);
    obj.comboBox4:setTop(80);
    obj.comboBox4:setWidth(100);
    obj.comboBox4:setHeight(25);
    obj.comboBox4:setItems({'Rapido', 'Medio', 'Lento'});
    obj.comboBox4:setName("comboBox4");

    obj.dataLink16 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink16:setParent(obj.rectangle14);
    obj.dataLink16:setFields({'xpAtual', 'xpVelocidade'});
    obj.dataLink16:setName("dataLink16");

    obj.rectangle17 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle17:setParent(obj.scrollBox1);
    obj.rectangle17:setLeft(0);
    obj.rectangle17:setTop(115);
    obj.rectangle17:setWidth(235);
    obj.rectangle17:setHeight(215);
    obj.rectangle17:setColor("black");
    obj.rectangle17:setName("rectangle17");

    obj.label79 = GUI.fromHandle(_obj_newObject("label"));
    obj.label79:setParent(obj.rectangle17);
    obj.label79:setLeft(0);
    obj.label79:setTop(0);
    obj.label79:setWidth(235);
    obj.label79:setHeight(25);
    obj.label79:setText("ATRIBUTOS");
    obj.label79:setHorzTextAlign("center");
    obj.label79:setName("label79");

    obj.label80 = GUI.fromHandle(_obj_newObject("label"));
    obj.label80:setParent(obj.rectangle17);
    obj.label80:setLeft(45);
    obj.label80:setTop(30);
    obj.label80:setWidth(70);
    obj.label80:setHeight(25);
    obj.label80:setText("Real");
    obj.label80:setHorzTextAlign("center");
    obj.label80:setName("label80");

    obj.label81 = GUI.fromHandle(_obj_newObject("label"));
    obj.label81:setParent(obj.rectangle17);
    obj.label81:setLeft(120);
    obj.label81:setTop(30);
    obj.label81:setWidth(70);
    obj.label81:setHeight(25);
    obj.label81:setText("Efetivo");
    obj.label81:setHorzTextAlign("center");
    obj.label81:setName("label81");

    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.rectangle17);
    obj.layout1:setLeft(0);
    obj.layout1:setTop(55);
    obj.layout1:setWidth(275);
    obj.layout1:setHeight(25);
    obj.layout1:setName("layout1");

    obj.button2 = GUI.fromHandle(_obj_newObject("button"));
    obj.button2:setParent(obj.layout1);
    obj.button2:setLeft(5);
    obj.button2:setWidth(35);
    obj.button2:setText("FOR");
    obj.button2:setFontSize(11);
    obj.button2:setName("button2");

    obj.rectangle18 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle18:setParent(obj.layout1);
    obj.rectangle18:setLeft(45);
    obj.rectangle18:setTop(0);
    obj.rectangle18:setWidth(35);
    obj.rectangle18:setHeight(25);
    obj.rectangle18:setColor("black");
    obj.rectangle18:setStrokeColor("white");
    obj.rectangle18:setStrokeSize(1);
    obj.rectangle18:setName("rectangle18");

    obj.label82 = GUI.fromHandle(_obj_newObject("label"));
    obj.label82:setParent(obj.layout1);
    obj.label82:setLeft(45);
    obj.label82:setWidth(35);
    obj.label82:setHeight(25);
    obj.label82:setField("realFor");
    obj.label82:setHorzTextAlign("center");
    obj.label82:setName("label82");

    obj.rectangle19 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle19:setParent(obj.layout1);
    obj.rectangle19:setLeft(80);
    obj.rectangle19:setTop(0);
    obj.rectangle19:setWidth(35);
    obj.rectangle19:setHeight(25);
    obj.rectangle19:setColor("black");
    obj.rectangle19:setStrokeColor("white");
    obj.rectangle19:setStrokeSize(1);
    obj.rectangle19:setName("rectangle19");

    obj.label83 = GUI.fromHandle(_obj_newObject("label"));
    obj.label83:setParent(obj.layout1);
    obj.label83:setField("realModFor");
    obj.label83:setText("0");
    obj.label83:setLeft(80);
    obj.label83:setTop(3);
    obj.label83:setWidth(35);
    obj.label83:setHorzTextAlign("center");
    obj.label83:setName("label83");

    obj.dataLink17 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink17:setParent(obj.layout1);
    obj.dataLink17:setField("realFor");
    obj.dataLink17:setName("dataLink17");

    obj.rectangle20 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle20:setParent(obj.layout1);
    obj.rectangle20:setLeft(120);
    obj.rectangle20:setTop(0);
    obj.rectangle20:setWidth(35);
    obj.rectangle20:setHeight(25);
    obj.rectangle20:setColor("black");
    obj.rectangle20:setStrokeColor("white");
    obj.rectangle20:setStrokeSize(1);
    obj.rectangle20:setName("rectangle20");

    obj.label84 = GUI.fromHandle(_obj_newObject("label"));
    obj.label84:setParent(obj.layout1);
    obj.label84:setLeft(120);
    obj.label84:setWidth(35);
    obj.label84:setHeight(25);
    obj.label84:setField("efetFor");
    obj.label84:setHorzTextAlign("center");
    obj.label84:setName("label84");

    obj.rectangle21 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle21:setParent(obj.layout1);
    obj.rectangle21:setLeft(155);
    obj.rectangle21:setTop(0);
    obj.rectangle21:setWidth(35);
    obj.rectangle21:setHeight(25);
    obj.rectangle21:setColor("black");
    obj.rectangle21:setStrokeColor("white");
    obj.rectangle21:setStrokeSize(1);
    obj.rectangle21:setName("rectangle21");

    obj.label85 = GUI.fromHandle(_obj_newObject("label"));
    obj.label85:setParent(obj.layout1);
    obj.label85:setField("efetModFor");
    obj.label85:setText("0");
    obj.label85:setLeft(155);
    obj.label85:setTop(3);
    obj.label85:setWidth(35);
    obj.label85:setHorzTextAlign("center");
    obj.label85:setName("label85");

    obj.dataLink18 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink18:setParent(obj.layout1);
    obj.dataLink18:setField("efetFor");
    obj.dataLink18:setName("dataLink18");

    obj.layout2 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.rectangle17);
    obj.layout2:setLeft(0);
    obj.layout2:setTop(80);
    obj.layout2:setWidth(275);
    obj.layout2:setHeight(25);
    obj.layout2:setName("layout2");

    obj.button3 = GUI.fromHandle(_obj_newObject("button"));
    obj.button3:setParent(obj.layout2);
    obj.button3:setLeft(5);
    obj.button3:setWidth(35);
    obj.button3:setText("DES");
    obj.button3:setFontSize(11);
    obj.button3:setName("button3");

    obj.rectangle22 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle22:setParent(obj.layout2);
    obj.rectangle22:setLeft(45);
    obj.rectangle22:setTop(0);
    obj.rectangle22:setWidth(35);
    obj.rectangle22:setHeight(25);
    obj.rectangle22:setColor("black");
    obj.rectangle22:setStrokeColor("white");
    obj.rectangle22:setStrokeSize(1);
    obj.rectangle22:setName("rectangle22");

    obj.label86 = GUI.fromHandle(_obj_newObject("label"));
    obj.label86:setParent(obj.layout2);
    obj.label86:setLeft(45);
    obj.label86:setWidth(35);
    obj.label86:setHeight(25);
    obj.label86:setField("realDes");
    obj.label86:setHorzTextAlign("center");
    obj.label86:setName("label86");

    obj.rectangle23 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle23:setParent(obj.layout2);
    obj.rectangle23:setLeft(80);
    obj.rectangle23:setTop(0);
    obj.rectangle23:setWidth(35);
    obj.rectangle23:setHeight(25);
    obj.rectangle23:setColor("black");
    obj.rectangle23:setStrokeColor("white");
    obj.rectangle23:setStrokeSize(1);
    obj.rectangle23:setName("rectangle23");

    obj.label87 = GUI.fromHandle(_obj_newObject("label"));
    obj.label87:setParent(obj.layout2);
    obj.label87:setField("realModDes");
    obj.label87:setText("0");
    obj.label87:setLeft(80);
    obj.label87:setTop(3);
    obj.label87:setWidth(35);
    obj.label87:setHorzTextAlign("center");
    obj.label87:setName("label87");

    obj.dataLink19 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink19:setParent(obj.layout2);
    obj.dataLink19:setField("realDes");
    obj.dataLink19:setName("dataLink19");

    obj.rectangle24 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle24:setParent(obj.layout2);
    obj.rectangle24:setLeft(120);
    obj.rectangle24:setTop(0);
    obj.rectangle24:setWidth(35);
    obj.rectangle24:setHeight(25);
    obj.rectangle24:setColor("black");
    obj.rectangle24:setStrokeColor("white");
    obj.rectangle24:setStrokeSize(1);
    obj.rectangle24:setName("rectangle24");

    obj.label88 = GUI.fromHandle(_obj_newObject("label"));
    obj.label88:setParent(obj.layout2);
    obj.label88:setLeft(120);
    obj.label88:setWidth(35);
    obj.label88:setHeight(25);
    obj.label88:setField("efetDes");
    obj.label88:setHorzTextAlign("center");
    obj.label88:setName("label88");

    obj.rectangle25 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle25:setParent(obj.layout2);
    obj.rectangle25:setLeft(155);
    obj.rectangle25:setTop(0);
    obj.rectangle25:setWidth(35);
    obj.rectangle25:setHeight(25);
    obj.rectangle25:setColor("black");
    obj.rectangle25:setStrokeColor("white");
    obj.rectangle25:setStrokeSize(1);
    obj.rectangle25:setName("rectangle25");

    obj.label89 = GUI.fromHandle(_obj_newObject("label"));
    obj.label89:setParent(obj.layout2);
    obj.label89:setField("efetModDes");
    obj.label89:setText("0");
    obj.label89:setLeft(155);
    obj.label89:setTop(3);
    obj.label89:setWidth(35);
    obj.label89:setHorzTextAlign("center");
    obj.label89:setName("label89");

    obj.dataLink20 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink20:setParent(obj.layout2);
    obj.dataLink20:setField("efetDes");
    obj.dataLink20:setName("dataLink20");

    obj.layout3 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.rectangle17);
    obj.layout3:setLeft(0);
    obj.layout3:setTop(105);
    obj.layout3:setWidth(275);
    obj.layout3:setHeight(25);
    obj.layout3:setName("layout3");

    obj.button4 = GUI.fromHandle(_obj_newObject("button"));
    obj.button4:setParent(obj.layout3);
    obj.button4:setLeft(5);
    obj.button4:setWidth(35);
    obj.button4:setText("CON");
    obj.button4:setFontSize(11);
    obj.button4:setName("button4");

    obj.rectangle26 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle26:setParent(obj.layout3);
    obj.rectangle26:setLeft(45);
    obj.rectangle26:setTop(0);
    obj.rectangle26:setWidth(35);
    obj.rectangle26:setHeight(25);
    obj.rectangle26:setColor("black");
    obj.rectangle26:setStrokeColor("white");
    obj.rectangle26:setStrokeSize(1);
    obj.rectangle26:setName("rectangle26");

    obj.label90 = GUI.fromHandle(_obj_newObject("label"));
    obj.label90:setParent(obj.layout3);
    obj.label90:setLeft(45);
    obj.label90:setWidth(35);
    obj.label90:setHeight(25);
    obj.label90:setField("realCon");
    obj.label90:setHorzTextAlign("center");
    obj.label90:setName("label90");

    obj.rectangle27 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle27:setParent(obj.layout3);
    obj.rectangle27:setLeft(80);
    obj.rectangle27:setTop(0);
    obj.rectangle27:setWidth(35);
    obj.rectangle27:setHeight(25);
    obj.rectangle27:setColor("black");
    obj.rectangle27:setStrokeColor("white");
    obj.rectangle27:setStrokeSize(1);
    obj.rectangle27:setName("rectangle27");

    obj.label91 = GUI.fromHandle(_obj_newObject("label"));
    obj.label91:setParent(obj.layout3);
    obj.label91:setField("realModCon");
    obj.label91:setText("0");
    obj.label91:setLeft(80);
    obj.label91:setTop(3);
    obj.label91:setWidth(35);
    obj.label91:setHorzTextAlign("center");
    obj.label91:setName("label91");

    obj.dataLink21 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink21:setParent(obj.layout3);
    obj.dataLink21:setField("realCon");
    obj.dataLink21:setName("dataLink21");

    obj.rectangle28 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle28:setParent(obj.layout3);
    obj.rectangle28:setLeft(120);
    obj.rectangle28:setTop(0);
    obj.rectangle28:setWidth(35);
    obj.rectangle28:setHeight(25);
    obj.rectangle28:setColor("black");
    obj.rectangle28:setStrokeColor("white");
    obj.rectangle28:setStrokeSize(1);
    obj.rectangle28:setName("rectangle28");

    obj.label92 = GUI.fromHandle(_obj_newObject("label"));
    obj.label92:setParent(obj.layout3);
    obj.label92:setLeft(120);
    obj.label92:setWidth(35);
    obj.label92:setHeight(25);
    obj.label92:setField("efetCon");
    obj.label92:setHorzTextAlign("center");
    obj.label92:setName("label92");

    obj.rectangle29 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle29:setParent(obj.layout3);
    obj.rectangle29:setLeft(155);
    obj.rectangle29:setTop(0);
    obj.rectangle29:setWidth(35);
    obj.rectangle29:setHeight(25);
    obj.rectangle29:setColor("black");
    obj.rectangle29:setStrokeColor("white");
    obj.rectangle29:setStrokeSize(1);
    obj.rectangle29:setName("rectangle29");

    obj.label93 = GUI.fromHandle(_obj_newObject("label"));
    obj.label93:setParent(obj.layout3);
    obj.label93:setField("efetModCon");
    obj.label93:setText("0");
    obj.label93:setLeft(155);
    obj.label93:setTop(3);
    obj.label93:setWidth(35);
    obj.label93:setHorzTextAlign("center");
    obj.label93:setName("label93");

    obj.dataLink22 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink22:setParent(obj.layout3);
    obj.dataLink22:setField("efetCon");
    obj.dataLink22:setName("dataLink22");

    obj.layout4 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.rectangle17);
    obj.layout4:setLeft(0);
    obj.layout4:setTop(130);
    obj.layout4:setWidth(275);
    obj.layout4:setHeight(25);
    obj.layout4:setName("layout4");

    obj.button5 = GUI.fromHandle(_obj_newObject("button"));
    obj.button5:setParent(obj.layout4);
    obj.button5:setLeft(5);
    obj.button5:setWidth(35);
    obj.button5:setText("INT");
    obj.button5:setFontSize(11);
    obj.button5:setName("button5");

    obj.rectangle30 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle30:setParent(obj.layout4);
    obj.rectangle30:setLeft(45);
    obj.rectangle30:setTop(0);
    obj.rectangle30:setWidth(35);
    obj.rectangle30:setHeight(25);
    obj.rectangle30:setColor("black");
    obj.rectangle30:setStrokeColor("white");
    obj.rectangle30:setStrokeSize(1);
    obj.rectangle30:setName("rectangle30");

    obj.label94 = GUI.fromHandle(_obj_newObject("label"));
    obj.label94:setParent(obj.layout4);
    obj.label94:setLeft(45);
    obj.label94:setWidth(35);
    obj.label94:setHeight(25);
    obj.label94:setField("realInt");
    obj.label94:setHorzTextAlign("center");
    obj.label94:setName("label94");

    obj.rectangle31 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle31:setParent(obj.layout4);
    obj.rectangle31:setLeft(80);
    obj.rectangle31:setTop(0);
    obj.rectangle31:setWidth(35);
    obj.rectangle31:setHeight(25);
    obj.rectangle31:setColor("black");
    obj.rectangle31:setStrokeColor("white");
    obj.rectangle31:setStrokeSize(1);
    obj.rectangle31:setName("rectangle31");

    obj.label95 = GUI.fromHandle(_obj_newObject("label"));
    obj.label95:setParent(obj.layout4);
    obj.label95:setField("realModInt");
    obj.label95:setText("0");
    obj.label95:setLeft(80);
    obj.label95:setTop(3);
    obj.label95:setWidth(35);
    obj.label95:setHorzTextAlign("center");
    obj.label95:setName("label95");

    obj.dataLink23 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink23:setParent(obj.layout4);
    obj.dataLink23:setField("realInt");
    obj.dataLink23:setName("dataLink23");

    obj.rectangle32 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle32:setParent(obj.layout4);
    obj.rectangle32:setLeft(120);
    obj.rectangle32:setTop(0);
    obj.rectangle32:setWidth(35);
    obj.rectangle32:setHeight(25);
    obj.rectangle32:setColor("black");
    obj.rectangle32:setStrokeColor("white");
    obj.rectangle32:setStrokeSize(1);
    obj.rectangle32:setName("rectangle32");

    obj.label96 = GUI.fromHandle(_obj_newObject("label"));
    obj.label96:setParent(obj.layout4);
    obj.label96:setLeft(120);
    obj.label96:setWidth(35);
    obj.label96:setHeight(25);
    obj.label96:setField("efetInt");
    obj.label96:setHorzTextAlign("center");
    obj.label96:setName("label96");

    obj.rectangle33 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle33:setParent(obj.layout4);
    obj.rectangle33:setLeft(155);
    obj.rectangle33:setTop(0);
    obj.rectangle33:setWidth(35);
    obj.rectangle33:setHeight(25);
    obj.rectangle33:setColor("black");
    obj.rectangle33:setStrokeColor("white");
    obj.rectangle33:setStrokeSize(1);
    obj.rectangle33:setName("rectangle33");

    obj.label97 = GUI.fromHandle(_obj_newObject("label"));
    obj.label97:setParent(obj.layout4);
    obj.label97:setField("efetModInt");
    obj.label97:setText("0");
    obj.label97:setLeft(155);
    obj.label97:setTop(3);
    obj.label97:setWidth(35);
    obj.label97:setHorzTextAlign("center");
    obj.label97:setName("label97");

    obj.dataLink24 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink24:setParent(obj.layout4);
    obj.dataLink24:setField("efetInt");
    obj.dataLink24:setName("dataLink24");

    obj.layout5 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.rectangle17);
    obj.layout5:setLeft(0);
    obj.layout5:setTop(155);
    obj.layout5:setWidth(275);
    obj.layout5:setHeight(25);
    obj.layout5:setName("layout5");

    obj.button6 = GUI.fromHandle(_obj_newObject("button"));
    obj.button6:setParent(obj.layout5);
    obj.button6:setLeft(5);
    obj.button6:setWidth(35);
    obj.button6:setText("SAB");
    obj.button6:setFontSize(11);
    obj.button6:setName("button6");

    obj.rectangle34 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle34:setParent(obj.layout5);
    obj.rectangle34:setLeft(45);
    obj.rectangle34:setTop(0);
    obj.rectangle34:setWidth(35);
    obj.rectangle34:setHeight(25);
    obj.rectangle34:setColor("black");
    obj.rectangle34:setStrokeColor("white");
    obj.rectangle34:setStrokeSize(1);
    obj.rectangle34:setName("rectangle34");

    obj.label98 = GUI.fromHandle(_obj_newObject("label"));
    obj.label98:setParent(obj.layout5);
    obj.label98:setLeft(45);
    obj.label98:setWidth(35);
    obj.label98:setHeight(25);
    obj.label98:setField("realSab");
    obj.label98:setHorzTextAlign("center");
    obj.label98:setName("label98");

    obj.rectangle35 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle35:setParent(obj.layout5);
    obj.rectangle35:setLeft(80);
    obj.rectangle35:setTop(0);
    obj.rectangle35:setWidth(35);
    obj.rectangle35:setHeight(25);
    obj.rectangle35:setColor("black");
    obj.rectangle35:setStrokeColor("white");
    obj.rectangle35:setStrokeSize(1);
    obj.rectangle35:setName("rectangle35");

    obj.label99 = GUI.fromHandle(_obj_newObject("label"));
    obj.label99:setParent(obj.layout5);
    obj.label99:setField("realModSab");
    obj.label99:setText("0");
    obj.label99:setLeft(80);
    obj.label99:setTop(3);
    obj.label99:setWidth(35);
    obj.label99:setHorzTextAlign("center");
    obj.label99:setName("label99");

    obj.dataLink25 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink25:setParent(obj.layout5);
    obj.dataLink25:setField("realSab");
    obj.dataLink25:setName("dataLink25");

    obj.rectangle36 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle36:setParent(obj.layout5);
    obj.rectangle36:setLeft(120);
    obj.rectangle36:setTop(0);
    obj.rectangle36:setWidth(35);
    obj.rectangle36:setHeight(25);
    obj.rectangle36:setColor("black");
    obj.rectangle36:setStrokeColor("white");
    obj.rectangle36:setStrokeSize(1);
    obj.rectangle36:setName("rectangle36");

    obj.label100 = GUI.fromHandle(_obj_newObject("label"));
    obj.label100:setParent(obj.layout5);
    obj.label100:setLeft(120);
    obj.label100:setWidth(35);
    obj.label100:setHeight(25);
    obj.label100:setField("efetSab");
    obj.label100:setHorzTextAlign("center");
    obj.label100:setName("label100");

    obj.rectangle37 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle37:setParent(obj.layout5);
    obj.rectangle37:setLeft(155);
    obj.rectangle37:setTop(0);
    obj.rectangle37:setWidth(35);
    obj.rectangle37:setHeight(25);
    obj.rectangle37:setColor("black");
    obj.rectangle37:setStrokeColor("white");
    obj.rectangle37:setStrokeSize(1);
    obj.rectangle37:setName("rectangle37");

    obj.label101 = GUI.fromHandle(_obj_newObject("label"));
    obj.label101:setParent(obj.layout5);
    obj.label101:setField("efetModSab");
    obj.label101:setText("0");
    obj.label101:setLeft(155);
    obj.label101:setTop(3);
    obj.label101:setWidth(35);
    obj.label101:setHorzTextAlign("center");
    obj.label101:setName("label101");

    obj.dataLink26 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink26:setParent(obj.layout5);
    obj.dataLink26:setField("efetSab");
    obj.dataLink26:setName("dataLink26");

    obj.layout6 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.rectangle17);
    obj.layout6:setLeft(0);
    obj.layout6:setTop(180);
    obj.layout6:setWidth(275);
    obj.layout6:setHeight(25);
    obj.layout6:setName("layout6");

    obj.button7 = GUI.fromHandle(_obj_newObject("button"));
    obj.button7:setParent(obj.layout6);
    obj.button7:setLeft(5);
    obj.button7:setWidth(35);
    obj.button7:setText("CAR");
    obj.button7:setFontSize(11);
    obj.button7:setName("button7");

    obj.rectangle38 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle38:setParent(obj.layout6);
    obj.rectangle38:setLeft(45);
    obj.rectangle38:setTop(0);
    obj.rectangle38:setWidth(35);
    obj.rectangle38:setHeight(25);
    obj.rectangle38:setColor("black");
    obj.rectangle38:setStrokeColor("white");
    obj.rectangle38:setStrokeSize(1);
    obj.rectangle38:setName("rectangle38");

    obj.label102 = GUI.fromHandle(_obj_newObject("label"));
    obj.label102:setParent(obj.layout6);
    obj.label102:setLeft(45);
    obj.label102:setWidth(35);
    obj.label102:setHeight(25);
    obj.label102:setField("realCar");
    obj.label102:setHorzTextAlign("center");
    obj.label102:setName("label102");

    obj.rectangle39 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle39:setParent(obj.layout6);
    obj.rectangle39:setLeft(80);
    obj.rectangle39:setTop(0);
    obj.rectangle39:setWidth(35);
    obj.rectangle39:setHeight(25);
    obj.rectangle39:setColor("black");
    obj.rectangle39:setStrokeColor("white");
    obj.rectangle39:setStrokeSize(1);
    obj.rectangle39:setName("rectangle39");

    obj.label103 = GUI.fromHandle(_obj_newObject("label"));
    obj.label103:setParent(obj.layout6);
    obj.label103:setField("realModCar");
    obj.label103:setText("0");
    obj.label103:setLeft(80);
    obj.label103:setTop(3);
    obj.label103:setWidth(35);
    obj.label103:setHorzTextAlign("center");
    obj.label103:setName("label103");

    obj.dataLink27 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink27:setParent(obj.layout6);
    obj.dataLink27:setField("realCar");
    obj.dataLink27:setName("dataLink27");

    obj.rectangle40 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle40:setParent(obj.layout6);
    obj.rectangle40:setLeft(120);
    obj.rectangle40:setTop(0);
    obj.rectangle40:setWidth(35);
    obj.rectangle40:setHeight(25);
    obj.rectangle40:setColor("black");
    obj.rectangle40:setStrokeColor("white");
    obj.rectangle40:setStrokeSize(1);
    obj.rectangle40:setName("rectangle40");

    obj.label104 = GUI.fromHandle(_obj_newObject("label"));
    obj.label104:setParent(obj.layout6);
    obj.label104:setLeft(120);
    obj.label104:setWidth(35);
    obj.label104:setHeight(25);
    obj.label104:setField("efetCar");
    obj.label104:setHorzTextAlign("center");
    obj.label104:setName("label104");

    obj.rectangle41 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle41:setParent(obj.layout6);
    obj.rectangle41:setLeft(155);
    obj.rectangle41:setTop(0);
    obj.rectangle41:setWidth(35);
    obj.rectangle41:setHeight(25);
    obj.rectangle41:setColor("black");
    obj.rectangle41:setStrokeColor("white");
    obj.rectangle41:setStrokeSize(1);
    obj.rectangle41:setName("rectangle41");

    obj.label105 = GUI.fromHandle(_obj_newObject("label"));
    obj.label105:setParent(obj.layout6);
    obj.label105:setField("efetModCar");
    obj.label105:setText("0");
    obj.label105:setLeft(155);
    obj.label105:setTop(3);
    obj.label105:setWidth(35);
    obj.label105:setHorzTextAlign("center");
    obj.label105:setName("label105");

    obj.dataLink28 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink28:setParent(obj.layout6);
    obj.dataLink28:setField("efetCar");
    obj.dataLink28:setName("dataLink28");

    obj.AtrBut = GUI.fromHandle(_obj_newObject("button"));
    obj.AtrBut:setParent(obj.rectangle17);
    obj.AtrBut:setLeft(200);
    obj.AtrBut:setTop(55);
    obj.AtrBut:setWidth(30);
    obj.AtrBut:setHeight(150);
    obj.AtrBut:setName("AtrBut");
    obj.AtrBut:setText(">>");

    obj.layout7 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.scrollBox1);
    obj.layout7:setLeft(240);
    obj.layout7:setTop(115);
    obj.layout7:setWidth(235);
    obj.layout7:setHeight(215);
    obj.layout7:setName("layout7");

    obj.rectangle42 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle42:setParent(obj.layout7);
    obj.rectangle42:setAlign("client");
    obj.rectangle42:setColor("black");
    obj.rectangle42:setName("rectangle42");

    obj.label106 = GUI.fromHandle(_obj_newObject("label"));
    obj.label106:setParent(obj.layout7);
    obj.label106:setLeft(5);
    obj.label106:setTop(1);
    obj.label106:setWidth(225);
    obj.label106:setHeight(20);
    obj.label106:setText("DESLOCAMENTOS");
    obj.label106:setHorzTextAlign("center");
    obj.label106:setName("label106");

    obj.label107 = GUI.fromHandle(_obj_newObject("label"));
    obj.label107:setParent(obj.layout7);
    obj.label107:setLeft(75);
    obj.label107:setTop(30);
    obj.label107:setWidth(70);
    obj.label107:setHeight(25);
    obj.label107:setText("Metros");
    obj.label107:setHorzTextAlign("center");
    obj.label107:setName("label107");

    obj.label108 = GUI.fromHandle(_obj_newObject("label"));
    obj.label108:setParent(obj.layout7);
    obj.label108:setLeft(155);
    obj.label108:setTop(30);
    obj.label108:setWidth(70);
    obj.label108:setHeight(25);
    obj.label108:setText("Quadrados");
    obj.label108:setHorzTextAlign("center");
    obj.label108:setName("label108");

    obj.layout8 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout8:setParent(obj.layout7);
    obj.layout8:setLeft(5);
    obj.layout8:setTop(55);
    obj.layout8:setWidth(225);
    obj.layout8:setHeight(20);
    obj.layout8:setName("layout8");

    obj.label109 = GUI.fromHandle(_obj_newObject("label"));
    obj.label109:setParent(obj.layout8);
    obj.label109:setLeft(5);
    obj.label109:setTop(0);
    obj.label109:setWidth(70);
    obj.label109:setHeight(20);
    obj.label109:setText("TERRESTRE");
    obj.label109:setName("label109");

    obj.edit148 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit148:setParent(obj.layout8);
    obj.edit148:setVertTextAlign("center");
    obj.edit148:setLeft(75);
    obj.edit148:setTop(0);
    obj.edit148:setWidth(70);
    obj.edit148:setHeight(20);
    obj.edit148:setField("deslTerrestre");
    obj.edit148:setName("edit148");

    obj.rectangle43 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle43:setParent(obj.layout8);
    obj.rectangle43:setLeft(155);
    obj.rectangle43:setTop(0);
    obj.rectangle43:setWidth(60);
    obj.rectangle43:setHeight(20);
    obj.rectangle43:setColor("black");
    obj.rectangle43:setStrokeColor("white");
    obj.rectangle43:setStrokeSize(1);
    obj.rectangle43:setName("rectangle43");

    obj.label110 = GUI.fromHandle(_obj_newObject("label"));
    obj.label110:setParent(obj.layout8);
    obj.label110:setLeft(155);
    obj.label110:setTop(0);
    obj.label110:setWidth(60);
    obj.label110:setHeight(20);
    obj.label110:setField("deslTerrestreQuadrados");
    obj.label110:setHorzTextAlign("center");
    obj.label110:setName("label110");

    obj.dataLink29 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink29:setParent(obj.layout8);
    obj.dataLink29:setField("deslTerrestre");
    obj.dataLink29:setName("dataLink29");

    obj.layout9 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout9:setParent(obj.layout7);
    obj.layout9:setLeft(5);
    obj.layout9:setTop(80);
    obj.layout9:setWidth(225);
    obj.layout9:setHeight(20);
    obj.layout9:setName("layout9");

    obj.label111 = GUI.fromHandle(_obj_newObject("label"));
    obj.label111:setParent(obj.layout9);
    obj.label111:setLeft(5);
    obj.label111:setTop(0);
    obj.label111:setWidth(70);
    obj.label111:setHeight(20);
    obj.label111:setText("VOO");
    obj.label111:setName("label111");

    obj.edit149 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit149:setParent(obj.layout9);
    obj.edit149:setVertTextAlign("center");
    obj.edit149:setLeft(75);
    obj.edit149:setTop(0);
    obj.edit149:setWidth(70);
    obj.edit149:setHeight(20);
    obj.edit149:setField("deslVoo");
    obj.edit149:setName("edit149");

    obj.rectangle44 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle44:setParent(obj.layout9);
    obj.rectangle44:setLeft(155);
    obj.rectangle44:setTop(0);
    obj.rectangle44:setWidth(60);
    obj.rectangle44:setHeight(20);
    obj.rectangle44:setColor("black");
    obj.rectangle44:setStrokeColor("white");
    obj.rectangle44:setStrokeSize(1);
    obj.rectangle44:setName("rectangle44");

    obj.label112 = GUI.fromHandle(_obj_newObject("label"));
    obj.label112:setParent(obj.layout9);
    obj.label112:setLeft(155);
    obj.label112:setTop(0);
    obj.label112:setWidth(60);
    obj.label112:setHeight(20);
    obj.label112:setField("deslVooQuadrados");
    obj.label112:setHorzTextAlign("center");
    obj.label112:setName("label112");

    obj.dataLink30 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink30:setParent(obj.layout9);
    obj.dataLink30:setField("deslVoo");
    obj.dataLink30:setName("dataLink30");

    obj.label113 = GUI.fromHandle(_obj_newObject("label"));
    obj.label113:setParent(obj.layout7);
    obj.label113:setLeft(50);
    obj.label113:setTop(105);
    obj.label113:setWidth(60);
    obj.label113:setHeight(20);
    obj.label113:setText("Manobra");
    obj.label113:setFontSize(11);
    obj.label113:setName("label113");

    obj.comboBox5 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox5:setParent(obj.layout7);
    obj.comboBox5:setLeft(95);
    obj.comboBox5:setTop(105);
    obj.comboBox5:setWidth(100);
    obj.comboBox5:setField("qualidadeVoo");
    obj.comboBox5:setFontColor("white");
    obj.comboBox5:setItems({' ', 'Desajeitado', 'Ruim', 'Média', 'Boa', 'Perfeita'});
    obj.comboBox5:setHorzTextAlign("center");
    obj.comboBox5:setName("comboBox5");

    obj.layout10 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout10:setParent(obj.layout7);
    obj.layout10:setLeft(5);
    obj.layout10:setTop(130);
    obj.layout10:setWidth(225);
    obj.layout10:setHeight(20);
    obj.layout10:setName("layout10");

    obj.label114 = GUI.fromHandle(_obj_newObject("label"));
    obj.label114:setParent(obj.layout10);
    obj.label114:setLeft(5);
    obj.label114:setTop(0);
    obj.label114:setWidth(70);
    obj.label114:setHeight(20);
    obj.label114:setText("NATAÇÃO");
    obj.label114:setName("label114");

    obj.edit150 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit150:setParent(obj.layout10);
    obj.edit150:setVertTextAlign("center");
    obj.edit150:setLeft(75);
    obj.edit150:setTop(0);
    obj.edit150:setWidth(70);
    obj.edit150:setHeight(20);
    obj.edit150:setField("deslNatacao");
    obj.edit150:setName("edit150");

    obj.rectangle45 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle45:setParent(obj.layout10);
    obj.rectangle45:setLeft(155);
    obj.rectangle45:setTop(0);
    obj.rectangle45:setWidth(60);
    obj.rectangle45:setHeight(20);
    obj.rectangle45:setColor("black");
    obj.rectangle45:setStrokeColor("white");
    obj.rectangle45:setStrokeSize(1);
    obj.rectangle45:setName("rectangle45");

    obj.label115 = GUI.fromHandle(_obj_newObject("label"));
    obj.label115:setParent(obj.layout10);
    obj.label115:setLeft(155);
    obj.label115:setTop(0);
    obj.label115:setWidth(60);
    obj.label115:setHeight(20);
    obj.label115:setField("deslNatacaoQuadrados");
    obj.label115:setHorzTextAlign("center");
    obj.label115:setName("label115");

    obj.dataLink31 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink31:setParent(obj.layout10);
    obj.dataLink31:setField("deslNatacao");
    obj.dataLink31:setName("dataLink31");

    obj.layout11 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout11:setParent(obj.layout7);
    obj.layout11:setLeft(5);
    obj.layout11:setTop(155);
    obj.layout11:setWidth(225);
    obj.layout11:setHeight(20);
    obj.layout11:setName("layout11");

    obj.label116 = GUI.fromHandle(_obj_newObject("label"));
    obj.label116:setParent(obj.layout11);
    obj.label116:setLeft(5);
    obj.label116:setTop(0);
    obj.label116:setWidth(70);
    obj.label116:setHeight(20);
    obj.label116:setText("ESCALAR");
    obj.label116:setName("label116");

    obj.edit151 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit151:setParent(obj.layout11);
    obj.edit151:setVertTextAlign("center");
    obj.edit151:setLeft(75);
    obj.edit151:setTop(0);
    obj.edit151:setWidth(70);
    obj.edit151:setHeight(20);
    obj.edit151:setField("deslEscalar");
    obj.edit151:setName("edit151");

    obj.rectangle46 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle46:setParent(obj.layout11);
    obj.rectangle46:setLeft(155);
    obj.rectangle46:setTop(0);
    obj.rectangle46:setWidth(60);
    obj.rectangle46:setHeight(20);
    obj.rectangle46:setColor("black");
    obj.rectangle46:setStrokeColor("white");
    obj.rectangle46:setStrokeSize(1);
    obj.rectangle46:setName("rectangle46");

    obj.label117 = GUI.fromHandle(_obj_newObject("label"));
    obj.label117:setParent(obj.layout11);
    obj.label117:setLeft(155);
    obj.label117:setTop(0);
    obj.label117:setWidth(60);
    obj.label117:setHeight(20);
    obj.label117:setField("deslEscalarQuadrados");
    obj.label117:setHorzTextAlign("center");
    obj.label117:setName("label117");

    obj.dataLink32 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink32:setParent(obj.layout11);
    obj.dataLink32:setField("deslEscalar");
    obj.dataLink32:setName("dataLink32");

    obj.layout12 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout12:setParent(obj.layout7);
    obj.layout12:setLeft(5);
    obj.layout12:setTop(180);
    obj.layout12:setWidth(225);
    obj.layout12:setHeight(20);
    obj.layout12:setName("layout12");

    obj.label118 = GUI.fromHandle(_obj_newObject("label"));
    obj.label118:setParent(obj.layout12);
    obj.label118:setLeft(5);
    obj.label118:setTop(0);
    obj.label118:setWidth(70);
    obj.label118:setHeight(20);
    obj.label118:setText("ESCAVAR");
    obj.label118:setName("label118");

    obj.edit152 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit152:setParent(obj.layout12);
    obj.edit152:setVertTextAlign("center");
    obj.edit152:setLeft(75);
    obj.edit152:setTop(0);
    obj.edit152:setWidth(70);
    obj.edit152:setHeight(20);
    obj.edit152:setField("deslEscavar");
    obj.edit152:setName("edit152");

    obj.rectangle47 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle47:setParent(obj.layout12);
    obj.rectangle47:setLeft(155);
    obj.rectangle47:setTop(0);
    obj.rectangle47:setWidth(60);
    obj.rectangle47:setHeight(20);
    obj.rectangle47:setColor("black");
    obj.rectangle47:setStrokeColor("white");
    obj.rectangle47:setStrokeSize(1);
    obj.rectangle47:setName("rectangle47");

    obj.label119 = GUI.fromHandle(_obj_newObject("label"));
    obj.label119:setParent(obj.layout12);
    obj.label119:setLeft(155);
    obj.label119:setTop(0);
    obj.label119:setWidth(60);
    obj.label119:setHeight(20);
    obj.label119:setField("deslEscavarQuadrados");
    obj.label119:setHorzTextAlign("center");
    obj.label119:setName("label119");

    obj.dataLink33 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink33:setParent(obj.layout12);
    obj.dataLink33:setField("deslEscavar");
    obj.dataLink33:setName("dataLink33");

    obj.layout13 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout13:setParent(obj.scrollBox1);
    obj.layout13:setLeft(480);
    obj.layout13:setTop(115);
    obj.layout13:setWidth(260);
    obj.layout13:setHeight(55);
    obj.layout13:setName("layout13");

    obj.rectangle48 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle48:setParent(obj.layout13);
    obj.rectangle48:setAlign("client");
    obj.rectangle48:setColor("black");
    obj.rectangle48:setName("rectangle48");

    obj.label120 = GUI.fromHandle(_obj_newObject("label"));
    obj.label120:setParent(obj.layout13);
    obj.label120:setLeft(0);
    obj.label120:setTop(1);
    obj.label120:setWidth(260);
    obj.label120:setHeight(20);
    obj.label120:setText("INICIATIVA");
    obj.label120:setHorzTextAlign("center");
    obj.label120:setName("label120");

    obj.button8 = GUI.fromHandle(_obj_newObject("button"));
    obj.button8:setParent(obj.layout13);
    obj.button8:setLeft(35);
    obj.button8:setTop(25);
    obj.button8:setWidth(75);
    obj.button8:setHeight(25);
    obj.button8:setText("INICIATIVA");
    obj.button8:setFontSize(11);
    obj.button8:setName("button8");

    obj.rectangle49 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle49:setParent(obj.layout13);
    obj.rectangle49:setLeft(115);
    obj.rectangle49:setTop(25);
    obj.rectangle49:setWidth(35);
    obj.rectangle49:setHeight(25);
    obj.rectangle49:setColor("black");
    obj.rectangle49:setStrokeColor("white");
    obj.rectangle49:setStrokeSize(1);
    obj.rectangle49:setName("rectangle49");

    obj.label121 = GUI.fromHandle(_obj_newObject("label"));
    obj.label121:setParent(obj.layout13);
    obj.label121:setField("iniciativa");
    obj.label121:setLeft(115);
    obj.label121:setTop(27);
    obj.label121:setWidth(35);
    obj.label121:setHorzTextAlign("center");
    obj.label121:setName("label121");

    obj.rectangle50 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle50:setParent(obj.layout13);
    obj.rectangle50:setLeft(165);
    obj.rectangle50:setTop(25);
    obj.rectangle50:setWidth(35);
    obj.rectangle50:setHeight(25);
    obj.rectangle50:setColor("black");
    obj.rectangle50:setStrokeColor("white");
    obj.rectangle50:setStrokeSize(1);
    obj.rectangle50:setName("rectangle50");

    obj.label122 = GUI.fromHandle(_obj_newObject("label"));
    obj.label122:setParent(obj.layout13);
    obj.label122:setField("efetModDes");
    obj.label122:setLeft(165);
    obj.label122:setTop(27);
    obj.label122:setWidth(35);
    obj.label122:setHorzTextAlign("center");
    obj.label122:setName("label122");

    obj.edit153 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit153:setParent(obj.layout13);
    obj.edit153:setType("number");
    obj.edit153:setVertTextAlign("center");
    obj.edit153:setHorzTextAlign("center");
    obj.edit153:setLeft(205);
    obj.edit153:setTop(25);
    obj.edit153:setWidth(35);
    obj.edit153:setHeight(25);
    obj.edit153:setField("iniVariado");
    obj.edit153:setName("edit153");

    obj.dataLink34 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink34:setParent(obj.layout13);
    obj.dataLink34:setFields({'efetModDes', 'iniVariado'});
    obj.dataLink34:setName("dataLink34");

    obj.rectangle51 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle51:setParent(obj.scrollBox1);
    obj.rectangle51:setLeft(480);
    obj.rectangle51:setTop(175);
    obj.rectangle51:setWidth(260);
    obj.rectangle51:setHeight(155);
    obj.rectangle51:setColor("black");
    obj.rectangle51:setName("rectangle51");

    obj.label123 = GUI.fromHandle(_obj_newObject("label"));
    obj.label123:setParent(obj.rectangle51);
    obj.label123:setLeft(0);
    obj.label123:setTop(1);
    obj.label123:setWidth(260);
    obj.label123:setHeight(20);
    obj.label123:setText("CLASSE DE ARMADURA");
    obj.label123:setHorzTextAlign("center");
    obj.label123:setName("label123");

    obj.layout14 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout14:setParent(obj.rectangle51);
    obj.layout14:setLeft(20);
    obj.layout14:setTop(25);
    obj.layout14:setWidth(220);
    obj.layout14:setHeight(50);
    obj.layout14:setName("layout14");

    obj.label124 = GUI.fromHandle(_obj_newObject("label"));
    obj.label124:setParent(obj.layout14);
    obj.label124:setLeft(10);
    obj.label124:setTop(0);
    obj.label124:setWidth(35);
    obj.label124:setHeight(20);
    obj.label124:setText("CA");
    obj.label124:setName("label124");

    obj.rectangle52 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle52:setParent(obj.layout14);
    obj.rectangle52:setLeft(5);
    obj.rectangle52:setTop(25);
    obj.rectangle52:setWidth(35);
    obj.rectangle52:setHeight(25);
    obj.rectangle52:setColor("black");
    obj.rectangle52:setStrokeColor("white");
    obj.rectangle52:setStrokeSize(1);
    obj.rectangle52:setName("rectangle52");

    obj.label125 = GUI.fromHandle(_obj_newObject("label"));
    obj.label125:setParent(obj.layout14);
    obj.label125:setLeft(5);
    obj.label125:setTop(27);
    obj.label125:setWidth(35);
    obj.label125:setField("ca");
    obj.label125:setHorzTextAlign("center");
    obj.label125:setName("label125");

    obj.label126 = GUI.fromHandle(_obj_newObject("label"));
    obj.label126:setParent(obj.layout14);
    obj.label126:setLeft(45);
    obj.label126:setTop(0);
    obj.label126:setWidth(40);
    obj.label126:setHeight(20);
    obj.label126:setText("DESP.");
    obj.label126:setName("label126");

    obj.rectangle53 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle53:setParent(obj.layout14);
    obj.rectangle53:setLeft(45);
    obj.rectangle53:setTop(25);
    obj.rectangle53:setWidth(35);
    obj.rectangle53:setHeight(25);
    obj.rectangle53:setColor("black");
    obj.rectangle53:setStrokeColor("white");
    obj.rectangle53:setStrokeSize(1);
    obj.rectangle53:setName("rectangle53");

    obj.label127 = GUI.fromHandle(_obj_newObject("label"));
    obj.label127:setParent(obj.layout14);
    obj.label127:setLeft(45);
    obj.label127:setTop(27);
    obj.label127:setWidth(35);
    obj.label127:setField("surpresa");
    obj.label127:setHorzTextAlign("center");
    obj.label127:setName("label127");

    obj.label128 = GUI.fromHandle(_obj_newObject("label"));
    obj.label128:setParent(obj.layout14);
    obj.label128:setLeft(85);
    obj.label128:setTop(0);
    obj.label128:setWidth(45);
    obj.label128:setHeight(20);
    obj.label128:setText("TOQUE");
    obj.label128:setName("label128");

    obj.rectangle54 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle54:setParent(obj.layout14);
    obj.rectangle54:setLeft(90);
    obj.rectangle54:setTop(25);
    obj.rectangle54:setWidth(35);
    obj.rectangle54:setHeight(25);
    obj.rectangle54:setColor("black");
    obj.rectangle54:setStrokeColor("white");
    obj.rectangle54:setStrokeSize(1);
    obj.rectangle54:setName("rectangle54");

    obj.label129 = GUI.fromHandle(_obj_newObject("label"));
    obj.label129:setParent(obj.layout14);
    obj.label129:setLeft(90);
    obj.label129:setTop(27);
    obj.label129:setWidth(35);
    obj.label129:setField("toque");
    obj.label129:setHorzTextAlign("center");
    obj.label129:setName("label129");

    obj.label130 = GUI.fromHandle(_obj_newObject("label"));
    obj.label130:setParent(obj.layout14);
    obj.label130:setLeft(135);
    obj.label130:setTop(0);
    obj.label130:setWidth(35);
    obj.label130:setHeight(20);
    obj.label130:setText("PEN");
    obj.label130:setName("label130");

    obj.rectangle55 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle55:setParent(obj.layout14);
    obj.rectangle55:setLeft(135);
    obj.rectangle55:setTop(25);
    obj.rectangle55:setWidth(35);
    obj.rectangle55:setHeight(25);
    obj.rectangle55:setColor("black");
    obj.rectangle55:setStrokeColor("white");
    obj.rectangle55:setStrokeSize(1);
    obj.rectangle55:setName("rectangle55");

    obj.label131 = GUI.fromHandle(_obj_newObject("label"));
    obj.label131:setParent(obj.layout14);
    obj.label131:setLeft(135);
    obj.label131:setTop(27);
    obj.label131:setWidth(35);
    obj.label131:setField("penalidade");
    obj.label131:setHorzTextAlign("center");
    obj.label131:setName("label131");

    obj.button9 = GUI.fromHandle(_obj_newObject("button"));
    obj.button9:setParent(obj.layout14);
    obj.button9:setLeft(170);
    obj.button9:setTop(0);
    obj.button9:setWidth(45);
    obj.button9:setHeight(20);
    obj.button9:setFontSize(10);
    obj.button9:setText("FALHA");
    obj.button9:setName("button9");

    obj.rectangle56 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle56:setParent(obj.layout14);
    obj.rectangle56:setLeft(175);
    obj.rectangle56:setTop(25);
    obj.rectangle56:setWidth(35);
    obj.rectangle56:setHeight(25);
    obj.rectangle56:setColor("black");
    obj.rectangle56:setStrokeColor("white");
    obj.rectangle56:setStrokeSize(1);
    obj.rectangle56:setName("rectangle56");

    obj.label132 = GUI.fromHandle(_obj_newObject("label"));
    obj.label132:setParent(obj.layout14);
    obj.label132:setLeft(175);
    obj.label132:setTop(27);
    obj.label132:setWidth(35);
    obj.label132:setField("falha");
    obj.label132:setHorzTextAlign("center");
    obj.label132:setName("label132");

    obj.caDetails = GUI.fromHandle(_obj_newObject("button"));
    obj.caDetails:setParent(obj.rectangle51);
    obj.caDetails:setLeft(30);
    obj.caDetails:setTop(80);
    obj.caDetails:setWidth(200);
    obj.caDetails:setHeight(20);
    obj.caDetails:setFontSize(10);
    obj.caDetails:setText("+");
    obj.caDetails:setName("caDetails");

    obj.dataLink35 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink35:setParent(obj.rectangle51);
    obj.dataLink35:setFields({'armaduraCa', 'escudoCa', 'efetModDes', 'tamanhoCa', 'naturalCa', 'deflexaoCa', 'esquivaCa', 'sorteCa', 'outrosCa', 'variadosCa', 'armaduraCaSurp', 'escudoCaSurp', 'destrezaCaSurp', 'tamanhoCaSurp', 'naturalCaSurp', 'deflexaoCaSurp', 'esquivaCaSurp', 'sorteCaSurp', 'outrosCaSurp', 'variadosCaSurp', 'armaduraCaToque', 'escudoCaToque', 'destrezaCaToque', 'tamanhoCaToque', 'naturalCaToque', 'deflexaoCaToque', 'esquivaCaToque', 'sorteCaToque', 'outrosCaToque', 'variadosCaToque'});
    obj.dataLink35:setName("dataLink35");

    obj.dataLink36 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink36:setParent(obj.rectangle51);
    obj.dataLink36:setFields({'armaduraCaSurp', 'escudoCaSurp', 'tamanhoCaSurp', 'naturalCaSurp', 'deflexaoCaSurp', 'destrezaCaToque', 'tamanhoCaToque', 'deflexaoCaToque', 'esquivaCaToque'});
    obj.dataLink36:setDefaultValues({'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true'});
    obj.dataLink36:setName("dataLink36");

    obj.dataLink37 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink37:setParent(obj.rectangle51);
    obj.dataLink37:setFields({'equipamentoCorpoPen', 'escudoPen'});
    obj.dataLink37:setName("dataLink37");

    obj.dataLink38 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink38:setParent(obj.rectangle51);
    obj.dataLink38:setFields({'equipamentoCorpoFalha', 'escudoFalha'});
    obj.dataLink38:setName("dataLink38");

    obj.layout15 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout15:setParent(obj.rectangle51);
    obj.layout15:setLeft(0);
    obj.layout15:setTop(105);
    obj.layout15:setWidth(260);
    obj.layout15:setHeight(25);
    obj.layout15:setName("layout15");

    obj.label133 = GUI.fromHandle(_obj_newObject("label"));
    obj.label133:setParent(obj.layout15);
    obj.label133:setLeft(30);
    obj.label133:setTop(0);
    obj.label133:setWidth(30);
    obj.label133:setHeight(20);
    obj.label133:setText("RM");
    obj.label133:setName("label133");

    obj.edit154 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit154:setParent(obj.layout15);
    obj.edit154:setVertTextAlign("center");
    obj.edit154:setLeft(60);
    obj.edit154:setTop(0);
    obj.edit154:setWidth(170);
    obj.edit154:setHeight(25);
    obj.edit154:setField("rm");
    obj.edit154:setName("edit154");

    obj.rectangle57 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle57:setParent(obj.scrollBox1);
    obj.rectangle57:setLeft(0);
    obj.rectangle57:setTop(335);
    obj.rectangle57:setWidth(220);
    obj.rectangle57:setHeight(165);
    obj.rectangle57:setColor("black");
    obj.rectangle57:setName("rectangle57");

    obj.label134 = GUI.fromHandle(_obj_newObject("label"));
    obj.label134:setParent(obj.rectangle57);
    obj.label134:setLeft(5);
    obj.label134:setTop(1);
    obj.label134:setWidth(220);
    obj.label134:setHeight(20);
    obj.label134:setText("PONTOS DE VIDA");
    obj.label134:setName("label134");

    obj.label135 = GUI.fromHandle(_obj_newObject("label"));
    obj.label135:setParent(obj.rectangle57);
    obj.label135:setLeft(35);
    obj.label135:setTop(25);
    obj.label135:setWidth(100);
    obj.label135:setHeight(20);
    obj.label135:setText("REAL");
    obj.label135:setName("label135");

    obj.edit155 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit155:setParent(obj.rectangle57);
    obj.edit155:setType("number");
    obj.edit155:setVertTextAlign("center");
    obj.edit155:setHorzTextAlign("center");
    obj.edit155:setLeft(5);
    obj.edit155:setTop(45);
    obj.edit155:setWidth(105);
    obj.edit155:setHeight(25);
    obj.edit155:setField("pvTotal");
    obj.edit155:setName("edit155");

    obj.label136 = GUI.fromHandle(_obj_newObject("label"));
    obj.label136:setParent(obj.rectangle57);
    obj.label136:setLeft(115);
    obj.label136:setTop(25);
    obj.label136:setWidth(100);
    obj.label136:setHeight(20);
    obj.label136:setText("TEMPORARIO");
    obj.label136:setName("label136");

    obj.edit156 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit156:setParent(obj.rectangle57);
    obj.edit156:setType("number");
    obj.edit156:setVertTextAlign("center");
    obj.edit156:setHorzTextAlign("center");
    obj.edit156:setLeft(110);
    obj.edit156:setTop(45);
    obj.edit156:setWidth(105);
    obj.edit156:setHeight(25);
    obj.edit156:setField("pvTemporario");
    obj.edit156:setName("edit156");

    obj.button10 = GUI.fromHandle(_obj_newObject("button"));
    obj.button10:setParent(obj.rectangle57);
    obj.button10:setLeft(5);
    obj.button10:setTop(70);
    obj.button10:setWidth(40);
    obj.button10:setHeight(25);
    obj.button10:setText("DVs");
    obj.button10:setName("button10");

    obj.edit157 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit157:setParent(obj.rectangle57);
    obj.edit157:setVertTextAlign("center");
    obj.edit157:setLeft(45);
    obj.edit157:setTop(70);
    obj.edit157:setWidth(170);
    obj.edit157:setHeight(25);
    obj.edit157:setField("dvs");
    obj.edit157:setName("edit157");

    obj.textEditor2 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor2:setParent(obj.rectangle57);
    obj.textEditor2:setLeft(5);
    obj.textEditor2:setTop(95);
    obj.textEditor2:setWidth(210);
    obj.textEditor2:setHeight(65);
    obj.textEditor2:setField("rd");
    obj.textEditor2:setName("textEditor2");

    obj.layout16 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout16:setParent(obj.scrollBox1);
    obj.layout16:setLeft(225);
    obj.layout16:setTop(335);
    obj.layout16:setWidth(142);
    obj.layout16:setHeight(165);
    obj.layout16:setName("layout16");

    obj.rectangle58 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle58:setParent(obj.layout16);
    obj.rectangle58:setAlign("client");
    obj.rectangle58:setColor("black");
    obj.rectangle58:setName("rectangle58");

    obj.label137 = GUI.fromHandle(_obj_newObject("label"));
    obj.label137:setParent(obj.layout16);
    obj.label137:setLeft(5);
    obj.label137:setTop(0);
    obj.label137:setWidth(321);
    obj.label137:setHeight(20);
    obj.label137:setText("BÔNUS TEMPORARIOS");
    obj.label137:setName("label137");

    obj.label138 = GUI.fromHandle(_obj_newObject("label"));
    obj.label138:setParent(obj.layout16);
    obj.label138:setLeft(5);
    obj.label138:setTop(30);
    obj.label138:setWidth(50);
    obj.label138:setHeight(20);
    obj.label138:setText("ATAQUE");
    obj.label138:setName("label138");

    obj.edit158 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit158:setParent(obj.layout16);
    obj.edit158:setVertTextAlign("center");
    obj.edit158:setLeft(60);
    obj.edit158:setTop(30);
    obj.edit158:setWidth(70);
    obj.edit158:setHeight(25);
    obj.edit158:setField("buffAtaque");
    obj.edit158:setName("edit158");

    obj.label139 = GUI.fromHandle(_obj_newObject("label"));
    obj.label139:setParent(obj.layout16);
    obj.label139:setLeft(5);
    obj.label139:setTop(55);
    obj.label139:setWidth(50);
    obj.label139:setHeight(20);
    obj.label139:setText("DANO");
    obj.label139:setName("label139");

    obj.edit159 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit159:setParent(obj.layout16);
    obj.edit159:setVertTextAlign("center");
    obj.edit159:setLeft(60);
    obj.edit159:setTop(55);
    obj.edit159:setWidth(70);
    obj.edit159:setHeight(25);
    obj.edit159:setField("buffDano");
    obj.edit159:setName("edit159");

    obj.label140 = GUI.fromHandle(_obj_newObject("label"));
    obj.label140:setParent(obj.layout16);
    obj.label140:setLeft(5);
    obj.label140:setTop(80);
    obj.label140:setWidth(50);
    obj.label140:setHeight(20);
    obj.label140:setText("CRITICO");
    obj.label140:setName("label140");

    obj.edit160 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit160:setParent(obj.layout16);
    obj.edit160:setVertTextAlign("center");
    obj.edit160:setLeft(60);
    obj.edit160:setTop(80);
    obj.edit160:setWidth(70);
    obj.edit160:setHeight(25);
    obj.edit160:setField("buffDanoCritico");
    obj.edit160:setName("edit160");

    obj.label141 = GUI.fromHandle(_obj_newObject("label"));
    obj.label141:setParent(obj.layout16);
    obj.label141:setLeft(5);
    obj.label141:setTop(105);
    obj.label141:setWidth(50);
    obj.label141:setHeight(20);
    obj.label141:setText("TR");
    obj.label141:setName("label141");

    obj.edit161 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit161:setParent(obj.layout16);
    obj.edit161:setVertTextAlign("center");
    obj.edit161:setLeft(60);
    obj.edit161:setTop(105);
    obj.edit161:setWidth(70);
    obj.edit161:setHeight(25);
    obj.edit161:setField("buffTR");
    obj.edit161:setName("edit161");

    obj.label142 = GUI.fromHandle(_obj_newObject("label"));
    obj.label142:setParent(obj.layout16);
    obj.label142:setLeft(5);
    obj.label142:setTop(130);
    obj.label142:setWidth(50);
    obj.label142:setHeight(20);
    obj.label142:setText("PERICIA");
    obj.label142:setName("label142");

    obj.edit162 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit162:setParent(obj.layout16);
    obj.edit162:setVertTextAlign("center");
    obj.edit162:setLeft(60);
    obj.edit162:setTop(130);
    obj.edit162:setWidth(70);
    obj.edit162:setHeight(25);
    obj.edit162:setField("buffPericia");
    obj.edit162:setName("edit162");

    obj.layout17 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout17:setParent(obj.scrollBox1);
    obj.layout17:setLeft(372);
    obj.layout17:setTop(335);
    obj.layout17:setWidth(170);
    obj.layout17:setHeight(165);
    obj.layout17:setName("layout17");

    obj.rectangle59 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle59:setParent(obj.layout17);
    obj.rectangle59:setAlign("client");
    obj.rectangle59:setColor("black");
    obj.rectangle59:setName("rectangle59");

    obj.label143 = GUI.fromHandle(_obj_newObject("label"));
    obj.label143:setParent(obj.layout17);
    obj.label143:setLeft(5);
    obj.label143:setTop(0);
    obj.label143:setWidth(321);
    obj.label143:setHeight(20);
    obj.label143:setText("NOTAS");
    obj.label143:setName("label143");

    obj.textEditor3 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor3:setParent(obj.layout17);
    obj.textEditor3:setLeft(5);
    obj.textEditor3:setField("notas");
    obj.textEditor3:setWidth(160);
    obj.textEditor3:setTop(30);
    obj.textEditor3:setHeight(130);
    obj.textEditor3:setName("textEditor3");

    obj.layout18 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout18:setParent(obj.scrollBox1);
    obj.layout18:setLeft(552);
    obj.layout18:setTop(335);
    obj.layout18:setWidth(188);
    obj.layout18:setHeight(142);
    obj.layout18:setName("layout18");

    obj.rectangle60 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle60:setParent(obj.layout18);
    obj.rectangle60:setAlign("client");
    obj.rectangle60:setColor("black");
    obj.rectangle60:setName("rectangle60");

    obj.label144 = GUI.fromHandle(_obj_newObject("label"));
    obj.label144:setParent(obj.layout18);
    obj.label144:setLeft(0);
    obj.label144:setTop(0);
    obj.label144:setWidth(180);
    obj.label144:setHeight(25);
    obj.label144:setText("BBA");
    obj.label144:setHorzTextAlign("center");
    obj.label144:setName("label144");

    obj.edit163 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit163:setParent(obj.layout18);
    obj.edit163:setLeft(5);
    obj.edit163:setTop(25);
    obj.edit163:setWidth(40);
    obj.edit163:setHeight(25);
    obj.edit163:setType("number");
    obj.edit163:setHorzTextAlign("center");
    obj.edit163:setField("bba");
    obj.edit163:setName("edit163");

    obj.rectangle61 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle61:setParent(obj.layout18);
    obj.rectangle61:setLeft(50);
    obj.rectangle61:setTop(25);
    obj.rectangle61:setWidth(125);
    obj.rectangle61:setHeight(25);
    obj.rectangle61:setColor("black");
    obj.rectangle61:setStrokeColor("white");
    obj.rectangle61:setStrokeSize(1);
    obj.rectangle61:setName("rectangle61");

    obj.label145 = GUI.fromHandle(_obj_newObject("label"));
    obj.label145:setParent(obj.layout18);
    obj.label145:setLeft(50);
    obj.label145:setTop(25);
    obj.label145:setWidth(125);
    obj.label145:setHeight(25);
    obj.label145:setField("bbaDesc");
    obj.label145:setHorzTextAlign("center");
    obj.label145:setName("label145");

    obj.layout19 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout19:setParent(obj.layout18);
    obj.layout19:setLeft(0);
    obj.layout19:setTop(60);
    obj.layout19:setWidth(180);
    obj.layout19:setHeight(60);
    obj.layout19:setName("layout19");

    obj.button11 = GUI.fromHandle(_obj_newObject("button"));
    obj.button11:setParent(obj.layout19);
    obj.button11:setLeft(5);
    obj.button11:setTop(0);
    obj.button11:setWidth(40);
    obj.button11:setHeight(25);
    obj.button11:setText("BMC");
    obj.button11:setFontSize(11);
    obj.button11:setName("button11");

    obj.rectangle62 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle62:setParent(obj.layout19);
    obj.rectangle62:setLeft(46);
    obj.rectangle62:setTop(0);
    obj.rectangle62:setWidth(35);
    obj.rectangle62:setHeight(25);
    obj.rectangle62:setColor("black");
    obj.rectangle62:setStrokeColor("white");
    obj.rectangle62:setStrokeSize(1);
    obj.rectangle62:setName("rectangle62");

    obj.label146 = GUI.fromHandle(_obj_newObject("label"));
    obj.label146:setParent(obj.layout19);
    obj.label146:setLeft(46);
    obj.label146:setWidth(35);
    obj.label146:setHeight(25);
    obj.label146:setField("bmc");
    obj.label146:setHorzTextAlign("center");
    obj.label146:setName("label146");

    obj.label147 = GUI.fromHandle(_obj_newObject("label"));
    obj.label147:setParent(obj.layout19);
    obj.label147:setLeft(10);
    obj.label147:setTop(30);
    obj.label147:setWidth(50);
    obj.label147:setHeight(25);
    obj.label147:setText("DMC");
    obj.label147:setName("label147");

    obj.rectangle63 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle63:setParent(obj.layout19);
    obj.rectangle63:setLeft(46);
    obj.rectangle63:setTop(30);
    obj.rectangle63:setWidth(35);
    obj.rectangle63:setHeight(25);
    obj.rectangle63:setColor("black");
    obj.rectangle63:setStrokeColor("white");
    obj.rectangle63:setStrokeSize(1);
    obj.rectangle63:setName("rectangle63");

    obj.label148 = GUI.fromHandle(_obj_newObject("label"));
    obj.label148:setParent(obj.layout19);
    obj.label148:setLeft(46);
    obj.label148:setTop(30);
    obj.label148:setWidth(35);
    obj.label148:setHeight(25);
    obj.label148:setField("bmd");
    obj.label148:setHorzTextAlign("center");
    obj.label148:setName("label148");

    obj.ManeuverBt = GUI.fromHandle(_obj_newObject("button"));
    obj.ManeuverBt:setParent(obj.layout19);
    obj.ManeuverBt:setLeft(100);
    obj.ManeuverBt:setTop(15);
    obj.ManeuverBt:setWidth(25);
    obj.ManeuverBt:setHeight(25);
    obj.ManeuverBt:setName("ManeuverBt");
    obj.ManeuverBt:setText("i");

    obj.dataLink39 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink39:setParent(obj.layout19);
    obj.dataLink39:setFields({'bba', 'efetModFor', 'bmcTamanho', 'bmcOutros', 'destrezaBMC', 'bmcDiversos', 'bmdTamanho', 'bmdOutros', 'efetModDes', 'bmdDiversos', 'bmcInvestida', 'bmcEncontrao', 'bmcTruqueSujo', 'bmcDesarmar', 'bmcAgarrar', 'bmcAtropelar', 'bmcReposicionar', 'bmcRoubar', 'bmcSeparar', 'bmcDerrubar', 'bmdInvestida', 'bmdEncontrao', 'bmdTruqueSujo', 'bmdDesarmar', 'bmdAgarrar', 'bmdAtropelar', 'bmdReposicionar', 'bmdRoubar', 'bmdSeparar', 'bmdDerrubar', 'bmcInvestidaCheck', 'bmcEncontraoCheck', 'bmcTruqueSujoCheck', 'bmcDesarmarCheck', 'bmcAgarrarCheck', 'bmcAtropelarCheck', 'bmcReposicionarCheck', 'bmcRoubarCheck', 'bmcSepararCheck', 'bmcDerrubarCheck', 'bmdInvestidaCheck', 'bmdEncontraoCheck', 'bmdTruqueSujoCheck', 'bmdDesarmarCheck', 'bmdAgarrarCheck', 'bmdAtropelarCheck', 'bmdReposicionarCheck', 'bmdRoubarCheck', 'bmdSepararCheck', 'bmdDerrubarCheck'});
    obj.dataLink39:setName("dataLink39");

    obj.rectangle64 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle64:setParent(obj.scrollBox1);
    obj.rectangle64:setLeft(0);
    obj.rectangle64:setTop(505);
    obj.rectangle64:setWidth(140);
    obj.rectangle64:setHeight(115);
    obj.rectangle64:setColor("black");
    obj.rectangle64:setName("rectangle64");

    obj.label149 = GUI.fromHandle(_obj_newObject("label"));
    obj.label149:setParent(obj.rectangle64);
    obj.label149:setLeft(0);
    obj.label149:setTop(0);
    obj.label149:setWidth(140);
    obj.label149:setHeight(25);
    obj.label149:setText("RESISTENCIAS");
    obj.label149:setHorzTextAlign("center");
    obj.label149:setName("label149");

    obj.layout20 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout20:setParent(obj.rectangle64);
    obj.layout20:setLeft(0);
    obj.layout20:setTop(30);
    obj.layout20:setWidth(275);
    obj.layout20:setHeight(25);
    obj.layout20:setName("layout20");

    obj.button12 = GUI.fromHandle(_obj_newObject("button"));
    obj.button12:setParent(obj.layout20);
    obj.button12:setLeft(5);
    obj.button12:setWidth(45);
    obj.button12:setText("FORT");
    obj.button12:setFontSize(11);
    obj.button12:setName("button12");

    obj.rectangle65 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle65:setParent(obj.layout20);
    obj.rectangle65:setLeft(55);
    obj.rectangle65:setTop(0);
    obj.rectangle65:setWidth(40);
    obj.rectangle65:setHeight(25);
    obj.rectangle65:setColor("black");
    obj.rectangle65:setStrokeColor("white");
    obj.rectangle65:setStrokeSize(1);
    obj.rectangle65:setName("rectangle65");

    obj.label150 = GUI.fromHandle(_obj_newObject("label"));
    obj.label150:setParent(obj.layout20);
    obj.label150:setLeft(55);
    obj.label150:setWidth(40);
    obj.label150:setHeight(25);
    obj.label150:setField("trFort");
    obj.label150:setHorzTextAlign("center");
    obj.label150:setName("label150");

    obj.dataLink40 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink40:setParent(obj.layout20);
    obj.dataLink40:setField("atrTrFort");
    obj.dataLink40:setDefaultValue("3");
    obj.dataLink40:setName("dataLink40");

    obj.layout21 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout21:setParent(obj.rectangle64);
    obj.layout21:setLeft(0);
    obj.layout21:setTop(55);
    obj.layout21:setWidth(275);
    obj.layout21:setHeight(25);
    obj.layout21:setName("layout21");

    obj.button13 = GUI.fromHandle(_obj_newObject("button"));
    obj.button13:setParent(obj.layout21);
    obj.button13:setLeft(5);
    obj.button13:setWidth(45);
    obj.button13:setText("REF");
    obj.button13:setFontSize(11);
    obj.button13:setName("button13");

    obj.rectangle66 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle66:setParent(obj.layout21);
    obj.rectangle66:setLeft(55);
    obj.rectangle66:setTop(0);
    obj.rectangle66:setWidth(40);
    obj.rectangle66:setHeight(25);
    obj.rectangle66:setColor("black");
    obj.rectangle66:setStrokeColor("white");
    obj.rectangle66:setStrokeSize(1);
    obj.rectangle66:setName("rectangle66");

    obj.label151 = GUI.fromHandle(_obj_newObject("label"));
    obj.label151:setParent(obj.layout21);
    obj.label151:setLeft(55);
    obj.label151:setWidth(40);
    obj.label151:setHeight(25);
    obj.label151:setField("trRef");
    obj.label151:setHorzTextAlign("center");
    obj.label151:setName("label151");

    obj.dataLink41 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink41:setParent(obj.layout21);
    obj.dataLink41:setField("atrTrRef");
    obj.dataLink41:setDefaultValue("2");
    obj.dataLink41:setName("dataLink41");

    obj.layout22 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout22:setParent(obj.rectangle64);
    obj.layout22:setLeft(0);
    obj.layout22:setTop(80);
    obj.layout22:setWidth(275);
    obj.layout22:setHeight(25);
    obj.layout22:setName("layout22");

    obj.button14 = GUI.fromHandle(_obj_newObject("button"));
    obj.button14:setParent(obj.layout22);
    obj.button14:setLeft(5);
    obj.button14:setWidth(45);
    obj.button14:setText("VON");
    obj.button14:setFontSize(11);
    obj.button14:setName("button14");

    obj.rectangle67 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle67:setParent(obj.layout22);
    obj.rectangle67:setLeft(55);
    obj.rectangle67:setTop(0);
    obj.rectangle67:setWidth(40);
    obj.rectangle67:setHeight(25);
    obj.rectangle67:setColor("black");
    obj.rectangle67:setStrokeColor("white");
    obj.rectangle67:setStrokeSize(1);
    obj.rectangle67:setName("rectangle67");

    obj.label152 = GUI.fromHandle(_obj_newObject("label"));
    obj.label152:setParent(obj.layout22);
    obj.label152:setLeft(55);
    obj.label152:setWidth(40);
    obj.label152:setHeight(25);
    obj.label152:setField("trVon");
    obj.label152:setHorzTextAlign("center");
    obj.label152:setName("label152");

    obj.dataLink42 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink42:setParent(obj.layout22);
    obj.dataLink42:setField("atrTrVon");
    obj.dataLink42:setDefaultValue("5");
    obj.dataLink42:setName("dataLink42");

    obj.dataLink43 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink43:setParent(obj.rectangle64);
    obj.dataLink43:setFields({'efetModFor', 'efetModDes', 'efetModCon', 'efetModInt', 'efetModSab', 'efetModCar', 'atrTrFort', 'atrTrRef', 'atrTrVon'});
    obj.dataLink43:setName("dataLink43");

    obj.TrBut = GUI.fromHandle(_obj_newObject("button"));
    obj.TrBut:setParent(obj.rectangle64);
    obj.TrBut:setLeft(100);
    obj.TrBut:setTop(30);
    obj.TrBut:setWidth(30);
    obj.TrBut:setHeight(75);
    obj.TrBut:setName("TrBut");
    obj.TrBut:setText(">>");

    obj.rectangle68 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle68:setParent(obj.scrollBox1);
    obj.rectangle68:setLeft(745);
    obj.rectangle68:setTop(115);
    obj.rectangle68:setWidth(362);
    obj.rectangle68:setHeight(362);
    obj.rectangle68:setColor("black");
    obj.rectangle68:setStrokeColor("white");
    obj.rectangle68:setStrokeSize(1);
    obj.rectangle68:setName("rectangle68");

    obj.image1 = GUI.fromHandle(_obj_newObject("image"));
    obj.image1:setParent(obj.scrollBox1);
    obj.image1:setLeft(746);
    obj.image1:setTop(116);
    obj.image1:setWidth(360);
    obj.image1:setHeight(360);
    obj.image1:setField("avatar");
    obj.image1:setEditable(true);
    obj.image1:setStyle("autoFit");
    obj.image1:setName("image1");

    obj._e_event0 = obj.dataLink2:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet~= nil then
            						local real = 	(tonumber(sheet.inicialFor) or 0) + 
            										(tonumber(sheet.racaFor) or 0) + 
            										(tonumber(sheet.nepFor) or 0) + 
            										(tonumber(sheet.inerenteFor) or 0) + 
            										(tonumber(sheet.tamanhoFor) or 0) + 
            										(tonumber(sheet.outrosFor) or 0);
            						local efetivo = real;
            						if sheet.isMelhoriaActive then
            							efetivo = efetivo + (tonumber(sheet.melhoriaFor) or 0);
            						end;
            						if sheet.isDnTempActive then
            							efetivo = efetivo + (tonumber(sheet.danoTempFor) or 0);
            						end;
            						if sheet.isDnPermActive then
            							efetivo = efetivo + (tonumber(sheet.danoPermFor) or 0);
            						end;
            						if sheet.isTempActive then
            							efetivo = efetivo + (tonumber(sheet.temporarioFor) or 0);
            						end;
            						if sheet.isClasseActive then
            							efetivo = efetivo + (tonumber(sheet.magiaFor) or 0);
            						end;
            						if sheet.isMagiaActive then
            							efetivo = efetivo + (tonumber(sheet.classeFor) or 0);
            						end;			
            						sheet.realFor = real;
            						sheet.efetFor = efetivo;
            					end;
        end, obj);

    obj._e_event1 = obj.dataLink4:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet~= nil then
            						local real = 	(tonumber(sheet.inicialDes) or 0) + 
            										(tonumber(sheet.racaDes) or 0) + 
            										(tonumber(sheet.nepDes) or 0) + 
            										(tonumber(sheet.inerenteDes) or 0) + 
            										(tonumber(sheet.tamanhoDes) or 0) + 
            										(tonumber(sheet.outrosDes) or 0);
            						local efetivo = real;
            						if sheet.isMelhoriaActive then
            							efetivo = efetivo + (tonumber(sheet.melhoriaDes) or 0);
            						end;
            						if sheet.isDnTempActive then
            							efetivo = efetivo + (tonumber(sheet.danoTempDes) or 0);
            						end;
            						if sheet.isDnPermActive then
            							efetivo = efetivo + (tonumber(sheet.danoPermDes) or 0);
            						end;
            						if sheet.isTempActive then
            							efetivo = efetivo + (tonumber(sheet.temporarioDes) or 0);
            						end;
            						if sheet.isClasseActive then
            							efetivo = efetivo + (tonumber(sheet.magiaDes) or 0);
            						end;
            						if sheet.isMagiaActive then
            							efetivo = efetivo + (tonumber(sheet.classeDes) or 0);
            						end;			
            						sheet.realDes = real;
            						sheet.efetDes = efetivo;
            					end;
        end, obj);

    obj._e_event2 = obj.dataLink6:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet~= nil then
            						local real = 	(tonumber(sheet.inicialCon) or 0) + 
            										(tonumber(sheet.racaCon) or 0) + 
            										(tonumber(sheet.nepCon) or 0) + 
            										(tonumber(sheet.inerenteCon) or 0) + 
            										(tonumber(sheet.tamanhoCon) or 0) + 
            										(tonumber(sheet.outrosCon) or 0);
            						local efetivo = real;
            						if sheet.isMelhoriaActive then
            							efetivo = efetivo + (tonumber(sheet.melhoriaCon) or 0);
            						end;
            						if sheet.isDnTempActive then
            							efetivo = efetivo + (tonumber(sheet.danoTempCon) or 0);
            						end;
            						if sheet.isDnPermActive then
            							efetivo = efetivo + (tonumber(sheet.danoPermCon) or 0);
            						end;
            						if sheet.isTempActive then
            							efetivo = efetivo + (tonumber(sheet.temporarioCon) or 0);
            						end;
            						if sheet.isClasseActive then
            							efetivo = efetivo + (tonumber(sheet.magiaCon) or 0);
            						end;
            						if sheet.isMagiaActive then
            							efetivo = efetivo + (tonumber(sheet.classeCon) or 0);
            						end;			
            						sheet.realCon = real;
            						sheet.efetCon = efetivo;
            					end;
        end, obj);

    obj._e_event3 = obj.dataLink8:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet~= nil then
            						local real = 	(tonumber(sheet.inicialInt) or 0) + 
            										(tonumber(sheet.racaInt) or 0) + 
            										(tonumber(sheet.nepInt) or 0) + 
            										(tonumber(sheet.inerenteInt) or 0) + 
            										(tonumber(sheet.tamanhoInt) or 0) + 
            										(tonumber(sheet.outrosInt) or 0);
            						local efetivo = real;
            						if sheet.isMelhoriaActive then
            							efetivo = efetivo + (tonumber(sheet.melhoriaInt) or 0);
            						end;
            						if sheet.isDnTempActive then
            							efetivo = efetivo + (tonumber(sheet.danoTempInt) or 0);
            						end;
            						if sheet.isDnPermActive then
            							efetivo = efetivo + (tonumber(sheet.danoPermInt) or 0);
            						end;
            						if sheet.isTempActive then
            							efetivo = efetivo + (tonumber(sheet.temporarioInt) or 0);
            						end;
            						if sheet.isClasseActive then
            							efetivo = efetivo + (tonumber(sheet.magiaInt) or 0);
            						end;
            						if sheet.isMagiaActive then
            							efetivo = efetivo + (tonumber(sheet.classeInt) or 0);
            						end;			
            						sheet.realInt = real;
            						sheet.efetInt = efetivo;
            					end;
        end, obj);

    obj._e_event4 = obj.dataLink10:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet~= nil then
            						local real = 	(tonumber(sheet.inicialSab) or 0) + 
            										(tonumber(sheet.racaSab) or 0) + 
            										(tonumber(sheet.nepSab) or 0) + 
            										(tonumber(sheet.inerenteSab) or 0) + 
            										(tonumber(sheet.tamanhoSab) or 0) + 
            										(tonumber(sheet.outrosSab) or 0);
            						local efetivo = real;
            						if sheet.isMelhoriaActive then
            							efetivo = efetivo + (tonumber(sheet.melhoriaSab) or 0);
            						end;
            						if sheet.isDnTempActive then
            							efetivo = efetivo + (tonumber(sheet.danoTempSab) or 0);
            						end;
            						if sheet.isDnPermActive then
            							efetivo = efetivo + (tonumber(sheet.danoPermSab) or 0);
            						end;
            						if sheet.isTempActive then
            							efetivo = efetivo + (tonumber(sheet.temporarioSab) or 0);
            						end;
            						if sheet.isClasseActive then
            							efetivo = efetivo + (tonumber(sheet.magiaSab) or 0);
            						end;
            						if sheet.isMagiaActive then
            							efetivo = efetivo + (tonumber(sheet.classeSab) or 0);
            						end;			
            						sheet.realSab = real;
            						sheet.efetSab = efetivo;
            					end;
        end, obj);

    obj._e_event5 = obj.dataLink12:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet~= nil then
            						local real = 	(tonumber(sheet.inicialCar) or 0) + 
            										(tonumber(sheet.racaCar) or 0) + 
            										(tonumber(sheet.nepCar) or 0) + 
            										(tonumber(sheet.inerenteCar) or 0) + 
            										(tonumber(sheet.tamanhoCar) or 0) + 
            										(tonumber(sheet.outrosCar) or 0);
            						local efetivo = real;
            						if sheet.isMelhoriaActive then
            							efetivo = efetivo + (tonumber(sheet.melhoriaCar) or 0);
            						end;
            						if sheet.isDnTempActive then
            							efetivo = efetivo + (tonumber(sheet.danoTempCar) or 0);
            						end;
            						if sheet.isDnPermActive then
            							efetivo = efetivo + (tonumber(sheet.danoPermCar) or 0);
            						end;
            						if sheet.isTempActive then
            							efetivo = efetivo + (tonumber(sheet.temporarioCar) or 0);
            						end;
            						if sheet.isClasseActive then
            							efetivo = efetivo + (tonumber(sheet.magiaCar) or 0);
            						end;
            						if sheet.isMagiaActive then
            							efetivo = efetivo + (tonumber(sheet.classeCar) or 0);
            						end;			
            						sheet.realCar = real;
            						sheet.efetCar = efetivo;
            					end;
        end, obj);

    obj._e_event6 = obj.dataLink13:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet~= nil then
            						local tr = (tonumber(sheet.baseFort) or 0) + 
            										(tonumber(sheet.atrModFort) or 0) + 
            										(tonumber(sheet.magiaFort) or 0) + 
            										(tonumber(sheet.variavelFort) or 0) + 
            										(tonumber(sheet.temporarioFort) or 0) + 
            										(tonumber(sheet.outrosFort) or 0);
            						sheet.trFort = tr;
            					end;
        end, obj);

    obj._e_event7 = obj.dataLink14:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet~= nil then
            						local tr = (tonumber(sheet.baseRef) or 0) + 
            										(tonumber(sheet.atrModRef) or 0) + 
            										(tonumber(sheet.magiaRef) or 0) + 
            										(tonumber(sheet.variavelRef) or 0) + 
            										(tonumber(sheet.temporarioRef) or 0) + 
            										(tonumber(sheet.outrosRef) or 0);
            						sheet.trRef = tr;
            					end;
        end, obj);

    obj._e_event8 = obj.dataLink15:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet~= nil then
            						local tr = (tonumber(sheet.baseVon) or 0) + 
            										(tonumber(sheet.atrModVon) or 0) + 
            										(tonumber(sheet.magiaVon) or 0) + 
            										(tonumber(sheet.variavelVon) or 0) + 
            										(tonumber(sheet.temporarioVon) or 0) + 
            										(tonumber(sheet.outrosVon) or 0);
            						sheet.trVon = tr;
            					end;
        end, obj);

    obj._e_event9 = obj.button1:addEventListener("onClick",
        function (_)
            local mod = (getNumber(sheet.xpAtual) or 0) + (getNumber(sheet.xpNova) or 0);
            						
            						while true do  
            							mod, k = string.gsub(mod, "^(-?%d+)(%d%d%d)", '%1,%2')
            							if (k==0) then
            							  break
            							end
            						end
            						mod = string.gsub(mod, ",", ".");
            						
            						sheet.xpAtual = mod .. "XP";
            						sheet.xpNova = "0";
        end, obj);

    obj._e_event10 = obj.dataLink16:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet~= nil then
            
            
            						-- Calculando XP atual (tirando formatação)
            						if sheet.xpAtual == nil then
            							sheet.xpAtual = 0;
            						end;
            						local mod = sheet.xpAtual;
            						mod = string.gsub(mod, "X", "");
            						mod = string.gsub(mod, "P", "");
            						mod = string.gsub(mod, "x", "");
            						mod = string.gsub(mod, "p", "");
            						mod = string.gsub(mod, "%.", "");
            						mod = (tonumber(mod) or 0);
            						local xpAtual = mod;
            
            						-- Calculando XP alvo
            						local xpTable = {};
            						if sheet.xpVelocidade == "Lento" then
            							xpTable = {3000, 7500, 14000, 23000, 35000, 53000, 77000, 115000, 160000, 235000, 330000, 475000, 665000, 955000, 1350000, 1900000, 2700000, 3850000, 5350000};
            						elseif sheet.xpVelocidade == "Medio" then
            							xpTable = {2000, 5000, 9000, 15000, 23000, 35000, 51000, 75000, 105000, 155000, 220000, 315000, 445000, 635000, 890000, 1300000, 1800000, 2550000, 3600000};
            						else
            							xpTable = {1300, 3300, 6000, 10000, 15000, 23000, 34000, 50000, 71000, 105000, 145000, 210000, 295000, 425000, 600000, 850000, 1200000, 1700000, 2400000};
            						end;
            						
            						local level = 1;
            						local xpAlvo = xpTable[19];
            						for i=1, 19, 1 do
            							if xpAtual >= xpTable[i] then
            								level = i + 1;
            							else
            								xpAlvo = xpTable[i];
            								break;
            							end;
            						end;
            
            						while true do  
            							xpAlvo, k = string.gsub(xpAlvo, "^(-?%d+)(%d%d%d)", '%1,%2')
            							if (k==0) then
            							  break
            							end
            						end
            						xpAlvo = string.gsub(xpAlvo, ",", ".");
            						
            						sheet.xpNivel = xpAlvo .. "XP";
            						sheet.nep = level;
            					end;
        end, obj);

    obj._e_event11 = obj.button2:addEventListener("onClick",
        function (_)
            local rolagem = Firecast.interpretarRolagem("1d20 " .. (sheet.efetModFor) or 0);
            					local mesaDoPersonagem = Firecast.getMesaDe(sheet);
            					mesaDoPersonagem.activeChat:rolarDados(rolagem, "Teste de Força de " .. (sheet.nome or "NOME"));
        end, obj);

    obj._e_event12 = obj.dataLink17:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet ~= nil then
            						sheet.realModFor = getMOD(sheet.realFor);  
            					end;
        end, obj);

    obj._e_event13 = obj.dataLink18:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet ~= nil then
            						sheet.efetModFor = getMOD(sheet.efetFor);
            						updateAtributes(1);
            					end;
        end, obj);

    obj._e_event14 = obj.button3:addEventListener("onClick",
        function (_)
            local rolagem = Firecast.interpretarRolagem("1d20 " .. (sheet.efetModDes) or 0);
            					local mesaDoPersonagem = Firecast.getMesaDe(sheet);
            					mesaDoPersonagem.activeChat:rolarDados(rolagem, "Teste de Destreza de " .. (sheet.nome or "NOME"));
        end, obj);

    obj._e_event15 = obj.dataLink19:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet ~= nil then
            						sheet.realModDes = getMOD(sheet.realDes);  
            					end;
        end, obj);

    obj._e_event16 = obj.dataLink20:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet ~= nil then
            						sheet.efetModDes = getMOD(sheet.efetDes);
            						updateAtributes(2);
            					end;
        end, obj);

    obj._e_event17 = obj.button4:addEventListener("onClick",
        function (_)
            local rolagem = Firecast.interpretarRolagem("1d20 " .. (sheet.efetModCon) or 0);
            					local mesaDoPersonagem = Firecast.getMesaDe(sheet);
            					mesaDoPersonagem.activeChat:rolarDados(rolagem, "Teste de Constituição de " .. (sheet.nome or "NOME"));
        end, obj);

    obj._e_event18 = obj.dataLink21:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet ~= nil then
            						sheet.realModCon = getMOD(sheet.realCon);  
            					end;
        end, obj);

    obj._e_event19 = obj.dataLink22:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet ~= nil then
            						sheet.efetModCon = getMOD(sheet.efetCon);
            						updateAtributes(3);
            					end;
        end, obj);

    obj._e_event20 = obj.button5:addEventListener("onClick",
        function (_)
            local rolagem = Firecast.interpretarRolagem("1d20 " .. (sheet.efetModInt) or 0);
            					local mesaDoPersonagem = Firecast.getMesaDe(sheet);
            					mesaDoPersonagem.activeChat:rolarDados(rolagem, "Teste de Inteligência de " .. (sheet.nome or "NOME"));
        end, obj);

    obj._e_event21 = obj.dataLink23:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet ~= nil then
            						sheet.realModInt = getMOD(sheet.realInt);  
            					end;
        end, obj);

    obj._e_event22 = obj.dataLink24:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet ~= nil then
            						sheet.efetModInt = getMOD(sheet.efetInt);
            						updateAtributes(4);
            					end;
        end, obj);

    obj._e_event23 = obj.button6:addEventListener("onClick",
        function (_)
            local rolagem = Firecast.interpretarRolagem("1d20 " .. (sheet.efetModSab) or 0);
            					local mesaDoPersonagem = Firecast.getMesaDe(sheet);
            					mesaDoPersonagem.activeChat:rolarDados(rolagem, "Teste de Sabedoria de " .. (sheet.nome or "NOME"));
        end, obj);

    obj._e_event24 = obj.dataLink25:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet ~= nil then
            						sheet.realModSab = getMOD(sheet.realSab);  
            					end;
        end, obj);

    obj._e_event25 = obj.dataLink26:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet ~= nil then
            						sheet.efetModSab = getMOD(sheet.efetSab);
            						updateAtributes(5);
            					end;
        end, obj);

    obj._e_event26 = obj.button7:addEventListener("onClick",
        function (_)
            local rolagem = Firecast.interpretarRolagem("1d20 " .. (sheet.efetModCar) or 0);
            					local mesaDoPersonagem = Firecast.getMesaDe(sheet);
            					mesaDoPersonagem.activeChat:rolarDados(rolagem, "Teste de Carisma de " .. (sheet.nome or "NOME"));
        end, obj);

    obj._e_event27 = obj.dataLink27:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet ~= nil then
            						sheet.realModCar = getMOD(sheet.realCar);  
            					end;
        end, obj);

    obj._e_event28 = obj.dataLink28:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet ~= nil then
            						sheet.efetModCar = getMOD(sheet.efetCar);
            						updateAtributes(6);
            					end;
        end, obj);

    obj._e_event29 = obj.AtrBut:addEventListener("onClick",
        function (_)
            local pop = self:findControlByName("popAtributo");
            				
            					if pop ~= nil then
            						pop:setNodeObject(self.sheet);
            						pop:showPopupEx("rightCenter", self.AtrBut);
            					else
            						showMessage("Ops, bug.. nao encontrei o popup de atributos para exibir");
            					end;
        end, obj);

    obj._e_event30 = obj.dataLink29:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet ~= nil and sheet.deslTerrestre ~= nil then
            
            						local mod = sheet.deslTerrestre;
            						mod = string.gsub(mod, "m", "");
            						mod = string.gsub(mod, ",", ".");
            
            						mod = math.floor((tonumber(mod) or 0) / 1.5);
            						sheet.deslTerrestreQuadrados = mod .. "q";
            					end;
        end, obj);

    obj._e_event31 = obj.dataLink30:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet ~= nil and sheet.deslVoo ~= nil then
            
            						local mod = sheet.deslVoo;
            						mod = string.gsub(mod, "m", "");
            						mod = string.gsub(mod, ",", ".");
            
            						mod = math.floor((tonumber(mod) or 0) / 1.5);
            						sheet.deslVooQuadrados = mod .. "q";
            					end;
        end, obj);

    obj._e_event32 = obj.dataLink31:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet ~= nil and sheet.deslNatacao ~= nil then
            
            						local mod = sheet.deslNatacao;
            						mod = string.gsub(mod, "m", "");
            						mod = string.gsub(mod, ",", ".");
            
            						mod = math.floor((tonumber(mod) or 0) / 1.5);
            						sheet.deslNatacaoQuadrados = mod .. "q";
            					end;
        end, obj);

    obj._e_event33 = obj.dataLink32:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet ~= nil and sheet.deslEscalar ~= nil then
            
            						local mod = sheet.deslEscalar;
            						mod = string.gsub(mod, "m", "");
            						mod = string.gsub(mod, ",", ".");
            
            						mod = math.floor((tonumber(mod) or 0) / 1.5);
            						sheet.deslEscalarQuadrados = mod .. "q";
            					end;
        end, obj);

    obj._e_event34 = obj.dataLink33:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet ~= nil and sheet.deslEscavar ~= nil then
            
            						local mod = sheet.deslEscavar;
            						mod = string.gsub(mod, "m", "");
            						mod = string.gsub(mod, ",", ".");
            
            						mod = math.floor((tonumber(mod) or 0) / 1.5);
            						sheet.deslEscavarQuadrados = mod .. "q";
            					end;
        end, obj);

    obj._e_event35 = obj.button8:addEventListener("onClick",
        function (_)
            local rolagem = Firecast.interpretarRolagem("1d20 " .. (sheet.iniciativa or "+0"));
            					local mesaDoPersonagem = Firecast.getMesaDe(sheet);
            					mesaDoPersonagem.activeChat:rolarDados(rolagem, "Teste de Iniciativa de " .. (sheet.nome or "PONHA UM NOME NO PERSONAGEM"));
        end, obj);

    obj._e_event36 = obj.dataLink34:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet~= nil then
            						local mod = (tonumber(sheet.efetModDes) or 0) + (tonumber(sheet.iniVariado) or 0);
            						if (mod >= 0) then
            								mod = "+" .. mod;
            						end;					   
            						sheet.iniciativa = mod;
            					end;
        end, obj);

    obj._e_event37 = obj.button9:addEventListener("onClick",
        function (_)
            local rolagem = Firecast.interpretarRolagem("1d100");
            						local mesaDoPersonagem = Firecast.getMesaDe(sheet);
            						mesaDoPersonagem.activeChat:rolarDados(rolagem, "Teste de Falha Arcana (" .. (sheet.falha or "0%").. ") de " .. (sheet.nome or "NOME"));
        end, obj);

    obj._e_event38 = obj.caDetails:addEventListener("onClick",
        function (_)
            local pop = self:findControlByName("popCA");
            					
            					if pop ~= nil then
            						pop:setNodeObject(self.sheet);
            						pop:showPopupEx("bottomCenter", self.caDetails);
            					else
            						showMessage("Ops, bug.. nao encontrei o popup de armadura para exibir");
            					end;
        end, obj);

    obj._e_event39 = obj.dataLink35:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet~= nil then
            						local armaduraCa = (tonumber(sheet.armaduraCa) or 0);
            						local escudoCa = (tonumber(sheet.escudoCa) or 0);
            						local efetModDes = (tonumber(sheet.efetModDes) or 0);
            						local tamanhoCa = (tonumber(sheet.tamanhoCa) or 0);
            						local naturalCa = (tonumber(sheet.naturalCa) or 0);
            						local deflexaoCa = (tonumber(sheet.deflexaoCa) or 0);
            						local esquivaCa = (tonumber(sheet.esquivaCa) or 0);
            						local sorteCa = (tonumber(sheet.sorteCa) or 0);
            						local outrosCa = (tonumber(sheet.outrosCa) or 0);
            						local variadosCa = (tonumber(sheet.variadosCa) or 0);
            
            						local desMax = tonumber(sheet.equipamentoCorpoDesMax) or 999;
            						if desMax < efetModDes then
            							efetModDes = desMax;
            						end;
            
            						local ca = 	10 + armaduraCa + escudoCa + efetModDes + tamanhoCa + naturalCa + deflexaoCa + esquivaCa + sorteCa + outrosCa + variadosCa;
            						
            						local surpresa = ca;
            						if not sheet.armaduraCaSurp then
            							surpresa = surpresa - armaduraCa;
            						end;
            						if not sheet.escudoCaSurp then
            							surpresa = surpresa - escudoCa;
            						end;
            						if not sheet.destrezaCaSurp then
            							surpresa = surpresa - efetModDes;
            						end;
            						if not sheet.tamanhoCaSurp then
            							surpresa = surpresa - tamanhoCa;
            						end;
            						if not sheet.naturalCaSurp then
            							surpresa = surpresa - naturalCa;
            						end;
            						if not sheet.deflexaoCaSurp then
            							surpresa = surpresa - deflexaoCa;
            						end;
            						if not sheet.esquivaCaSurp then
            							surpresa = surpresa - esquivaCa;
            						end;
            						if not sheet.sorteCaSurp then
            							surpresa = surpresa - sorteCa;
            						end;
            						if not sheet.outrosCaSurp then
            							surpresa = surpresa - outrosCa;
            						end;
            						if not sheet.variadosCaSurp then
            							surpresa = surpresa - variadosCa;
            						end;
            
            						local toque = ca;
            						if not sheet.armaduraCaToque then
            							toque = toque - armaduraCa;
            						end;
            						if not sheet.escudoCaToque then
            							toque = toque - escudoCa;
            						end;
            						if not sheet.destrezaCaToque then
            							toque = toque - efetModDes;
            						end;
            						if not sheet.tamanhoCaToque then
            							toque = toque - tamanhoCa;
            						end;
            						if not sheet.naturalCaToque then
            							toque = toque - naturalCa;
            						end;
            						if not sheet.deflexaoCaToque then
            							toque = toque - deflexaoCa;
            						end;
            						if not sheet.esquivaCaToque then
            							toque = toque - esquivaCa;
            						end;
            						if not sheet.sorteCaToque then
            							toque = toque - sorteCa;
            						end;
            						if not sheet.outrosCaToque then
            							toque = toque - outrosCa;
            						end;
            						if not sheet.variadosCaToque then
            							toque = toque - variadosCa;
            						end;
            
            						sheet.ca = ca;
            						sheet.surpresa = surpresa;
            						sheet.toque = toque;
            					end;
        end, obj);

    obj._e_event40 = obj.dataLink37:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet~=nil then
            						sheet.penalidade = (tonumber(sheet.equipamentoCorpoPen) or 0) + (tonumber(sheet.escudoPEn) or 0);
            						updatePenalty();
            					end;
        end, obj);

    obj._e_event41 = obj.dataLink38:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet~=nil then
            						local equipamentoCorpoFalha = sheet.equipamentoCorpoFalha;
            						local escudoFalha = sheet.escudoFalha;
            
            						if equipamentoCorpoFalha~= nil then
            							equipamentoCorpoFalha = string.gsub(equipamentoCorpoFalha, "%%", "");
            						end;
            						if escudoFalha~= nil then
            							escudoFalha = string.gsub(escudoFalha, "%%", "");
            						end;
            
            						sheet.falha = ((tonumber(equipamentoCorpoFalha) or 0) + (tonumber(escudoFalha) or 0)) .. "%";
            					end;
        end, obj);

    obj._e_event42 = obj.button10:addEventListener("onClick",
        function (_)
            local mesaDoPersonagem = Firecast.getMesaDe(sheet);
            					sheet.modificador = sheet.modificador or 0;
            					mesaDoPersonagem.activeChat:rolarDados(sheet.dvs, "Pontos de Vida de " .. (sheet.nome or "NOME"),
            						function (rolagem)
            							local maximo = 0;
            							local media = 0;
            							for i = 1, #rolagem.ops, 1 do 
            								local operacao = rolagem.ops[i]; 
            								if operacao.tipo == "dado" then   
            									maximo = maximo + (operacao.quantidade * operacao.face);
            									media = media + (operacao.quantidade * (operacao.face+1)/2);
            									if i==1 then
            										media = media + ((operacao.face-1)/2);
            									end;
            								elseif operacao.tipo == "imediato" then
            									maximo = maximo + operacao.valor;
            									media = media + operacao.valor;
            								end;
            							end;
            							local mesaDoPersonagem = Firecast.getMesaDe(sheet);
            							mesaDoPersonagem.activeChat:enviarMensagem("PV máximo: " .. maximo .. "; PV médio: " .. math.floor(media));
            							sheet.pvTotal = math.floor(media);
            						end);
        end, obj);

    obj._e_event43 = obj.edit163:addEventListener("onChange",
        function (_)
            if sheet~= nil then
            						local bba = tonumber(sheet.bba) or 0;
            						local text = "+" .. bba;
            						local l = 1;
            						while bba > 5 and l < 4 do
            							bba = bba -5;
            							l = l + 1;
            							text = text .. "/+" .. bba;
            						end;
            						sheet.bbaDesc = text;
            					end;
        end, obj);

    obj._e_event44 = obj.button11:addEventListener("onClick",
        function (_)
            local rolagem = Firecast.interpretarRolagem("1d20 + " .. (sheet.bmc or "0"));
            						local mesaDoPersonagem = Firecast.getMesaDe(sheet);
            						mesaDoPersonagem.activeChat:rolarDados(rolagem, "Teste de BMC de " .. (sheet.nome or "NOME"));
        end, obj);

    obj._e_event45 = obj.ManeuverBt:addEventListener("onClick",
        function (_)
            local pop = self:findControlByName("popManeuver");
            					
            						if pop ~= nil then
            							pop:setNodeObject(self.sheet);
            							pop:showPopupEx("rightCenter", self.ManeuverBt);
            						else
            							showMessage("Ops, bug.. nao encontrei o popup de manobra para exibir");
            						end;
        end, obj);

    obj._e_event46 = obj.dataLink39:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet~= nil then
            							local bba = tonumber(sheet.bba) or 0;
            							local str = tonumber(sheet.efetModFor) or 0;
            							local bmcTamanho = tonumber(sheet.bmcTamanho) or 0;
            							local bmcOutros = tonumber(sheet.bmcOutros) or 0;
            							local destrezaBMC = sheet.destrezaBMC;
            							local bmcDiversos = tonumber(sheet.bmcDiversos) or 0;
            							local bmdTamanho = tonumber(sheet.bmdTamanho) or 0;
            							local bmdOutros = tonumber(sheet.bmdOutros) or 0;
            							local dex = tonumber(sheet.efetModDes) or 0;
            							local bmdDiversos = tonumber(sheet.bmdDiversos) or 0;
            
            							local bmc = bba + bmcTamanho + bmcOutros + bmcDiversos;
            							if destrezaBMC then
            								bmc = bmc + dex;
            							else 
            								bmc = bmc + str;
            							end;
            
            							local bmd = 10 + bba + bmdTamanho + bmdOutros + bmdDiversos + str + dex;
            
            							-- considerar bonus temporarios de bmc
            							if sheet.bmcInvestidaCheck then
            								bmc = bmc + (tonumber(sheet.bmcInvestida) or 0);
            							end;
            							if sheet.bmcEncontraoCheck then
            								bmc = bmc + (tonumber(sheet.bmcEncontrao) or 0);
            							end;
            							if sheet.bmcTruqueSujoCheck then
            								bmc = bmc + (tonumber(sheet.bmcTruqueSujo) or 0);
            							end;
            							if sheet.bmcDesarmarCheck then
            								bmc = bmc + (tonumber(sheet.bmcDesarmar) or 0);
            							end;
            							if sheet.bmcAgarrarCheck then
            								bmc = bmc + (tonumber(sheet.bmcAgarrar) or 0);
            							end;
            							if sheet.bmcAtropelarCheck then
            								bmc = bmc + (tonumber(sheet.bmcAtropelar) or 0);
            							end;
            							if sheet.bmcReposicionarCheck then
            								bmc = bmc + (tonumber(sheet.bmcReposicionar) or 0);
            							end;
            							if sheet.bmcRoubarCheck then
            								bmc = bmc + (tonumber(sheet.bmcRoubar) or 0);
            							end;
            							if sheet.bmcSepararCheck then
            								bmc = bmc + (tonumber(sheet.bmcSeparar) or 0);
            							end;
            							if sheet.bmcDerrubarCheck then
            								bmc = bmc + (tonumber(sheet.bmcDerrubar) or 0);
            							end;
            
            							-- considerar bonus temporarios de bmd
            							if sheet.bmdInvestidaCheck then
            								bmd = bmd + (tonumber(sheet.bmdInvestida) or 0);
            							end;
            							if sheet.bmdEncontraoCheck then
            								bmd = bmd + (tonumber(sheet.bmdEncontrao) or 0);
            							end;
            							if sheet.bmdTruqueSujoCheck then
            								bmd = bmd + (tonumber(sheet.bmdTruqueSujo) or 0);
            							end;
            							if sheet.bmdDesarmarCheck then
            								bmd = bmd + (tonumber(sheet.bmdDesarmar) or 0);
            							end;
            							if sheet.bmdAgarrarCheck then
            								bmd = bmd + (tonumber(sheet.bmdAgarrar) or 0);
            							end;
            							if sheet.bmdAtropelarCheck then
            								bmd = bmd + (tonumber(sheet.bmdAtropelar) or 0);
            							end;
            							if sheet.bmdReposicionarCheck then
            								bmd = bmd + (tonumber(sheet.bmdReposicionar) or 0);
            							end;
            							if sheet.bmdRoubarCheck then
            								bmd = bmd + (tonumber(sheet.bmdRoubar) or 0);
            							end;
            							if sheet.bmdSepararCheck then
            								bmd = bmd + (tonumber(sheet.bmdSeparar) or 0);
            							end;
            							if sheet.bmdDerrubarCheck then
            								bmd = bmd + (tonumber(sheet.bmdDerrubar) or 0);
            							end;
            
            							sheet.bmc = bmc;
            							sheet.bmd = bmd;
            						end;
        end, obj);

    obj._e_event47 = obj.button12:addEventListener("onClick",
        function (_)
            local rolagem = Firecast.interpretarRolagem("1d20 +" .. (sheet.trFort) or "0");
            					local mesaDoPersonagem = Firecast.getMesaDe(sheet);
            					mesaDoPersonagem.activeChat:rolarDados(rolagem, "Teste de Fortitude de " .. (sheet.nome or "NOME"));
        end, obj);

    obj._e_event48 = obj.button13:addEventListener("onClick",
        function (_)
            local rolagem = Firecast.interpretarRolagem("1d20 +" .. (sheet.trRef) or "0");
            					local mesaDoPersonagem = Firecast.getMesaDe(sheet);
            					mesaDoPersonagem.activeChat:rolarDados(rolagem, "Teste de Reflexos de " .. (sheet.nome or "NOME"));
        end, obj);

    obj._e_event49 = obj.button14:addEventListener("onClick",
        function (_)
            local rolagem = Firecast.interpretarRolagem("1d20 +" .. (sheet.trVon) or "0");
            					local mesaDoPersonagem = Firecast.getMesaDe(sheet);
            					mesaDoPersonagem.activeChat:rolarDados(rolagem, "Teste de Vontade de " .. (sheet.nome or "NOME"));
        end, obj);

    obj._e_event50 = obj.dataLink43:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet ~= nil then
            						local atrModFort = 0;
            						local atrModRef = 0;
            						local atrModVon = 0;
            
            						local num = tonumber(sheet.atrTrFort) or 3;
            
            						if num == 1 then
            							atrModFort = tonumber(sheet.efetModFor) or 0;
            						elseif num == 2 then
            							atrModFort = tonumber(sheet.efetModDes) or 0;
            						elseif num == 3 then
            							atrModFort = tonumber(sheet.efetModCon) or 0;
            						elseif num == 4 then
            							atrModFort = tonumber(sheet.efetModInt) or 0;
            						elseif num == 5 then
            							atrModFort = tonumber(sheet.efetModSab) or 0;
            						elseif num == 6 then
            							atrModFort = tonumber(sheet.efetModCar) or 0;
            						end;
            
            						num = tonumber(sheet.atrTrRef) or 2;
            
            						if num == 1 then
            							atrModRef = tonumber(sheet.efetModFor) or 0;
            						elseif num == 2 then
            							atrModRef = tonumber(sheet.efetModDes) or 0;
            						elseif num == 3 then
            							atrModRef = tonumber(sheet.efetModCon) or 0;
            						elseif num == 4 then
            							atrModRef = tonumber(sheet.efetModInt) or 0;
            						elseif num == 5 then
            							atrModRef = tonumber(sheet.efetModSab) or 0;
            						elseif num == 6 then
            							atrModRef = tonumber(sheet.efetModCar) or 0;
            						end;
            
            						num = tonumber(sheet.atrTrVon) or 5;
            
            						if num == 1 then
            							atrModVon = tonumber(sheet.efetModFor) or 0;
            						elseif num == 2 then
            							atrModVon = tonumber(sheet.efetModDes) or 0;
            						elseif num == 3 then
            							atrModVon = tonumber(sheet.efetModCon) or 0;
            						elseif num == 4 then
            							atrModVon = tonumber(sheet.efetModInt) or 0;
            						elseif num == 5 then
            							atrModVon = tonumber(sheet.efetModSab) or 0;
            						elseif num == 6 then
            							atrModVon = tonumber(sheet.efetModCar) or 0;
            						end;
            
            						sheet.atrModFort = atrModFort;
            						sheet.atrModRef = atrModRef;
            						sheet.atrModVon = atrModVon;
            					end;
        end, obj);

    obj._e_event51 = obj.TrBut:addEventListener("onClick",
        function (_)
            local pop = self:findControlByName("popResistencia");
            				
            					if pop ~= nil then
            						pop:setNodeObject(self.sheet);
            						pop:showPopupEx("rightCenter", self.TrBut);
            					else
            						showMessage("Ops, bug.. nao encontrei o popup de resistencias para exibir");
            					end;
        end, obj);

    obj._e_event52 = obj.image1:addEventListener("onStartDrag",
        function (_, drag, x, y)
            drag:addData("imageURL", sheet.avatar);
        end, obj);

    function obj:_releaseEvents()
        __o_rrpgObjs.removeEventListenerById(self._e_event52);
        __o_rrpgObjs.removeEventListenerById(self._e_event51);
        __o_rrpgObjs.removeEventListenerById(self._e_event50);
        __o_rrpgObjs.removeEventListenerById(self._e_event49);
        __o_rrpgObjs.removeEventListenerById(self._e_event48);
        __o_rrpgObjs.removeEventListenerById(self._e_event47);
        __o_rrpgObjs.removeEventListenerById(self._e_event46);
        __o_rrpgObjs.removeEventListenerById(self._e_event45);
        __o_rrpgObjs.removeEventListenerById(self._e_event44);
        __o_rrpgObjs.removeEventListenerById(self._e_event43);
        __o_rrpgObjs.removeEventListenerById(self._e_event42);
        __o_rrpgObjs.removeEventListenerById(self._e_event41);
        __o_rrpgObjs.removeEventListenerById(self._e_event40);
        __o_rrpgObjs.removeEventListenerById(self._e_event39);
        __o_rrpgObjs.removeEventListenerById(self._e_event38);
        __o_rrpgObjs.removeEventListenerById(self._e_event37);
        __o_rrpgObjs.removeEventListenerById(self._e_event36);
        __o_rrpgObjs.removeEventListenerById(self._e_event35);
        __o_rrpgObjs.removeEventListenerById(self._e_event34);
        __o_rrpgObjs.removeEventListenerById(self._e_event33);
        __o_rrpgObjs.removeEventListenerById(self._e_event32);
        __o_rrpgObjs.removeEventListenerById(self._e_event31);
        __o_rrpgObjs.removeEventListenerById(self._e_event30);
        __o_rrpgObjs.removeEventListenerById(self._e_event29);
        __o_rrpgObjs.removeEventListenerById(self._e_event28);
        __o_rrpgObjs.removeEventListenerById(self._e_event27);
        __o_rrpgObjs.removeEventListenerById(self._e_event26);
        __o_rrpgObjs.removeEventListenerById(self._e_event25);
        __o_rrpgObjs.removeEventListenerById(self._e_event24);
        __o_rrpgObjs.removeEventListenerById(self._e_event23);
        __o_rrpgObjs.removeEventListenerById(self._e_event22);
        __o_rrpgObjs.removeEventListenerById(self._e_event21);
        __o_rrpgObjs.removeEventListenerById(self._e_event20);
        __o_rrpgObjs.removeEventListenerById(self._e_event19);
        __o_rrpgObjs.removeEventListenerById(self._e_event18);
        __o_rrpgObjs.removeEventListenerById(self._e_event17);
        __o_rrpgObjs.removeEventListenerById(self._e_event16);
        __o_rrpgObjs.removeEventListenerById(self._e_event15);
        __o_rrpgObjs.removeEventListenerById(self._e_event14);
        __o_rrpgObjs.removeEventListenerById(self._e_event13);
        __o_rrpgObjs.removeEventListenerById(self._e_event12);
        __o_rrpgObjs.removeEventListenerById(self._e_event11);
        __o_rrpgObjs.removeEventListenerById(self._e_event10);
        __o_rrpgObjs.removeEventListenerById(self._e_event9);
        __o_rrpgObjs.removeEventListenerById(self._e_event8);
        __o_rrpgObjs.removeEventListenerById(self._e_event7);
        __o_rrpgObjs.removeEventListenerById(self._e_event6);
        __o_rrpgObjs.removeEventListenerById(self._e_event5);
        __o_rrpgObjs.removeEventListenerById(self._e_event4);
        __o_rrpgObjs.removeEventListenerById(self._e_event3);
        __o_rrpgObjs.removeEventListenerById(self._e_event2);
        __o_rrpgObjs.removeEventListenerById(self._e_event1);
        __o_rrpgObjs.removeEventListenerById(self._e_event0);
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.rectangle64 ~= nil then self.rectangle64:destroy(); self.rectangle64 = nil; end;
        if self.flowPart33 ~= nil then self.flowPart33:destroy(); self.flowPart33 = nil; end;
        if self.label119 ~= nil then self.label119:destroy(); self.label119 = nil; end;
        if self.layout15 ~= nil then self.layout15:destroy(); self.layout15 = nil; end;
        if self.layout10 ~= nil then self.layout10:destroy(); self.layout10 = nil; end;
        if self.dataLink33 ~= nil then self.dataLink33:destroy(); self.dataLink33 = nil; end;
        if self.rectangle67 ~= nil then self.rectangle67:destroy(); self.rectangle67 = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.flowPart129 ~= nil then self.flowPart129:destroy(); self.flowPart129 = nil; end;
        if self.label97 ~= nil then self.label97:destroy(); self.label97 = nil; end;
        if self.label77 ~= nil then self.label77:destroy(); self.label77 = nil; end;
        if self.label128 ~= nil then self.label128:destroy(); self.label128 = nil; end;
        if self.flowPart193 ~= nil then self.flowPart193:destroy(); self.flowPart193 = nil; end;
        if self.layout17 ~= nil then self.layout17:destroy(); self.layout17 = nil; end;
        if self.label45 ~= nil then self.label45:destroy(); self.label45 = nil; end;
        if self.rectangle46 ~= nil then self.rectangle46:destroy(); self.rectangle46 = nil; end;
        if self.flowPart106 ~= nil then self.flowPart106:destroy(); self.flowPart106 = nil; end;
        if self.flowLayout1 ~= nil then self.flowLayout1:destroy(); self.flowLayout1 = nil; end;
        if self.checkBox29 ~= nil then self.checkBox29:destroy(); self.checkBox29 = nil; end;
        if self.label75 ~= nil then self.label75:destroy(); self.label75 = nil; end;
        if self.edit76 ~= nil then self.edit76:destroy(); self.edit76 = nil; end;
        if self.label70 ~= nil then self.label70:destroy(); self.label70 = nil; end;
        if self.label143 ~= nil then self.label143:destroy(); self.label143 = nil; end;
        if self.label35 ~= nil then self.label35:destroy(); self.label35 = nil; end;
        if self.flowPart241 ~= nil then self.flowPart241:destroy(); self.flowPart241 = nil; end;
        if self.flowPart66 ~= nil then self.flowPart66:destroy(); self.flowPart66 = nil; end;
        if self.edit82 ~= nil then self.edit82:destroy(); self.edit82 = nil; end;
        if self.rectangle59 ~= nil then self.rectangle59:destroy(); self.rectangle59 = nil; end;
        if self.flowPart55 ~= nil then self.flowPart55:destroy(); self.flowPart55 = nil; end;
        if self.flowPart95 ~= nil then self.flowPart95:destroy(); self.flowPart95 = nil; end;
        if self.flowPart51 ~= nil then self.flowPart51:destroy(); self.flowPart51 = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.label125 ~= nil then self.label125:destroy(); self.label125 = nil; end;
        if self.flowPart107 ~= nil then self.flowPart107:destroy(); self.flowPart107 = nil; end;
        if self.edit11 ~= nil then self.edit11:destroy(); self.edit11 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.rectangle17 ~= nil then self.rectangle17:destroy(); self.rectangle17 = nil; end;
        if self.flowPart94 ~= nil then self.flowPart94:destroy(); self.flowPart94 = nil; end;
        if self.flowPart79 ~= nil then self.flowPart79:destroy(); self.flowPart79 = nil; end;
        if self.label49 ~= nil then self.label49:destroy(); self.label49 = nil; end;
        if self.edit156 ~= nil then self.edit156:destroy(); self.edit156 = nil; end;
        if self.caDetails ~= nil then self.caDetails:destroy(); self.caDetails = nil; end;
        if self.label52 ~= nil then self.label52:destroy(); self.label52 = nil; end;
        if self.flowPart103 ~= nil then self.flowPart103:destroy(); self.flowPart103 = nil; end;
        if self.edit115 ~= nil then self.edit115:destroy(); self.edit115 = nil; end;
        if self.label48 ~= nil then self.label48:destroy(); self.label48 = nil; end;
        if self.flowPart43 ~= nil then self.flowPart43:destroy(); self.flowPart43 = nil; end;
        if self.comboBox2 ~= nil then self.comboBox2:destroy(); self.comboBox2 = nil; end;
        if self.edit159 ~= nil then self.edit159:destroy(); self.edit159 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.flowPart128 ~= nil then self.flowPart128:destroy(); self.flowPart128 = nil; end;
        if self.checkBox3 ~= nil then self.checkBox3:destroy(); self.checkBox3 = nil; end;
        if self.flowLineBreak5 ~= nil then self.flowLineBreak5:destroy(); self.flowLineBreak5 = nil; end;
        if self.flowPart22 ~= nil then self.flowPart22:destroy(); self.flowPart22 = nil; end;
        if self.rectangle68 ~= nil then self.rectangle68:destroy(); self.rectangle68 = nil; end;
        if self.flowPart219 ~= nil then self.flowPart219:destroy(); self.flowPart219 = nil; end;
        if self.flowPart236 ~= nil then self.flowPart236:destroy(); self.flowPart236 = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.rectangle48 ~= nil then self.rectangle48:destroy(); self.rectangle48 = nil; end;
        if self.edit129 ~= nil then self.edit129:destroy(); self.edit129 = nil; end;
        if self.dataLink3 ~= nil then self.dataLink3:destroy(); self.dataLink3 = nil; end;
        if self.edit142 ~= nil then self.edit142:destroy(); self.edit142 = nil; end;
        if self.flowPart78 ~= nil then self.flowPart78:destroy(); self.flowPart78 = nil; end;
        if self.dataLink7 ~= nil then self.dataLink7:destroy(); self.dataLink7 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.label111 ~= nil then self.label111:destroy(); self.label111 = nil; end;
        if self.flowPart6 ~= nil then self.flowPart6:destroy(); self.flowPart6 = nil; end;
        if self.label19 ~= nil then self.label19:destroy(); self.label19 = nil; end;
        if self.label116 ~= nil then self.label116:destroy(); self.label116 = nil; end;
        if self.edit67 ~= nil then self.edit67:destroy(); self.edit67 = nil; end;
        if self.rectangle12 ~= nil then self.rectangle12:destroy(); self.rectangle12 = nil; end;
        if self.rectangle50 ~= nil then self.rectangle50:destroy(); self.rectangle50 = nil; end;
        if self.label139 ~= nil then self.label139:destroy(); self.label139 = nil; end;
        if self.checkBox23 ~= nil then self.checkBox23:destroy(); self.checkBox23 = nil; end;
        if self.checkBox37 ~= nil then self.checkBox37:destroy(); self.checkBox37 = nil; end;
        if self.rectangle58 ~= nil then self.rectangle58:destroy(); self.rectangle58 = nil; end;
        if self.dataLink34 ~= nil then self.dataLink34:destroy(); self.dataLink34 = nil; end;
        if self.checkBox40 ~= nil then self.checkBox40:destroy(); self.checkBox40 = nil; end;
        if self.dataLink32 ~= nil then self.dataLink32:destroy(); self.dataLink32 = nil; end;
        if self.checkBox28 ~= nil then self.checkBox28:destroy(); self.checkBox28 = nil; end;
        if self.flowPart145 ~= nil then self.flowPart145:destroy(); self.flowPart145 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.label38 ~= nil then self.label38:destroy(); self.label38 = nil; end;
        if self.flowPart125 ~= nil then self.flowPart125:destroy(); self.flowPart125 = nil; end;
        if self.flowPart142 ~= nil then self.flowPart142:destroy(); self.flowPart142 = nil; end;
        if self.edit27 ~= nil then self.edit27:destroy(); self.edit27 = nil; end;
        if self.label115 ~= nil then self.label115:destroy(); self.label115 = nil; end;
        if self.layout14 ~= nil then self.layout14:destroy(); self.layout14 = nil; end;
        if self.edit161 ~= nil then self.edit161:destroy(); self.edit161 = nil; end;
        if self.edit62 ~= nil then self.edit62:destroy(); self.edit62 = nil; end;
        if self.checkBox32 ~= nil then self.checkBox32:destroy(); self.checkBox32 = nil; end;
        if self.flowLineBreak2 ~= nil then self.flowLineBreak2:destroy(); self.flowLineBreak2 = nil; end;
        if self.flowPart152 ~= nil then self.flowPart152:destroy(); self.flowPart152 = nil; end;
        if self.flowPart169 ~= nil then self.flowPart169:destroy(); self.flowPart169 = nil; end;
        if self.flowLayout8 ~= nil then self.flowLayout8:destroy(); self.flowLayout8 = nil; end;
        if self.flowPart215 ~= nil then self.flowPart215:destroy(); self.flowPart215 = nil; end;
        if self.edit134 ~= nil then self.edit134:destroy(); self.edit134 = nil; end;
        if self.flowPart113 ~= nil then self.flowPart113:destroy(); self.flowPart113 = nil; end;
        if self.label142 ~= nil then self.label142:destroy(); self.label142 = nil; end;
        if self.flowPart199 ~= nil then self.flowPart199:destroy(); self.flowPart199 = nil; end;
        if self.flowPart8 ~= nil then self.flowPart8:destroy(); self.flowPart8 = nil; end;
        if self.dataLink40 ~= nil then self.dataLink40:destroy(); self.dataLink40 = nil; end;
        if self.flowPart96 ~= nil then self.flowPart96:destroy(); self.flowPart96 = nil; end;
        if self.edit163 ~= nil then self.edit163:destroy(); self.edit163 = nil; end;
        if self.flowPart80 ~= nil then self.flowPart80:destroy(); self.flowPart80 = nil; end;
        if self.flowPart72 ~= nil then self.flowPart72:destroy(); self.flowPart72 = nil; end;
        if self.label73 ~= nil then self.label73:destroy(); self.label73 = nil; end;
        if self.flowPart40 ~= nil then self.flowPart40:destroy(); self.flowPart40 = nil; end;
        if self.flowPart144 ~= nil then self.flowPart144:destroy(); self.flowPart144 = nil; end;
        if self.edit92 ~= nil then self.edit92:destroy(); self.edit92 = nil; end;
        if self.label32 ~= nil then self.label32:destroy(); self.label32 = nil; end;
        if self.rectangle66 ~= nil then self.rectangle66:destroy(); self.rectangle66 = nil; end;
        if self.flowPart18 ~= nil then self.flowPart18:destroy(); self.flowPart18 = nil; end;
        if self.edit54 ~= nil then self.edit54:destroy(); self.edit54 = nil; end;
        if self.dataLink5 ~= nil then self.dataLink5:destroy(); self.dataLink5 = nil; end;
        if self.label24 ~= nil then self.label24:destroy(); self.label24 = nil; end;
        if self.rectangle10 ~= nil then self.rectangle10:destroy(); self.rectangle10 = nil; end;
        if self.flowPart118 ~= nil then self.flowPart118:destroy(); self.flowPart118 = nil; end;
        if self.flowPart116 ~= nil then self.flowPart116:destroy(); self.flowPart116 = nil; end;
        if self.edit24 ~= nil then self.edit24:destroy(); self.edit24 = nil; end;
        if self.flowPart183 ~= nil then self.flowPart183:destroy(); self.flowPart183 = nil; end;
        if self.edit59 ~= nil then self.edit59:destroy(); self.edit59 = nil; end;
        if self.rectangle38 ~= nil then self.rectangle38:destroy(); self.rectangle38 = nil; end;
        if self.checkBox44 ~= nil then self.checkBox44:destroy(); self.checkBox44 = nil; end;
        if self.dataLink8 ~= nil then self.dataLink8:destroy(); self.dataLink8 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.flowPart48 ~= nil then self.flowPart48:destroy(); self.flowPart48 = nil; end;
        if self.edit128 ~= nil then self.edit128:destroy(); self.edit128 = nil; end;
        if self.label129 ~= nil then self.label129:destroy(); self.label129 = nil; end;
        if self.button13 ~= nil then self.button13:destroy(); self.button13 = nil; end;
        if self.checkBox16 ~= nil then self.checkBox16:destroy(); self.checkBox16 = nil; end;
        if self.edit127 ~= nil then self.edit127:destroy(); self.edit127 = nil; end;
        if self.flowPart35 ~= nil then self.flowPart35:destroy(); self.flowPart35 = nil; end;
        if self.flowPart90 ~= nil then self.flowPart90:destroy(); self.flowPart90 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.flowLayout7 ~= nil then self.flowLayout7:destroy(); self.flowLayout7 = nil; end;
        if self.flowPart91 ~= nil then self.flowPart91:destroy(); self.flowPart91 = nil; end;
        if self.flowPart205 ~= nil then self.flowPart205:destroy(); self.flowPart205 = nil; end;
        if self.flowPart232 ~= nil then self.flowPart232:destroy(); self.flowPart232 = nil; end;
        if self.edit145 ~= nil then self.edit145:destroy(); self.edit145 = nil; end;
        if self.flowLayout10 ~= nil then self.flowLayout10:destroy(); self.flowLayout10 = nil; end;
        if self.label53 ~= nil then self.label53:destroy(); self.label53 = nil; end;
        if self.label133 ~= nil then self.label133:destroy(); self.label133 = nil; end;
        if self.edit21 ~= nil then self.edit21:destroy(); self.edit21 = nil; end;
        if self.label42 ~= nil then self.label42:destroy(); self.label42 = nil; end;
        if self.flowPart222 ~= nil then self.flowPart222:destroy(); self.flowPart222 = nil; end;
        if self.checkBox14 ~= nil then self.checkBox14:destroy(); self.checkBox14 = nil; end;
        if self.flowPart234 ~= nil then self.flowPart234:destroy(); self.flowPart234 = nil; end;
        if self.edit133 ~= nil then self.edit133:destroy(); self.edit133 = nil; end;
        if self.rectangle20 ~= nil then self.rectangle20:destroy(); self.rectangle20 = nil; end;
        if self.rectangle62 ~= nil then self.rectangle62:destroy(); self.rectangle62 = nil; end;
        if self.flowLayout4 ~= nil then self.flowLayout4:destroy(); self.flowLayout4 = nil; end;
        if self.flowPart71 ~= nil then self.flowPart71:destroy(); self.flowPart71 = nil; end;
        if self.edit13 ~= nil then self.edit13:destroy(); self.edit13 = nil; end;
        if self.dataLink35 ~= nil then self.dataLink35:destroy(); self.dataLink35 = nil; end;
        if self.flowPart195 ~= nil then self.flowPart195:destroy(); self.flowPart195 = nil; end;
        if self.edit81 ~= nil then self.edit81:destroy(); self.edit81 = nil; end;
        if self.flowPart188 ~= nil then self.flowPart188:destroy(); self.flowPart188 = nil; end;
        if self.label81 ~= nil then self.label81:destroy(); self.label81 = nil; end;
        if self.dataLink22 ~= nil then self.dataLink22:destroy(); self.dataLink22 = nil; end;
        if self.flowPart180 ~= nil then self.flowPart180:destroy(); self.flowPart180 = nil; end;
        if self.button6 ~= nil then self.button6:destroy(); self.button6 = nil; end;
        if self.checkBox12 ~= nil then self.checkBox12:destroy(); self.checkBox12 = nil; end;
        if self.checkBox31 ~= nil then self.checkBox31:destroy(); self.checkBox31 = nil; end;
        if self.dataLink30 ~= nil then self.dataLink30:destroy(); self.dataLink30 = nil; end;
        if self.edit17 ~= nil then self.edit17:destroy(); self.edit17 = nil; end;
        if self.button10 ~= nil then self.button10:destroy(); self.button10 = nil; end;
        if self.checkBox22 ~= nil then self.checkBox22:destroy(); self.checkBox22 = nil; end;
        if self.edit87 ~= nil then self.edit87:destroy(); self.edit87 = nil; end;
        if self.rectangle63 ~= nil then self.rectangle63:destroy(); self.rectangle63 = nil; end;
        if self.label79 ~= nil then self.label79:destroy(); self.label79 = nil; end;
        if self.edit113 ~= nil then self.edit113:destroy(); self.edit113 = nil; end;
        if self.edit15 ~= nil then self.edit15:destroy(); self.edit15 = nil; end;
        if self.label11 ~= nil then self.label11:destroy(); self.label11 = nil; end;
        if self.flowPart124 ~= nil then self.flowPart124:destroy(); self.flowPart124 = nil; end;
        if self.label20 ~= nil then self.label20:destroy(); self.label20 = nil; end;
        if self.flowPart141 ~= nil then self.flowPart141:destroy(); self.flowPart141 = nil; end;
        if self.checkBox25 ~= nil then self.checkBox25:destroy(); self.checkBox25 = nil; end;
        if self.checkBox35 ~= nil then self.checkBox35:destroy(); self.checkBox35 = nil; end;
        if self.rectangle36 ~= nil then self.rectangle36:destroy(); self.rectangle36 = nil; end;
        if self.flowPart37 ~= nil then self.flowPart37:destroy(); self.flowPart37 = nil; end;
        if self.flowPart45 ~= nil then self.flowPart45:destroy(); self.flowPart45 = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.label50 ~= nil then self.label50:destroy(); self.label50 = nil; end;
        if self.edit154 ~= nil then self.edit154:destroy(); self.edit154 = nil; end;
        if self.checkBox47 ~= nil then self.checkBox47:destroy(); self.checkBox47 = nil; end;
        if self.layout22 ~= nil then self.layout22:destroy(); self.layout22 = nil; end;
        if self.edit135 ~= nil then self.edit135:destroy(); self.edit135 = nil; end;
        if self.edit32 ~= nil then self.edit32:destroy(); self.edit32 = nil; end;
        if self.rectangle34 ~= nil then self.rectangle34:destroy(); self.rectangle34 = nil; end;
        if self.flowPart108 ~= nil then self.flowPart108:destroy(); self.flowPart108 = nil; end;
        if self.label110 ~= nil then self.label110:destroy(); self.label110 = nil; end;
        if self.rectangle37 ~= nil then self.rectangle37:destroy(); self.rectangle37 = nil; end;
        if self.checkBox15 ~= nil then self.checkBox15:destroy(); self.checkBox15 = nil; end;
        if self.flowPart224 ~= nil then self.flowPart224:destroy(); self.flowPart224 = nil; end;
        if self.label151 ~= nil then self.label151:destroy(); self.label151 = nil; end;
        if self.dataLink28 ~= nil then self.dataLink28:destroy(); self.dataLink28 = nil; end;
        if self.label138 ~= nil then self.label138:destroy(); self.label138 = nil; end;
        if self.flowPart73 ~= nil then self.flowPart73:destroy(); self.flowPart73 = nil; end;
        if self.label40 ~= nil then self.label40:destroy(); self.label40 = nil; end;
        if self.flowPart155 ~= nil then self.flowPart155:destroy(); self.flowPart155 = nil; end;
        if self.popCA ~= nil then self.popCA:destroy(); self.popCA = nil; end;
        if self.edit28 ~= nil then self.edit28:destroy(); self.edit28 = nil; end;
        if self.flowLayout13 ~= nil then self.flowLayout13:destroy(); self.flowLayout13 = nil; end;
        if self.label57 ~= nil then self.label57:destroy(); self.label57 = nil; end;
        if self.flowPart42 ~= nil then self.flowPart42:destroy(); self.flowPart42 = nil; end;
        if self.edit71 ~= nil then self.edit71:destroy(); self.edit71 = nil; end;
        if self.flowPart198 ~= nil then self.flowPart198:destroy(); self.flowPart198 = nil; end;
        if self.flowPart187 ~= nil then self.flowPart187:destroy(); self.flowPart187 = nil; end;
        if self.flowPart192 ~= nil then self.flowPart192:destroy(); self.flowPart192 = nil; end;
        if self.label71 ~= nil then self.label71:destroy(); self.label71 = nil; end;
        if self.edit85 ~= nil then self.edit85:destroy(); self.edit85 = nil; end;
        if self.dataLink21 ~= nil then self.dataLink21:destroy(); self.dataLink21 = nil; end;
        if self.layout13 ~= nil then self.layout13:destroy(); self.layout13 = nil; end;
        if self.label144 ~= nil then self.label144:destroy(); self.label144 = nil; end;
        if self.layout8 ~= nil then self.layout8:destroy(); self.layout8 = nil; end;
        if self.label27 ~= nil then self.label27:destroy(); self.label27 = nil; end;
        if self.label68 ~= nil then self.label68:destroy(); self.label68 = nil; end;
        if self.dataLink23 ~= nil then self.dataLink23:destroy(); self.dataLink23 = nil; end;
        if self.label67 ~= nil then self.label67:destroy(); self.label67 = nil; end;
        if self.flowPart16 ~= nil then self.flowPart16:destroy(); self.flowPart16 = nil; end;
        if self.label140 ~= nil then self.label140:destroy(); self.label140 = nil; end;
        if self.edit120 ~= nil then self.edit120:destroy(); self.edit120 = nil; end;
        if self.label69 ~= nil then self.label69:destroy(); self.label69 = nil; end;
        if self.edit114 ~= nil then self.edit114:destroy(); self.edit114 = nil; end;
        if self.label105 ~= nil then self.label105:destroy(); self.label105 = nil; end;
        if self.label34 ~= nil then self.label34:destroy(); self.label34 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.label145 ~= nil then self.label145:destroy(); self.label145 = nil; end;
        if self.label88 ~= nil then self.label88:destroy(); self.label88 = nil; end;
        if self.flowPart230 ~= nil then self.flowPart230:destroy(); self.flowPart230 = nil; end;
        if self.flowPart131 ~= nil then self.flowPart131:destroy(); self.flowPart131 = nil; end;
        if self.rectangle15 ~= nil then self.rectangle15:destroy(); self.rectangle15 = nil; end;
        if self.edit68 ~= nil then self.edit68:destroy(); self.edit68 = nil; end;
        if self.edit72 ~= nil then self.edit72:destroy(); self.edit72 = nil; end;
        if self.popResistencia ~= nil then self.popResistencia:destroy(); self.popResistencia = nil; end;
        if self.label131 ~= nil then self.label131:destroy(); self.label131 = nil; end;
        if self.label16 ~= nil then self.label16:destroy(); self.label16 = nil; end;
        if self.edit158 ~= nil then self.edit158:destroy(); self.edit158 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.edit79 ~= nil then self.edit79:destroy(); self.edit79 = nil; end;
        if self.label101 ~= nil then self.label101:destroy(); self.label101 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.flowPart105 ~= nil then self.flowPart105:destroy(); self.flowPart105 = nil; end;
        if self.edit101 ~= nil then self.edit101:destroy(); self.edit101 = nil; end;
        if self.flowPart202 ~= nil then self.flowPart202:destroy(); self.flowPart202 = nil; end;
        if self.checkBox33 ~= nil then self.checkBox33:destroy(); self.checkBox33 = nil; end;
        if self.label58 ~= nil then self.label58:destroy(); self.label58 = nil; end;
        if self.flowPart237 ~= nil then self.flowPart237:destroy(); self.flowPart237 = nil; end;
        if self.flowPart174 ~= nil then self.flowPart174:destroy(); self.flowPart174 = nil; end;
        if self.flowPart9 ~= nil then self.flowPart9:destroy(); self.flowPart9 = nil; end;
        if self.rectangle44 ~= nil then self.rectangle44:destroy(); self.rectangle44 = nil; end;
        if self.layout20 ~= nil then self.layout20:destroy(); self.layout20 = nil; end;
        if self.layout18 ~= nil then self.layout18:destroy(); self.layout18 = nil; end;
        if self.flowPart214 ~= nil then self.flowPart214:destroy(); self.flowPart214 = nil; end;
        if self.flowPart197 ~= nil then self.flowPart197:destroy(); self.flowPart197 = nil; end;
        if self.edit139 ~= nil then self.edit139:destroy(); self.edit139 = nil; end;
        if self.rectangle6 ~= nil then self.rectangle6:destroy(); self.rectangle6 = nil; end;
        if self.flowLineBreak15 ~= nil then self.flowLineBreak15:destroy(); self.flowLineBreak15 = nil; end;
        if self.label21 ~= nil then self.label21:destroy(); self.label21 = nil; end;
        if self.label120 ~= nil then self.label120:destroy(); self.label120 = nil; end;
        if self.flowPart56 ~= nil then self.flowPart56:destroy(); self.flowPart56 = nil; end;
        if self.edit86 ~= nil then self.edit86:destroy(); self.edit86 = nil; end;
        if self.flowPart26 ~= nil then self.flowPart26:destroy(); self.flowPart26 = nil; end;
        if self.flowLineBreak11 ~= nil then self.flowLineBreak11:destroy(); self.flowLineBreak11 = nil; end;
        if self.edit143 ~= nil then self.edit143:destroy(); self.edit143 = nil; end;
        if self.checkBox24 ~= nil then self.checkBox24:destroy(); self.checkBox24 = nil; end;
        if self.edit105 ~= nil then self.edit105:destroy(); self.edit105 = nil; end;
        if self.flowPart136 ~= nil then self.flowPart136:destroy(); self.flowPart136 = nil; end;
        if self.flowPart41 ~= nil then self.flowPart41:destroy(); self.flowPart41 = nil; end;
        if self.edit90 ~= nil then self.edit90:destroy(); self.edit90 = nil; end;
        if self.label18 ~= nil then self.label18:destroy(); self.label18 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.flowPart139 ~= nil then self.flowPart139:destroy(); self.flowPart139 = nil; end;
        if self.label117 ~= nil then self.label117:destroy(); self.label117 = nil; end;
        if self.flowPart138 ~= nil then self.flowPart138:destroy(); self.flowPart138 = nil; end;
        if self.flowPart88 ~= nil then self.flowPart88:destroy(); self.flowPart88 = nil; end;
        if self.layout21 ~= nil then self.layout21:destroy(); self.layout21 = nil; end;
        if self.flowPart191 ~= nil then self.flowPart191:destroy(); self.flowPart191 = nil; end;
        if self.edit140 ~= nil then self.edit140:destroy(); self.edit140 = nil; end;
        if self.flowPart123 ~= nil then self.flowPart123:destroy(); self.flowPart123 = nil; end;
        if self.checkBox38 ~= nil then self.checkBox38:destroy(); self.checkBox38 = nil; end;
        if self.checkBox4 ~= nil then self.checkBox4:destroy(); self.checkBox4 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.label33 ~= nil then self.label33:destroy(); self.label33 = nil; end;
        if self.rectangle11 ~= nil then self.rectangle11:destroy(); self.rectangle11 = nil; end;
        if self.dataLink31 ~= nil then self.dataLink31:destroy(); self.dataLink31 = nil; end;
        if self.label44 ~= nil then self.label44:destroy(); self.label44 = nil; end;
        if self.flowPart218 ~= nil then self.flowPart218:destroy(); self.flowPart218 = nil; end;
        if self.edit46 ~= nil then self.edit46:destroy(); self.edit46 = nil; end;
        if self.label95 ~= nil then self.label95:destroy(); self.label95 = nil; end;
        if self.label83 ~= nil then self.label83:destroy(); self.label83 = nil; end;
        if self.flowPart210 ~= nil then self.flowPart210:destroy(); self.flowPart210 = nil; end;
        if self.flowLayout3 ~= nil then self.flowLayout3:destroy(); self.flowLayout3 = nil; end;
        if self.label98 ~= nil then self.label98:destroy(); self.label98 = nil; end;
        if self.flowPart117 ~= nil then self.flowPart117:destroy(); self.flowPart117 = nil; end;
        if self.flowPart7 ~= nil then self.flowPart7:destroy(); self.flowPart7 = nil; end;
        if self.flowPart46 ~= nil then self.flowPart46:destroy(); self.flowPart46 = nil; end;
        if self.label55 ~= nil then self.label55:destroy(); self.label55 = nil; end;
        if self.edit12 ~= nil then self.edit12:destroy(); self.edit12 = nil; end;
        if self.edit80 ~= nil then self.edit80:destroy(); self.edit80 = nil; end;
        if self.label66 ~= nil then self.label66:destroy(); self.label66 = nil; end;
        if self.rectangle21 ~= nil then self.rectangle21:destroy(); self.rectangle21 = nil; end;
        if self.checkBox27 ~= nil then self.checkBox27:destroy(); self.checkBox27 = nil; end;
        if self.dataLink13 ~= nil then self.dataLink13:destroy(); self.dataLink13 = nil; end;
        if self.flowPart109 ~= nil then self.flowPart109:destroy(); self.flowPart109 = nil; end;
        if self.label112 ~= nil then self.label112:destroy(); self.label112 = nil; end;
        if self.edit57 ~= nil then self.edit57:destroy(); self.edit57 = nil; end;
        if self.flowPart2 ~= nil then self.flowPart2:destroy(); self.flowPart2 = nil; end;
        if self.flowPart204 ~= nil then self.flowPart204:destroy(); self.flowPart204 = nil; end;
        if self.edit147 ~= nil then self.edit147:destroy(); self.edit147 = nil; end;
        if self.label65 ~= nil then self.label65:destroy(); self.label65 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.rectangle29 ~= nil then self.rectangle29:destroy(); self.rectangle29 = nil; end;
        if self.edit63 ~= nil then self.edit63:destroy(); self.edit63 = nil; end;
        if self.flowPart179 ~= nil then self.flowPart179:destroy(); self.flowPart179 = nil; end;
        if self.checkBox8 ~= nil then self.checkBox8:destroy(); self.checkBox8 = nil; end;
        if self.label60 ~= nil then self.label60:destroy(); self.label60 = nil; end;
        if self.flowPart156 ~= nil then self.flowPart156:destroy(); self.flowPart156 = nil; end;
        if self.edit88 ~= nil then self.edit88:destroy(); self.edit88 = nil; end;
        if self.label150 ~= nil then self.label150:destroy(); self.label150 = nil; end;
        if self.edit44 ~= nil then self.edit44:destroy(); self.edit44 = nil; end;
        if self.dataLink14 ~= nil then self.dataLink14:destroy(); self.dataLink14 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.flowPart148 ~= nil then self.flowPart148:destroy(); self.flowPart148 = nil; end;
        if self.flowPart64 ~= nil then self.flowPart64:destroy(); self.flowPart64 = nil; end;
        if self.popAtributo ~= nil then self.popAtributo:destroy(); self.popAtributo = nil; end;
        if self.rectangle43 ~= nil then self.rectangle43:destroy(); self.rectangle43 = nil; end;
        if self.edit53 ~= nil then self.edit53:destroy(); self.edit53 = nil; end;
        if self.flowLayout9 ~= nil then self.flowLayout9:destroy(); self.flowLayout9 = nil; end;
        if self.label28 ~= nil then self.label28:destroy(); self.label28 = nil; end;
        if self.edit107 ~= nil then self.edit107:destroy(); self.edit107 = nil; end;
        if self.flowPart153 ~= nil then self.flowPart153:destroy(); self.flowPart153 = nil; end;
        if self.flowPart177 ~= nil then self.flowPart177:destroy(); self.flowPart177 = nil; end;
        if self.edit56 ~= nil then self.edit56:destroy(); self.edit56 = nil; end;
        if self.label137 ~= nil then self.label137:destroy(); self.label137 = nil; end;
        if self.label80 ~= nil then self.label80:destroy(); self.label80 = nil; end;
        if self.flowPart167 ~= nil then self.flowPart167:destroy(); self.flowPart167 = nil; end;
        if self.edit141 ~= nil then self.edit141:destroy(); self.edit141 = nil; end;
        if self.comboBox5 ~= nil then self.comboBox5:destroy(); self.comboBox5 = nil; end;
        if self.edit43 ~= nil then self.edit43:destroy(); self.edit43 = nil; end;
        if self.checkBox21 ~= nil then self.checkBox21:destroy(); self.checkBox21 = nil; end;
        if self.flowLayout11 ~= nil then self.flowLayout11:destroy(); self.flowLayout11 = nil; end;
        if self.label100 ~= nil then self.label100:destroy(); self.label100 = nil; end;
        if self.flowPart134 ~= nil then self.flowPart134:destroy(); self.flowPart134 = nil; end;
        if self.rectangle49 ~= nil then self.rectangle49:destroy(); self.rectangle49 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.flowPart211 ~= nil then self.flowPart211:destroy(); self.flowPart211 = nil; end;
        if self.edit144 ~= nil then self.edit144:destroy(); self.edit144 = nil; end;
        if self.rectangle27 ~= nil then self.rectangle27:destroy(); self.rectangle27 = nil; end;
        if self.flowPart36 ~= nil then self.flowPart36:destroy(); self.flowPart36 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.flowPart137 ~= nil then self.flowPart137:destroy(); self.flowPart137 = nil; end;
        if self.flowPart151 ~= nil then self.flowPart151:destroy(); self.flowPart151 = nil; end;
        if self.flowPart217 ~= nil then self.flowPart217:destroy(); self.flowPart217 = nil; end;
        if self.edit51 ~= nil then self.edit51:destroy(); self.edit51 = nil; end;
        if self.flowPart82 ~= nil then self.flowPart82:destroy(); self.flowPart82 = nil; end;
        if self.edit48 ~= nil then self.edit48:destroy(); self.edit48 = nil; end;
        if self.flowLineBreak10 ~= nil then self.flowLineBreak10:destroy(); self.flowLineBreak10 = nil; end;
        if self.flowPart84 ~= nil then self.flowPart84:destroy(); self.flowPart84 = nil; end;
        if self.label85 ~= nil then self.label85:destroy(); self.label85 = nil; end;
        if self.rectangle31 ~= nil then self.rectangle31:destroy(); self.rectangle31 = nil; end;
        if self.edit70 ~= nil then self.edit70:destroy(); self.edit70 = nil; end;
        if self.flowPart115 ~= nil then self.flowPart115:destroy(); self.flowPart115 = nil; end;
        if self.flowPart65 ~= nil then self.flowPart65:destroy(); self.flowPart65 = nil; end;
        if self.flowPart200 ~= nil then self.flowPart200:destroy(); self.flowPart200 = nil; end;
        if self.flowPart112 ~= nil then self.flowPart112:destroy(); self.flowPart112 = nil; end;
        if self.flowPart165 ~= nil then self.flowPart165:destroy(); self.flowPart165 = nil; end;
        if self.dataLink11 ~= nil then self.dataLink11:destroy(); self.dataLink11 = nil; end;
        if self.flowPart184 ~= nil then self.flowPart184:destroy(); self.flowPart184 = nil; end;
        if self.rectangle39 ~= nil then self.rectangle39:destroy(); self.rectangle39 = nil; end;
        if self.rectangle41 ~= nil then self.rectangle41:destroy(); self.rectangle41 = nil; end;
        if self.edit136 ~= nil then self.edit136:destroy(); self.edit136 = nil; end;
        if self.flowLineBreak4 ~= nil then self.flowLineBreak4:destroy(); self.flowLineBreak4 = nil; end;
        if self.button14 ~= nil then self.button14:destroy(); self.button14 = nil; end;
        if self.label134 ~= nil then self.label134:destroy(); self.label134 = nil; end;
        if self.checkBox30 ~= nil then self.checkBox30:destroy(); self.checkBox30 = nil; end;
        if self.rectangle24 ~= nil then self.rectangle24:destroy(); self.rectangle24 = nil; end;
        if self.flowPart100 ~= nil then self.flowPart100:destroy(); self.flowPart100 = nil; end;
        if self.edit150 ~= nil then self.edit150:destroy(); self.edit150 = nil; end;
        if self.label14 ~= nil then self.label14:destroy(); self.label14 = nil; end;
        if self.edit64 ~= nil then self.edit64:destroy(); self.edit64 = nil; end;
        if self.edit41 ~= nil then self.edit41:destroy(); self.edit41 = nil; end;
        if self.flowPart121 ~= nil then self.flowPart121:destroy(); self.flowPart121 = nil; end;
        if self.flowPart181 ~= nil then self.flowPart181:destroy(); self.flowPart181 = nil; end;
        if self.edit36 ~= nil then self.edit36:destroy(); self.edit36 = nil; end;
        if self.label43 ~= nil then self.label43:destroy(); self.label43 = nil; end;
        if self.edit33 ~= nil then self.edit33:destroy(); self.edit33 = nil; end;
        if self.edit29 ~= nil then self.edit29:destroy(); self.edit29 = nil; end;
        if self.rectangle35 ~= nil then self.rectangle35:destroy(); self.rectangle35 = nil; end;
        if self.flowPart32 ~= nil then self.flowPart32:destroy(); self.flowPart32 = nil; end;
        if self.label96 ~= nil then self.label96:destroy(); self.label96 = nil; end;
        if self.label92 ~= nil then self.label92:destroy(); self.label92 = nil; end;
        if self.flowPart13 ~= nil then self.flowPart13:destroy(); self.flowPart13 = nil; end;
        if self.label148 ~= nil then self.label148:destroy(); self.label148 = nil; end;
        if self.flowPart1 ~= nil then self.flowPart1:destroy(); self.flowPart1 = nil; end;
        if self.rectangle16 ~= nil then self.rectangle16:destroy(); self.rectangle16 = nil; end;
        if self.rectangle47 ~= nil then self.rectangle47:destroy(); self.rectangle47 = nil; end;
        if self.label63 ~= nil then self.label63:destroy(); self.label63 = nil; end;
        if self.dataLink18 ~= nil then self.dataLink18:destroy(); self.dataLink18 = nil; end;
        if self.flowPart157 ~= nil then self.flowPart157:destroy(); self.flowPart157 = nil; end;
        if self.flowPart178 ~= nil then self.flowPart178:destroy(); self.flowPart178 = nil; end;
        if self.flowPart25 ~= nil then self.flowPart25:destroy(); self.flowPart25 = nil; end;
        if self.flowPart69 ~= nil then self.flowPart69:destroy(); self.flowPart69 = nil; end;
        if self.flowPart76 ~= nil then self.flowPart76:destroy(); self.flowPart76 = nil; end;
        if self.flowPart74 ~= nil then self.flowPart74:destroy(); self.flowPart74 = nil; end;
        if self.flowPart101 ~= nil then self.flowPart101:destroy(); self.flowPart101 = nil; end;
        if self.label122 ~= nil then self.label122:destroy(); self.label122 = nil; end;
        if self.rectangle5 ~= nil then self.rectangle5:destroy(); self.rectangle5 = nil; end;
        if self.flowPart19 ~= nil then self.flowPart19:destroy(); self.flowPart19 = nil; end;
        if self.flowPart203 ~= nil then self.flowPart203:destroy(); self.flowPart203 = nil; end;
        if self.flowPart233 ~= nil then self.flowPart233:destroy(); self.flowPart233 = nil; end;
        if self.flowPart161 ~= nil then self.flowPart161:destroy(); self.flowPart161 = nil; end;
        if self.label146 ~= nil then self.label146:destroy(); self.label146 = nil; end;
        if self.layout9 ~= nil then self.layout9:destroy(); self.layout9 = nil; end;
        if self.flowPart225 ~= nil then self.flowPart225:destroy(); self.flowPart225 = nil; end;
        if self.flowPart223 ~= nil then self.flowPart223:destroy(); self.flowPart223 = nil; end;
        if self.dataLink9 ~= nil then self.dataLink9:destroy(); self.dataLink9 = nil; end;
        if self.label15 ~= nil then self.label15:destroy(); self.label15 = nil; end;
        if self.label99 ~= nil then self.label99:destroy(); self.label99 = nil; end;
        if self.label107 ~= nil then self.label107:destroy(); self.label107 = nil; end;
        if self.flowPart89 ~= nil then self.flowPart89:destroy(); self.flowPart89 = nil; end;
        if self.flowPart68 ~= nil then self.flowPart68:destroy(); self.flowPart68 = nil; end;
        if self.flowLineBreak6 ~= nil then self.flowLineBreak6:destroy(); self.flowLineBreak6 = nil; end;
        if self.label82 ~= nil then self.label82:destroy(); self.label82 = nil; end;
        if self.rectangle33 ~= nil then self.rectangle33:destroy(); self.rectangle33 = nil; end;
        if self.rectangle51 ~= nil then self.rectangle51:destroy(); self.rectangle51 = nil; end;
        if self.flowPart150 ~= nil then self.flowPart150:destroy(); self.flowPart150 = nil; end;
        if self.edit69 ~= nil then self.edit69:destroy(); self.edit69 = nil; end;
        if self.flowPart140 ~= nil then self.flowPart140:destroy(); self.flowPart140 = nil; end;
        if self.flowPart34 ~= nil then self.flowPart34:destroy(); self.flowPart34 = nil; end;
        if self.flowPart190 ~= nil then self.flowPart190:destroy(); self.flowPart190 = nil; end;
        if self.flowPart54 ~= nil then self.flowPart54:destroy(); self.flowPart54 = nil; end;
        if self.edit16 ~= nil then self.edit16:destroy(); self.edit16 = nil; end;
        if self.flowPart53 ~= nil then self.flowPart53:destroy(); self.flowPart53 = nil; end;
        if self.label47 ~= nil then self.label47:destroy(); self.label47 = nil; end;
        if self.edit116 ~= nil then self.edit116:destroy(); self.edit116 = nil; end;
        if self.label76 ~= nil then self.label76:destroy(); self.label76 = nil; end;
        if self.edit77 ~= nil then self.edit77:destroy(); self.edit77 = nil; end;
        if self.edit52 ~= nil then self.edit52:destroy(); self.edit52 = nil; end;
        if self.button4 ~= nil then self.button4:destroy(); self.button4 = nil; end;
        if self.rectangle7 ~= nil then self.rectangle7:destroy(); self.rectangle7 = nil; end;
        if self.flowPart57 ~= nil then self.flowPart57:destroy(); self.flowPart57 = nil; end;
        if self.rectangle55 ~= nil then self.rectangle55:destroy(); self.rectangle55 = nil; end;
        if self.edit58 ~= nil then self.edit58:destroy(); self.edit58 = nil; end;
        if self.flowPart240 ~= nil then self.flowPart240:destroy(); self.flowPart240 = nil; end;
        if self.button7 ~= nil then self.button7:destroy(); self.button7 = nil; end;
        if self.checkBox42 ~= nil then self.checkBox42:destroy(); self.checkBox42 = nil; end;
        if self.label106 ~= nil then self.label106:destroy(); self.label106 = nil; end;
        if self.label109 ~= nil then self.label109:destroy(); self.label109 = nil; end;
        if self.label103 ~= nil then self.label103:destroy(); self.label103 = nil; end;
        if self.edit66 ~= nil then self.edit66:destroy(); self.edit66 = nil; end;
        if self.dataLink20 ~= nil then self.dataLink20:destroy(); self.dataLink20 = nil; end;
        if self.label94 ~= nil then self.label94:destroy(); self.label94 = nil; end;
        if self.flowPart59 ~= nil then self.flowPart59:destroy(); self.flowPart59 = nil; end;
        if self.label29 ~= nil then self.label29:destroy(); self.label29 = nil; end;
        if self.flowPart231 ~= nil then self.flowPart231:destroy(); self.flowPart231 = nil; end;
        if self.flowLayout14 ~= nil then self.flowLayout14:destroy(); self.flowLayout14 = nil; end;
        if self.rectangle23 ~= nil then self.rectangle23:destroy(); self.rectangle23 = nil; end;
        if self.label91 ~= nil then self.label91:destroy(); self.label91 = nil; end;
        if self.dataLink6 ~= nil then self.dataLink6:destroy(); self.dataLink6 = nil; end;
        if self.label30 ~= nil then self.label30:destroy(); self.label30 = nil; end;
        if self.label51 ~= nil then self.label51:destroy(); self.label51 = nil; end;
        if self.rectangle61 ~= nil then self.rectangle61:destroy(); self.rectangle61 = nil; end;
        if self.edit99 ~= nil then self.edit99:destroy(); self.edit99 = nil; end;
        if self.flowPart39 ~= nil then self.flowPart39:destroy(); self.flowPart39 = nil; end;
        if self.rectangle52 ~= nil then self.rectangle52:destroy(); self.rectangle52 = nil; end;
        if self.layout11 ~= nil then self.layout11:destroy(); self.layout11 = nil; end;
        if self.flowPart60 ~= nil then self.flowPart60:destroy(); self.flowPart60 = nil; end;
        if self.flowPart28 ~= nil then self.flowPart28:destroy(); self.flowPart28 = nil; end;
        if self.flowPart209 ~= nil then self.flowPart209:destroy(); self.flowPart209 = nil; end;
        if self.rectangle18 ~= nil then self.rectangle18:destroy(); self.rectangle18 = nil; end;
        if self.rectangle14 ~= nil then self.rectangle14:destroy(); self.rectangle14 = nil; end;
        if self.label147 ~= nil then self.label147:destroy(); self.label147 = nil; end;
        if self.edit124 ~= nil then self.edit124:destroy(); self.edit124 = nil; end;
        if self.flowPart87 ~= nil then self.flowPart87:destroy(); self.flowPart87 = nil; end;
        if self.edit157 ~= nil then self.edit157:destroy(); self.edit157 = nil; end;
        if self.label89 ~= nil then self.label89:destroy(); self.label89 = nil; end;
        if self.edit83 ~= nil then self.edit83:destroy(); self.edit83 = nil; end;
        if self.rectangle42 ~= nil then self.rectangle42:destroy(); self.rectangle42 = nil; end;
        if self.edit74 ~= nil then self.edit74:destroy(); self.edit74 = nil; end;
        if self.flowPart15 ~= nil then self.flowPart15:destroy(); self.flowPart15 = nil; end;
        if self.edit60 ~= nil then self.edit60:destroy(); self.edit60 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        if self.label127 ~= nil then self.label127:destroy(); self.label127 = nil; end;
        if self.flowPart104 ~= nil then self.flowPart104:destroy(); self.flowPart104 = nil; end;
        if self.flowPart132 ~= nil then self.flowPart132:destroy(); self.flowPart132 = nil; end;
        if self.flowPart10 ~= nil then self.flowPart10:destroy(); self.flowPart10 = nil; end;
        if self.rectangle9 ~= nil then self.rectangle9:destroy(); self.rectangle9 = nil; end;
        if self.edit121 ~= nil then self.edit121:destroy(); self.edit121 = nil; end;
        if self.flowPart122 ~= nil then self.flowPart122:destroy(); self.flowPart122 = nil; end;
        if self.flowPart92 ~= nil then self.flowPart92:destroy(); self.flowPart92 = nil; end;
        if self.textEditor3 ~= nil then self.textEditor3:destroy(); self.textEditor3 = nil; end;
        if self.flowPart235 ~= nil then self.flowPart235:destroy(); self.flowPart235 = nil; end;
        if self.flowPart75 ~= nil then self.flowPart75:destroy(); self.flowPart75 = nil; end;
        if self.flowPart220 ~= nil then self.flowPart220:destroy(); self.flowPart220 = nil; end;
        if self.dataLink10 ~= nil then self.dataLink10:destroy(); self.dataLink10 = nil; end;
        if self.flowLayout12 ~= nil then self.flowLayout12:destroy(); self.flowLayout12 = nil; end;
        if self.flowPart97 ~= nil then self.flowPart97:destroy(); self.flowPart97 = nil; end;
        if self.label23 ~= nil then self.label23:destroy(); self.label23 = nil; end;
        if self.label90 ~= nil then self.label90:destroy(); self.label90 = nil; end;
        if self.flowPart102 ~= nil then self.flowPart102:destroy(); self.flowPart102 = nil; end;
        if self.label61 ~= nil then self.label61:destroy(); self.label61 = nil; end;
        if self.edit100 ~= nil then self.edit100:destroy(); self.edit100 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.edit61 ~= nil then self.edit61:destroy(); self.edit61 = nil; end;
        if self.edit84 ~= nil then self.edit84:destroy(); self.edit84 = nil; end;
        if self.label93 ~= nil then self.label93:destroy(); self.label93 = nil; end;
        if self.layout12 ~= nil then self.layout12:destroy(); self.layout12 = nil; end;
        if self.edit14 ~= nil then self.edit14:destroy(); self.edit14 = nil; end;
        if self.textEditor2 ~= nil then self.textEditor2:destroy(); self.textEditor2 = nil; end;
        if self.checkBox17 ~= nil then self.checkBox17:destroy(); self.checkBox17 = nil; end;
        if self.edit103 ~= nil then self.edit103:destroy(); self.edit103 = nil; end;
        if self.label37 ~= nil then self.label37:destroy(); self.label37 = nil; end;
        if self.dataLink43 ~= nil then self.dataLink43:destroy(); self.dataLink43 = nil; end;
        if self.rectangle45 ~= nil then self.rectangle45:destroy(); self.rectangle45 = nil; end;
        if self.flowPart127 ~= nil then self.flowPart127:destroy(); self.flowPart127 = nil; end;
        if self.edit45 ~= nil then self.edit45:destroy(); self.edit45 = nil; end;
        if self.checkBox9 ~= nil then self.checkBox9:destroy(); self.checkBox9 = nil; end;
        if self.flowPart147 ~= nil then self.flowPart147:destroy(); self.flowPart147 = nil; end;
        if self.flowPart4 ~= nil then self.flowPart4:destroy(); self.flowPart4 = nil; end;
        if self.flowPart93 ~= nil then self.flowPart93:destroy(); self.flowPart93 = nil; end;
        if self.label86 ~= nil then self.label86:destroy(); self.label86 = nil; end;
        if self.edit96 ~= nil then self.edit96:destroy(); self.edit96 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.flowPart158 ~= nil then self.flowPart158:destroy(); self.flowPart158 = nil; end;
        if self.flowPart110 ~= nil then self.flowPart110:destroy(); self.flowPart110 = nil; end;
        if self.rectangle53 ~= nil then self.rectangle53:destroy(); self.rectangle53 = nil; end;
        if self.edit109 ~= nil then self.edit109:destroy(); self.edit109 = nil; end;
        if self.flowPart189 ~= nil then self.flowPart189:destroy(); self.flowPart189 = nil; end;
        if self.flowLineBreak13 ~= nil then self.flowLineBreak13:destroy(); self.flowLineBreak13 = nil; end;
        if self.flowLineBreak14 ~= nil then self.flowLineBreak14:destroy(); self.flowLineBreak14 = nil; end;
        if self.button3 ~= nil then self.button3:destroy(); self.button3 = nil; end;
        if self.flowPart162 ~= nil then self.flowPart162:destroy(); self.flowPart162 = nil; end;
        if self.edit152 ~= nil then self.edit152:destroy(); self.edit152 = nil; end;
        if self.flowPart176 ~= nil then self.flowPart176:destroy(); self.flowPart176 = nil; end;
        if self.label102 ~= nil then self.label102:destroy(); self.label102 = nil; end;
        if self.edit93 ~= nil then self.edit93:destroy(); self.edit93 = nil; end;
        if self.edit126 ~= nil then self.edit126:destroy(); self.edit126 = nil; end;
        if self.flowPart208 ~= nil then self.flowPart208:destroy(); self.flowPart208 = nil; end;
        if self.dataLink24 ~= nil then self.dataLink24:destroy(); self.dataLink24 = nil; end;
        if self.label132 ~= nil then self.label132:destroy(); self.label132 = nil; end;
        if self.flowPart126 ~= nil then self.flowPart126:destroy(); self.flowPart126 = nil; end;
        if self.button11 ~= nil then self.button11:destroy(); self.button11 = nil; end;
        if self.button5 ~= nil then self.button5:destroy(); self.button5 = nil; end;
        if self.edit37 ~= nil then self.edit37:destroy(); self.edit37 = nil; end;
        if self.flowLayout2 ~= nil then self.flowLayout2:destroy(); self.flowLayout2 = nil; end;
        if self.dataLink27 ~= nil then self.dataLink27:destroy(); self.dataLink27 = nil; end;
        if self.label10 ~= nil then self.label10:destroy(); self.label10 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.rectangle30 ~= nil then self.rectangle30:destroy(); self.rectangle30 = nil; end;
        if self.edit155 ~= nil then self.edit155:destroy(); self.edit155 = nil; end;
        if self.edit162 ~= nil then self.edit162:destroy(); self.edit162 = nil; end;
        if self.flowPart216 ~= nil then self.flowPart216:destroy(); self.flowPart216 = nil; end;
        if self.flowPart149 ~= nil then self.flowPart149:destroy(); self.flowPart149 = nil; end;
        if self.flowPart3 ~= nil then self.flowPart3:destroy(); self.flowPart3 = nil; end;
        if self.label39 ~= nil then self.label39:destroy(); self.label39 = nil; end;
        if self.checkBox19 ~= nil then self.checkBox19:destroy(); self.checkBox19 = nil; end;
        if self.rectangle40 ~= nil then self.rectangle40:destroy(); self.rectangle40 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.label108 ~= nil then self.label108:destroy(); self.label108 = nil; end;
        if self.flowPart163 ~= nil then self.flowPart163:destroy(); self.flowPart163 = nil; end;
        if self.flowPart226 ~= nil then self.flowPart226:destroy(); self.flowPart226 = nil; end;
        if self.flowPart239 ~= nil then self.flowPart239:destroy(); self.flowPart239 = nil; end;
        if self.edit138 ~= nil then self.edit138:destroy(); self.edit138 = nil; end;
        if self.checkBox26 ~= nil then self.checkBox26:destroy(); self.checkBox26 = nil; end;
        if self.button8 ~= nil then self.button8:destroy(); self.button8 = nil; end;
        if self.edit42 ~= nil then self.edit42:destroy(); self.edit42 = nil; end;
        if self.edit118 ~= nil then self.edit118:destroy(); self.edit118 = nil; end;
        if self.checkBox10 ~= nil then self.checkBox10:destroy(); self.checkBox10 = nil; end;
        if self.rectangle4 ~= nil then self.rectangle4:destroy(); self.rectangle4 = nil; end;
        if self.flowPart85 ~= nil then self.flowPart85:destroy(); self.flowPart85 = nil; end;
        if self.flowPart228 ~= nil then self.flowPart228:destroy(); self.flowPart228 = nil; end;
        if self.label84 ~= nil then self.label84:destroy(); self.label84 = nil; end;
        if self.label124 ~= nil then self.label124:destroy(); self.label124 = nil; end;
        if self.dataLink38 ~= nil then self.dataLink38:destroy(); self.dataLink38 = nil; end;
        if self.edit102 ~= nil then self.edit102:destroy(); self.edit102 = nil; end;
        if self.edit117 ~= nil then self.edit117:destroy(); self.edit117 = nil; end;
        if self.flowPart24 ~= nil then self.flowPart24:destroy(); self.flowPart24 = nil; end;
        if self.flowPart77 ~= nil then self.flowPart77:destroy(); self.flowPart77 = nil; end;
        if self.flowPart173 ~= nil then self.flowPart173:destroy(); self.flowPart173 = nil; end;
        if self.dataLink12 ~= nil then self.dataLink12:destroy(); self.dataLink12 = nil; end;
        if self.checkBox41 ~= nil then self.checkBox41:destroy(); self.checkBox41 = nil; end;
        if self.checkBox39 ~= nil then self.checkBox39:destroy(); self.checkBox39 = nil; end;
        if self.edit73 ~= nil then self.edit73:destroy(); self.edit73 = nil; end;
        if self.edit98 ~= nil then self.edit98:destroy(); self.edit98 = nil; end;
        if self.checkBox18 ~= nil then self.checkBox18:destroy(); self.checkBox18 = nil; end;
        if self.dataLink42 ~= nil then self.dataLink42:destroy(); self.dataLink42 = nil; end;
        if self.flowPart207 ~= nil then self.flowPart207:destroy(); self.flowPart207 = nil; end;
        if self.flowPart133 ~= nil then self.flowPart133:destroy(); self.flowPart133 = nil; end;
        if self.flowPart154 ~= nil then self.flowPart154:destroy(); self.flowPart154 = nil; end;
        if self.TrBut ~= nil then self.TrBut:destroy(); self.TrBut = nil; end;
        if self.dataLink4 ~= nil then self.dataLink4:destroy(); self.dataLink4 = nil; end;
        if self.edit111 ~= nil then self.edit111:destroy(); self.edit111 = nil; end;
        if self.flowLineBreak7 ~= nil then self.flowLineBreak7:destroy(); self.flowLineBreak7 = nil; end;
        if self.flowPart227 ~= nil then self.flowPart227:destroy(); self.flowPart227 = nil; end;
        if self.checkBox11 ~= nil then self.checkBox11:destroy(); self.checkBox11 = nil; end;
        if self.flowLayout5 ~= nil then self.flowLayout5:destroy(); self.flowLayout5 = nil; end;
        if self.label22 ~= nil then self.label22:destroy(); self.label22 = nil; end;
        if self.button2 ~= nil then self.button2:destroy(); self.button2 = nil; end;
        if self.flowPart166 ~= nil then self.flowPart166:destroy(); self.flowPart166 = nil; end;
        if self.label13 ~= nil then self.label13:destroy(); self.label13 = nil; end;
        if self.edit153 ~= nil then self.edit153:destroy(); self.edit153 = nil; end;
        if self.label59 ~= nil then self.label59:destroy(); self.label59 = nil; end;
        if self.checkBox7 ~= nil then self.checkBox7:destroy(); self.checkBox7 = nil; end;
        if self.edit131 ~= nil then self.edit131:destroy(); self.edit131 = nil; end;
        if self.edit47 ~= nil then self.edit47:destroy(); self.edit47 = nil; end;
        if self.flowPart135 ~= nil then self.flowPart135:destroy(); self.flowPart135 = nil; end;
        if self.edit149 ~= nil then self.edit149:destroy(); self.edit149 = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.comboBox3 ~= nil then self.comboBox3:destroy(); self.comboBox3 = nil; end;
        if self.rectangle57 ~= nil then self.rectangle57:destroy(); self.rectangle57 = nil; end;
        if self.edit160 ~= nil then self.edit160:destroy(); self.edit160 = nil; end;
        if self.edit26 ~= nil then self.edit26:destroy(); self.edit26 = nil; end;
        if self.edit112 ~= nil then self.edit112:destroy(); self.edit112 = nil; end;
        if self.edit34 ~= nil then self.edit34:destroy(); self.edit34 = nil; end;
        if self.label31 ~= nil then self.label31:destroy(); self.label31 = nil; end;
        if self.edit19 ~= nil then self.edit19:destroy(); self.edit19 = nil; end;
        if self.checkBox45 ~= nil then self.checkBox45:destroy(); self.checkBox45 = nil; end;
        if self.flowPart52 ~= nil then self.flowPart52:destroy(); self.flowPart52 = nil; end;
        if self.flowPart170 ~= nil then self.flowPart170:destroy(); self.flowPart170 = nil; end;
        if self.label126 ~= nil then self.label126:destroy(); self.label126 = nil; end;
        if self.flowPart38 ~= nil then self.flowPart38:destroy(); self.flowPart38 = nil; end;
        if self.label41 ~= nil then self.label41:destroy(); self.label41 = nil; end;
        if self.label72 ~= nil then self.label72:destroy(); self.label72 = nil; end;
        if self.label12 ~= nil then self.label12:destroy(); self.label12 = nil; end;
        if self.flowPart160 ~= nil then self.flowPart160:destroy(); self.flowPart160 = nil; end;
        if self.rectangle28 ~= nil then self.rectangle28:destroy(); self.rectangle28 = nil; end;
        if self.flowPart143 ~= nil then self.flowPart143:destroy(); self.flowPart143 = nil; end;
        if self.flowPart20 ~= nil then self.flowPart20:destroy(); self.flowPart20 = nil; end;
        if self.flowPart44 ~= nil then self.flowPart44:destroy(); self.flowPart44 = nil; end;
        if self.edit10 ~= nil then self.edit10:destroy(); self.edit10 = nil; end;
        if self.edit106 ~= nil then self.edit106:destroy(); self.edit106 = nil; end;
        if self.edit31 ~= nil then self.edit31:destroy(); self.edit31 = nil; end;
        if self.popGrapple ~= nil then self.popGrapple:destroy(); self.popGrapple = nil; end;
        if self.edit125 ~= nil then self.edit125:destroy(); self.edit125 = nil; end;
        if self.checkBox43 ~= nil then self.checkBox43:destroy(); self.checkBox43 = nil; end;
        if self.rectangle26 ~= nil then self.rectangle26:destroy(); self.rectangle26 = nil; end;
        if self.label78 ~= nil then self.label78:destroy(); self.label78 = nil; end;
        if self.dataLink16 ~= nil then self.dataLink16:destroy(); self.dataLink16 = nil; end;
        if self.rectangle65 ~= nil then self.rectangle65:destroy(); self.rectangle65 = nil; end;
        if self.comboBox1 ~= nil then self.comboBox1:destroy(); self.comboBox1 = nil; end;
        if self.label114 ~= nil then self.label114:destroy(); self.label114 = nil; end;
        if self.flowPart5 ~= nil then self.flowPart5:destroy(); self.flowPart5 = nil; end;
        if self.label135 ~= nil then self.label135:destroy(); self.label135 = nil; end;
        if self.edit23 ~= nil then self.edit23:destroy(); self.edit23 = nil; end;
        if self.label56 ~= nil then self.label56:destroy(); self.label56 = nil; end;
        if self.flowPart29 ~= nil then self.flowPart29:destroy(); self.flowPart29 = nil; end;
        if self.edit122 ~= nil then self.edit122:destroy(); self.edit122 = nil; end;
        if self.edit40 ~= nil then self.edit40:destroy(); self.edit40 = nil; end;
        if self.edit110 ~= nil then self.edit110:destroy(); self.edit110 = nil; end;
        if self.dataLink2 ~= nil then self.dataLink2:destroy(); self.dataLink2 = nil; end;
        if self.edit38 ~= nil then self.edit38:destroy(); self.edit38 = nil; end;
        if self.dataLink15 ~= nil then self.dataLink15:destroy(); self.dataLink15 = nil; end;
        if self.edit123 ~= nil then self.edit123:destroy(); self.edit123 = nil; end;
        if self.label130 ~= nil then self.label130:destroy(); self.label130 = nil; end;
        if self.flowPart23 ~= nil then self.flowPart23:destroy(); self.flowPart23 = nil; end;
        if self.label54 ~= nil then self.label54:destroy(); self.label54 = nil; end;
        if self.flowPart186 ~= nil then self.flowPart186:destroy(); self.flowPart186 = nil; end;
        if self.dataLink37 ~= nil then self.dataLink37:destroy(); self.dataLink37 = nil; end;
        if self.textEditor1 ~= nil then self.textEditor1:destroy(); self.textEditor1 = nil; end;
        if self.edit137 ~= nil then self.edit137:destroy(); self.edit137 = nil; end;
        if self.flowLayout6 ~= nil then self.flowLayout6:destroy(); self.flowLayout6 = nil; end;
        if self.edit146 ~= nil then self.edit146:destroy(); self.edit146 = nil; end;
        if self.checkBox13 ~= nil then self.checkBox13:destroy(); self.checkBox13 = nil; end;
        if self.dataLink29 ~= nil then self.dataLink29:destroy(); self.dataLink29 = nil; end;
        if self.button9 ~= nil then self.button9:destroy(); self.button9 = nil; end;
        if self.label152 ~= nil then self.label152:destroy(); self.label152 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.flowLineBreak12 ~= nil then self.flowLineBreak12:destroy(); self.flowLineBreak12 = nil; end;
        if self.flowPart30 ~= nil then self.flowPart30:destroy(); self.flowPart30 = nil; end;
        if self.rectangle60 ~= nil then self.rectangle60:destroy(); self.rectangle60 = nil; end;
        if self.edit49 ~= nil then self.edit49:destroy(); self.edit49 = nil; end;
        if self.label62 ~= nil then self.label62:destroy(); self.label62 = nil; end;
        if self.rectangle32 ~= nil then self.rectangle32:destroy(); self.rectangle32 = nil; end;
        if self.layout16 ~= nil then self.layout16:destroy(); self.layout16 = nil; end;
        if self.flowPart99 ~= nil then self.flowPart99:destroy(); self.flowPart99 = nil; end;
        if self.edit18 ~= nil then self.edit18:destroy(); self.edit18 = nil; end;
        if self.edit25 ~= nil then self.edit25:destroy(); self.edit25 = nil; end;
        if self.ManeuverBt ~= nil then self.ManeuverBt:destroy(); self.ManeuverBt = nil; end;
        if self.dataLink25 ~= nil then self.dataLink25:destroy(); self.dataLink25 = nil; end;
        if self.flowPart62 ~= nil then self.flowPart62:destroy(); self.flowPart62 = nil; end;
        if self.flowPart49 ~= nil then self.flowPart49:destroy(); self.flowPart49 = nil; end;
        if self.flowPart120 ~= nil then self.flowPart120:destroy(); self.flowPart120 = nil; end;
        if self.edit94 ~= nil then self.edit94:destroy(); self.edit94 = nil; end;
        if self.flowPart212 ~= nil then self.flowPart212:destroy(); self.flowPart212 = nil; end;
        if self.label123 ~= nil then self.label123:destroy(); self.label123 = nil; end;
        if self.flowPart14 ~= nil then self.flowPart14:destroy(); self.flowPart14 = nil; end;
        if self.flowLineBreak9 ~= nil then self.flowLineBreak9:destroy(); self.flowLineBreak9 = nil; end;
        if self.flowPart201 ~= nil then self.flowPart201:destroy(); self.flowPart201 = nil; end;
        if self.rectangle56 ~= nil then self.rectangle56:destroy(); self.rectangle56 = nil; end;
        if self.flowPart164 ~= nil then self.flowPart164:destroy(); self.flowPart164 = nil; end;
        if self.dataLink39 ~= nil then self.dataLink39:destroy(); self.dataLink39 = nil; end;
        if self.flowPart83 ~= nil then self.flowPart83:destroy(); self.flowPart83 = nil; end;
        if self.edit104 ~= nil then self.edit104:destroy(); self.edit104 = nil; end;
        if self.label113 ~= nil then self.label113:destroy(); self.label113 = nil; end;
        if self.flowPart175 ~= nil then self.flowPart175:destroy(); self.flowPart175 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.edit108 ~= nil then self.edit108:destroy(); self.edit108 = nil; end;
        if self.edit95 ~= nil then self.edit95:destroy(); self.edit95 = nil; end;
        if self.flowPart172 ~= nil then self.flowPart172:destroy(); self.flowPart172 = nil; end;
        if self.edit35 ~= nil then self.edit35:destroy(); self.edit35 = nil; end;
        if self.label26 ~= nil then self.label26:destroy(); self.label26 = nil; end;
        if self.comboBox4 ~= nil then self.comboBox4:destroy(); self.comboBox4 = nil; end;
        if self.flowPart130 ~= nil then self.flowPart130:destroy(); self.flowPart130 = nil; end;
        if self.edit97 ~= nil then self.edit97:destroy(); self.edit97 = nil; end;
        if self.checkBox6 ~= nil then self.checkBox6:destroy(); self.checkBox6 = nil; end;
        if self.rectangle19 ~= nil then self.rectangle19:destroy(); self.rectangle19 = nil; end;
        if self.label121 ~= nil then self.label121:destroy(); self.label121 = nil; end;
        if self.flowPart221 ~= nil then self.flowPart221:destroy(); self.flowPart221 = nil; end;
        if self.rectangle22 ~= nil then self.rectangle22:destroy(); self.rectangle22 = nil; end;
        if self.flowPart50 ~= nil then self.flowPart50:destroy(); self.flowPart50 = nil; end;
        if self.edit50 ~= nil then self.edit50:destroy(); self.edit50 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.flowPart47 ~= nil then self.flowPart47:destroy(); self.flowPart47 = nil; end;
        if self.label64 ~= nil then self.label64:destroy(); self.label64 = nil; end;
        if self.flowPart67 ~= nil then self.flowPart67:destroy(); self.flowPart67 = nil; end;
        if self.flowPart31 ~= nil then self.flowPart31:destroy(); self.flowPart31 = nil; end;
        if self.edit89 ~= nil then self.edit89:destroy(); self.edit89 = nil; end;
        if self.label136 ~= nil then self.label136:destroy(); self.label136 = nil; end;
        if self.flowPart229 ~= nil then self.flowPart229:destroy(); self.flowPart229 = nil; end;
        if self.rectangle25 ~= nil then self.rectangle25:destroy(); self.rectangle25 = nil; end;
        if self.flowPart12 ~= nil then self.flowPart12:destroy(); self.flowPart12 = nil; end;
        if self.label74 ~= nil then self.label74:destroy(); self.label74 = nil; end;
        if self.flowPart168 ~= nil then self.flowPart168:destroy(); self.flowPart168 = nil; end;
        if self.rectangle54 ~= nil then self.rectangle54:destroy(); self.rectangle54 = nil; end;
        if self.dataLink41 ~= nil then self.dataLink41:destroy(); self.dataLink41 = nil; end;
        if self.label149 ~= nil then self.label149:destroy(); self.label149 = nil; end;
        if self.dataLink19 ~= nil then self.dataLink19:destroy(); self.dataLink19 = nil; end;
        if self.flowPart182 ~= nil then self.flowPart182:destroy(); self.flowPart182 = nil; end;
        if self.edit148 ~= nil then self.edit148:destroy(); self.edit148 = nil; end;
        if self.checkBox20 ~= nil then self.checkBox20:destroy(); self.checkBox20 = nil; end;
        if self.dataLink36 ~= nil then self.dataLink36:destroy(); self.dataLink36 = nil; end;
        if self.flowPart114 ~= nil then self.flowPart114:destroy(); self.flowPart114 = nil; end;
        if self.flowPart194 ~= nil then self.flowPart194:destroy(); self.flowPart194 = nil; end;
        if self.dataLink17 ~= nil then self.dataLink17:destroy(); self.dataLink17 = nil; end;
        if self.layout19 ~= nil then self.layout19:destroy(); self.layout19 = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
        if self.rectangle8 ~= nil then self.rectangle8:destroy(); self.rectangle8 = nil; end;
        if self.flowLineBreak1 ~= nil then self.flowLineBreak1:destroy(); self.flowLineBreak1 = nil; end;
        if self.flowPart81 ~= nil then self.flowPart81:destroy(); self.flowPart81 = nil; end;
        if self.edit30 ~= nil then self.edit30:destroy(); self.edit30 = nil; end;
        if self.checkBox5 ~= nil then self.checkBox5:destroy(); self.checkBox5 = nil; end;
        if self.flowPart159 ~= nil then self.flowPart159:destroy(); self.flowPart159 = nil; end;
        if self.edit55 ~= nil then self.edit55:destroy(); self.edit55 = nil; end;
        if self.label118 ~= nil then self.label118:destroy(); self.label118 = nil; end;
        if self.flowLineBreak3 ~= nil then self.flowLineBreak3:destroy(); self.flowLineBreak3 = nil; end;
        if self.label17 ~= nil then self.label17:destroy(); self.label17 = nil; end;
        if self.edit75 ~= nil then self.edit75:destroy(); self.edit75 = nil; end;
        if self.edit65 ~= nil then self.edit65:destroy(); self.edit65 = nil; end;
        if self.flowPart98 ~= nil then self.flowPart98:destroy(); self.flowPart98 = nil; end;
        if self.flowPart63 ~= nil then self.flowPart63:destroy(); self.flowPart63 = nil; end;
        if self.edit39 ~= nil then self.edit39:destroy(); self.edit39 = nil; end;
        if self.edit130 ~= nil then self.edit130:destroy(); self.edit130 = nil; end;
        if self.flowPart238 ~= nil then self.flowPart238:destroy(); self.flowPart238 = nil; end;
        if self.flowPart70 ~= nil then self.flowPart70:destroy(); self.flowPart70 = nil; end;
        if self.flowPart11 ~= nil then self.flowPart11:destroy(); self.flowPart11 = nil; end;
        if self.checkBox46 ~= nil then self.checkBox46:destroy(); self.checkBox46 = nil; end;
        if self.flowPart185 ~= nil then self.flowPart185:destroy(); self.flowPart185 = nil; end;
        if self.button12 ~= nil then self.button12:destroy(); self.button12 = nil; end;
        if self.flowPart196 ~= nil then self.flowPart196:destroy(); self.flowPart196 = nil; end;
        if self.label36 ~= nil then self.label36:destroy(); self.label36 = nil; end;
        if self.dataLink26 ~= nil then self.dataLink26:destroy(); self.dataLink26 = nil; end;
        if self.edit151 ~= nil then self.edit151:destroy(); self.edit151 = nil; end;
        if self.edit132 ~= nil then self.edit132:destroy(); self.edit132 = nil; end;
        if self.flowPart86 ~= nil then self.flowPart86:destroy(); self.flowPart86 = nil; end;
        if self.flowPart111 ~= nil then self.flowPart111:destroy(); self.flowPart111 = nil; end;
        if self.popManeuver ~= nil then self.popManeuver:destroy(); self.popManeuver = nil; end;
        if self.edit119 ~= nil then self.edit119:destroy(); self.edit119 = nil; end;
        if self.flowPart146 ~= nil then self.flowPart146:destroy(); self.flowPart146 = nil; end;
        if self.flowPart17 ~= nil then self.flowPart17:destroy(); self.flowPart17 = nil; end;
        if self.checkBox36 ~= nil then self.checkBox36:destroy(); self.checkBox36 = nil; end;
        if self.label46 ~= nil then self.label46:destroy(); self.label46 = nil; end;
        if self.checkBox34 ~= nil then self.checkBox34:destroy(); self.checkBox34 = nil; end;
        if self.checkBox2 ~= nil then self.checkBox2:destroy(); self.checkBox2 = nil; end;
        if self.flowLineBreak8 ~= nil then self.flowLineBreak8:destroy(); self.flowLineBreak8 = nil; end;
        if self.flowPart61 ~= nil then self.flowPart61:destroy(); self.flowPart61 = nil; end;
        if self.flowPart27 ~= nil then self.flowPart27:destroy(); self.flowPart27 = nil; end;
        if self.flowPart171 ~= nil then self.flowPart171:destroy(); self.flowPart171 = nil; end;
        if self.flowPart58 ~= nil then self.flowPart58:destroy(); self.flowPart58 = nil; end;
        if self.edit78 ~= nil then self.edit78:destroy(); self.edit78 = nil; end;
        if self.label87 ~= nil then self.label87:destroy(); self.label87 = nil; end;
        if self.label104 ~= nil then self.label104:destroy(); self.label104 = nil; end;
        if self.edit91 ~= nil then self.edit91:destroy(); self.edit91 = nil; end;
        if self.label25 ~= nil then self.label25:destroy(); self.label25 = nil; end;
        if self.flowPart119 ~= nil then self.flowPart119:destroy(); self.flowPart119 = nil; end;
        if self.AtrBut ~= nil then self.AtrBut:destroy(); self.AtrBut = nil; end;
        if self.flowPart21 ~= nil then self.flowPart21:destroy(); self.flowPart21 = nil; end;
        if self.edit22 ~= nil then self.edit22:destroy(); self.edit22 = nil; end;
        if self.flowPart213 ~= nil then self.flowPart213:destroy(); self.flowPart213 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.rectangle13 ~= nil then self.rectangle13:destroy(); self.rectangle13 = nil; end;
        if self.label141 ~= nil then self.label141:destroy(); self.label141 = nil; end;
        if self.flowPart206 ~= nil then self.flowPart206:destroy(); self.flowPart206 = nil; end;
        if self.checkBox1 ~= nil then self.checkBox1:destroy(); self.checkBox1 = nil; end;
        if self.edit20 ~= nil then self.edit20:destroy(); self.edit20 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmFichaRPGmeister1_svg()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmFichaRPGmeister1_svg();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmFichaRPGmeister1_svg = {
    newEditor = newfrmFichaRPGmeister1_svg, 
    new = newfrmFichaRPGmeister1_svg, 
    name = "frmFichaRPGmeister1_svg", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

frmFichaRPGmeister1_svg = _frmFichaRPGmeister1_svg;
Firecast.registrarForm(_frmFichaRPGmeister1_svg);

return _frmFichaRPGmeister1_svg;
