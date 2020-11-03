import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttercheat/pages/absorbpointer.dart';
import 'package:fluttercheat/pages/alertdialog.dart';
import 'package:fluttercheat/pages/align.dart';
import 'package:fluttercheat/pages/animatedbuilder.dart';
import 'package:fluttercheat/pages/animatedcontainer.dart';
import 'package:fluttercheat/pages/animatedcrossfade.dart';
import 'package:fluttercheat/pages/animatedicon.dart';
import 'package:fluttercheat/pages/animatedlist.dart';
import 'package:fluttercheat/pages/animatedopacity.dart';
import 'package:fluttercheat/pages/animatedpadding.dart';
import 'package:fluttercheat/pages/animatedpositioned.dart';
import 'package:fluttercheat/pages/animatedswitcher.dart';
import 'package:fluttercheat/pages/animatedwidget.dart';
import 'package:fluttercheat/pages/aspectratio.dart';
import 'package:fluttercheat/pages/backdropfilter.dart';
import 'package:fluttercheat/pages/card.dart';
import 'package:fluttercheat/pages/clipoval.dart';
import 'package:fluttercheat/pages/clippath.dart';
import 'package:fluttercheat/pages/cliprrect.dart';
import 'package:fluttercheat/pages/colorfiltered.dart';
import 'package:fluttercheat/pages/constrainedbox.dart';
import 'package:fluttercheat/pages/container.dart';
import 'package:fluttercheat/pages/cupertinoactionsheet.dart';
import 'package:fluttercheat/pages/cupertinoactivityindicator.dart';
import 'package:fluttercheat/pages/custompaint.dart';
import 'package:fluttercheat/pages/datatable.dart';
import 'package:fluttercheat/pages/dismissible.dart';
import 'package:fluttercheat/pages/divider.dart';
import 'package:fluttercheat/pages/draggable.dart';
import 'package:fluttercheat/pages/draggablescrollablesheet.dart';
import 'package:fluttercheat/pages/drawer.dart';
import 'package:fluttercheat/pages/expanded.dart';
import 'package:fluttercheat/pages/fadeinimage.dart';
import 'package:fluttercheat/pages/fadetransition.dart';
import 'package:fluttercheat/pages/fittedbox.dart';
import 'package:fluttercheat/pages/flexible.dart';
import 'package:fluttercheat/pages/floatingactionbutton.dart';
import 'package:fluttercheat/pages/fractionallysizedbox.dart';
import 'package:fluttercheat/pages/futurebuilder.dart';
import 'package:fluttercheat/pages/hero.dart';
import 'package:fluttercheat/pages/ignorepointer.dart';
import 'package:fluttercheat/pages/image.dart';
import 'package:fluttercheat/pages/indexedstack.dart';
import 'package:fluttercheat/pages/inheritedmodel.dart';
import 'package:fluttercheat/pages/inheritedwidget.dart';
import 'package:fluttercheat/pages/layoutbuilder.dart';
import 'package:fluttercheat/pages/limitedbox.dart';
import 'package:fluttercheat/pages/listtile.dart';
import 'package:fluttercheat/pages/listview.dart';
import 'package:fluttercheat/pages/listwheelscrollview.dart';
import 'package:fluttercheat/pages/mediaquery.dart';
import 'package:fluttercheat/pages/notificationlistener.dart';
import 'package:fluttercheat/pages/opacity.dart';
import 'package:fluttercheat/pages/padding.dart';
import 'package:fluttercheat/pages/pageview.dart';
import 'package:fluttercheat/pages/placeholder.dart';
import 'package:fluttercheat/pages/positioned.dart';
import 'package:fluttercheat/pages/progressindicator.dart';
import 'package:fluttercheat/pages/reorderablelistview.dart';

import 'package:fluttercheat/pages/richtext.dart';
import 'package:fluttercheat/pages/safearea.dart';
import 'package:fluttercheat/pages/selectabletext.dart';
import 'package:fluttercheat/pages/semantics.dart';
import 'package:fluttercheat/pages/shadermask.dart';

import 'package:fluttercheat/pages/silverappbar.dart';
import 'package:fluttercheat/pages/silvergrid.dart';
import 'package:fluttercheat/pages/silverlist.dart';
import 'package:fluttercheat/pages/sizedbox.dart';
import 'package:fluttercheat/pages/slider.dart';
import 'package:fluttercheat/pages/snackbar.dart';
import 'package:fluttercheat/pages/spacer.dart';
import 'package:fluttercheat/pages/stack.dart';
import 'package:fluttercheat/pages/statefull.dart';
import 'package:fluttercheat/pages/streambuilder.dart';
import 'package:fluttercheat/pages/tabs.dart';
import 'package:fluttercheat/pages/togglebuttons.dart';
import 'package:fluttercheat/pages/tooltip.dart';
import 'package:fluttercheat/pages/transform.dart';
import 'package:fluttercheat/pages/tweenanimationbuilder.dart';
import 'package:fluttercheat/pages/valuelistenablebuilder.dart';
import 'package:fluttercheat/pages/wrap.dart';
import 'package:fluttercheat/pages/table.dart';

class Alldata {
  String code;
  Widget runapp;
  String appbartitle;
  Color appbarcolor;
  String url;
  Alldata(
      {this.code,
      this.runapp,
      this.appbartitle,
      this.appbarcolor,
      @required this.url});
}

List<Alldata> data = [
  Alldata(
      code: "safearea",
      runapp: SafeAreaWidget(),
      appbartitle: "Safe Area",
      appbarcolor: Colors.deepOrange,
      url:
          "https://www.youtube.com/watch?v=lkF0TQJO0bA&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=2"),
  Alldata(
      code: "expanded",
      runapp: ExpandedWidget(),
      appbartitle: "Expanded",
      appbarcolor: Colors.deepOrange,
      url:
          "https://www.youtube.com/watch?v=_rnZaagadyo&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=3"),
  Alldata(
      code: "wrap",
      runapp: WrapWidget(),
      appbartitle: "Wrap",
      appbarcolor: Colors.deepOrange,
      url:
          "https://www.youtube.com/watch?v=z5iw2SeFx2M&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=4"),
  Alldata(
      code: "animatedcontainer",
      runapp: AnimatedContainerWidget(),
      appbartitle: "Animated Container",
      appbarcolor: Colors.cyan,
      url:
          "https://www.youtube.com/watch?v=yI-8QHpGIP4&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=5"),
  Alldata(
      code: "opacity",
      runapp: OpacityWidget(),
      appbartitle: "Opacity",
      appbarcolor: Colors.cyan,
      url:
          "https://www.youtube.com/watch?v=9hltevOHQBw&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=6"),
  Alldata(
      code: "futurebuilder",
      runapp: FutureBuilderWidget(),
      appbartitle: "Future Builder",
      appbarcolor: Colors.cyan,
      url:
          "https://www.youtube.com/watch?v=ek8ZPdWj4Qo&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=7"),
  Alldata(
      code: "fadetransition",
      runapp: FadeTransitionWidget(),
      appbartitle: "Fade Transition",
      appbarcolor: Colors.blue,
      url:
          "https://www.youtube.com/watch?v=rLwWVbv3xDQ&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=8"),
  Alldata(
      code: "floatingactionbutton",
      runapp: FloatingActionButtonWidget(),
      appbartitle: "Floating ActionButton",
      appbarcolor: Colors.blue,
      url:
          "https://www.youtube.com/watch?v=2uaoEDOgk_I&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=9"),
  Alldata(
      code: "pageview",
      runapp: PageViewWidget(),
      appbartitle: "Page View ",
      appbarcolor: Colors.blue,
      url:
          "https://www.youtube.com/watch?v=J1gE9xvph-A&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=10"),
  Alldata(
      code: "table",
      runapp: TableWidget(),
      appbartitle: "Table ",
      appbarcolor: Colors.purple,
      url:
          "https://www.youtube.com/watch?v=_lbE0wsVZSw&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=11"),

  Alldata(
      code: "silverappbar",
      runapp: SliverAppBarDemo(),
      appbartitle: "Sliver AppBar",
      appbarcolor: Colors.red,
      url:
          "https://www.youtube.com/watch?v=R9C5KMJKluE&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=12"),
//silverlist
  Alldata(
      code: "silverlist",
      runapp: SliverListWidget(),
      appbartitle: "SliverList",
      appbarcolor: Colors.indigo,
      url:
          "https://www.youtube.com/watch?v=ORiTTaVY6mM&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=13"),
//silvergrid
  Alldata(
      code: "silvergrid",
      runapp: SliverGridWidget(),
      appbartitle: "SilverGrid",
      appbarcolor: Colors.indigo,
      url:
          "https://www.youtube.com/watch?v=ORiTTaVY6mM&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=13"),
  Alldata(
      code: "fadeinimage",
      runapp: FadeInImageWidget(),
      appbartitle: "Fade In Image",
      appbarcolor: Colors.red,
      url:
          "https://www.youtube.com/watch?v=pK738Pg9cxc&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=14"),

  Alldata(
      code: "streambuilder",
      runapp: StreamBuilderWidget(),
      appbartitle: "Stream Builder",
      appbarcolor: Colors.yellow,
      url:
          "https://www.youtube.com/watch?v=MkKEWHfy99Y&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=15"),
  Alldata(
      code: "inheritedmodel",
      runapp: InheritedWidgetWidget(),
      appbartitle: "Inherited Model",
      appbarcolor: Colors.yellow,
      url:
          "https://www.youtube.com/watch?v=ml5uefGgkaA&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=16"),
  Alldata(
      code: "cliprrect",
      runapp: ClipRRectWidget(),
      appbartitle: "ClipRRect",
      appbarcolor: Colors.yellow,
      url:
          "https://www.youtube.com/watch?v=eI43jkQkrvs&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=17"),
  Alldata(
      code: "hero",
      runapp: HeroWidget(),
      appbartitle: "Hero",
      appbarcolor: Colors.pink,
      url:
          "https://www.youtube.com/watch?v=Be9UH1kXFDw&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=18"),
  Alldata(
      code: "custompaint",
      runapp: CustomPaintWidget(),
      appbartitle: "Custom Paint",
      appbarcolor: Colors.pink,
      url:
          "https://www.youtube.com/watch?v=kp14Y4uHpHs&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=19"),
  Alldata(
      code: "tooltip",
      runapp: TooltipWidget(),
      appbartitle: "Tooltip",
      appbarcolor: Colors.pink,
      url:
          "https://www.youtube.com/watch?v=EeEfD5fI-5Q&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=20"),

  Alldata(
      code: "fittedbox",
      runapp: FittedBoxWidget(),
      appbartitle: "Fitted Box",
      appbarcolor: Colors.grey,
      url:
          "https://www.youtube.com/watch?v=T4Uehk3_wlY&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=21"),
  Alldata(
      code: "layoutbuilder",
      runapp: LayoutBuilderWidget(),
      appbartitle: "Layout Builder",
      appbarcolor: Colors.grey,
      url:
          "https://www.youtube.com/watch?v=IYDVcriKjsw&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=22"),
  Alldata(
      code: "absorbpointer",
      runapp: AbsorbPointerWidget(),
      appbartitle: "Absorb Pointer",
      appbarcolor: Colors.grey,
      url:
          "https://www.youtube.com/watch?v=65HoWqBboI8&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=23"),
  Alldata(
      code: "transform",
      runapp: TransformWidget(),
      appbartitle: "Transform",
      appbarcolor: Colors.grey,
      url:
          "https://www.youtube.com/watch?v=9z_YNlRlWfA&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=24"),

  Alldata(
      code: "backdropfilter",
      runapp: BackdropFilterWidget(),
      appbartitle: "Backdrop Filter",
      appbarcolor: Colors.orange,
      url:
          "https://www.youtube.com/watch?v=dYRs7Q1vfYI&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=25"),
  Alldata(
      code: "align",
      runapp: AlignWidget(),
      appbartitle: "Align",
      appbarcolor: Colors.orange,
      url:
          "https://www.youtube.com/watch?v=g2E7yl3MwMk&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=26"),
  Alldata(
      code: "positioned",
      runapp: PositionedWidget(),
      appbartitle: "Positioned",
      appbarcolor: Colors.orange,
      url:
          "https://www.youtube.com/watch?v=EgtPleVwxBQ&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=27"),
  Alldata(
      code: "animatedbuilder",
      runapp: AnimatedBuilderWidget(),
      appbartitle: "Animated Builder",
      appbarcolor: Colors.orange,
      url:
          "https://www.youtube.com/watch?v=N-RiyZlv8v8&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=28"),
  Alldata(
      code: "dismissible",
      runapp: DismissibleWidget(),
      appbartitle: "Dismissible",
      appbarcolor: Colors.orange,
      url:
          "https://www.youtube.com/watch?v=iEMgjrfuc58&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=29"),

  Alldata(
      code: "sizedbox",
      runapp: SizedBoxWidget(),
      appbartitle: "Sized Box",
      appbarcolor: Colors.orange,
      url:
          "https://www.youtube.com/watch?v=EHPu_DzRfqA&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=30"),
  Alldata(
      code: "valuelistenablebuilder",
      runapp: ValueListenableBuilderWidget(),
      appbartitle: "Value Listenable Builder",
      appbarcolor: Colors.indigo,
      url:
          "https://www.youtube.com/watch?v=s-ZG-jS5QHQ&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=31"),
  Alldata(
      code: "draggable",
      runapp: DraggableWidget(),
      appbartitle: "Draggable",
      appbarcolor: Colors.indigo,
      url:
          "https://www.youtube.com/watch?v=QzA4c4QHZCY&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=32"),
  Alldata(
      code: "animatedlist",
      runapp: AnimatedListWidget(),
      appbartitle: "Animated List",
      appbarcolor: Colors.indigo,
      url:
          "https://www.youtube.com/watch?v=ZtfItHwFlZ8&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=33"),
  Alldata(
      code: "flexible",
      runapp: FlexibleWidget(),
      appbartitle: "Flexible",
      appbarcolor: Colors.indigo,
      url:
          "https://www.youtube.com/watch?v=CI7x0mAZiY0&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=34"),
  Alldata(
      code: "spacer",
      runapp: SpacerWidget(),
      appbartitle: "Spacer",
      appbarcolor: Colors.indigo,
      url:
          "https://www.youtube.com/watch?v=7FJgd7QN1zI&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=36"),
//mediquery
  Alldata(
      code: "mediaquery",
      runapp: MediaQueryWidget(),
      appbartitle: "MediaQuery",
      appbarcolor: Colors.indigo,
      url:
          "https://www.youtube.com/watch?v=A3WrA4zAaPw&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=35"),
//inheritedwidget
  /*Alldata(
      code: "inheritedwidget",
      runapp: MyInherited(),
      appbartitle: "InheritedWidget",
      appbarcolor: Colors.indigo,
      url:
          "https://www.youtube.com/watch?v=1t-8rBCGBYw&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=37"),*/
  Alldata(
      code: "animatedicon",
      runapp: AnimatedIconWidget(),
      appbartitle: "Animated Icon",
      appbarcolor: Colors.purple,
      url:
          "https://www.youtube.com/watch?v=pJcbh8pbvJs&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=38"),
  Alldata(
      code: "aspectratio",
      runapp: AspectRatioWidget(),
      appbartitle: "Aspect Ratio",
      appbarcolor: Colors.purple,
      url:
          "https://www.youtube.com/watch?v=XcnP3_mO_Ms&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=39"),
  Alldata(
      code: "limitedbox",
      runapp: LimitedBoxWidget(),
      appbartitle: "Limited Box",
      appbarcolor: Colors.purple,
      url:
          "https://www.youtube.com/watch?v=uVki2CIzBTs&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=40"),
  Alldata(
      code: "placeholder",
      runapp: PlaceholderWidget(),
      appbartitle: "Placeholder",
      appbarcolor: Colors.purple,
      url:
          "https://www.youtube.com/watch?v=LPe56fezmoo&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=41"),
  Alldata(
      code: "richtext",
      runapp: Richtexts(),
      appbartitle: "Richtexts",
      appbarcolor: Colors.purple,
      url:
          "https://www.youtube.com/watch?v=rykDVh-QFfw&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=42"),
//
  Alldata(
      code: "reorderablelistview",
      runapp: ReorderableListViewWidget(),
      appbartitle: "Reorderable List View",
      appbarcolor: Colors.green,
      url:
          "https://www.youtube.com/watch?v=3fB1mxOsqJE&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=43"),
  Alldata(
      code: "animatedswitcher",
      runapp: AnimatedSwitcherWidget(),
      appbartitle: "Animated Switcher",
      appbarcolor: Colors.green,
      url:
          "https://www.youtube.com/watch?v=2W7POjFb88g&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=44"),
  Alldata(
      code: "animatedpositioned",
      runapp: AnimatedPositionedWidget(),
      appbartitle: "Animated Positioned",
      appbarcolor: Colors.green,
      url:
          "https://www.youtube.com/watch?v=hC3s2YdtWt8&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=45"),
  Alldata(
      code: "animatedpadding",
      runapp: AnimatedPaddingWidget(),
      appbartitle: "Animated Padding",
      appbarcolor: Colors.green,
      url:
          "https://www.youtube.com/watch?v=PY2m0fhGNz4&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=46"),
//indexedstack
  Alldata(
      code: "indexedstack",
      runapp: MYIndexedStack(),
      appbartitle: "IndexedStack",
      appbarcolor: Colors.indigo,
      url:
          "https://www.youtube.com/watch?v=_O0PPD1Xfbk&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=47"),
//semantics
  Alldata(
      code: "semantics",
      runapp: SemanticsWidget(),
      appbartitle: "Semantics",
      appbarcolor: Colors.indigo,
      url:
          "https://www.youtube.com/watch?v=NvtMt_DtFrQ&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=48"),
  Alldata(
      code: "constrainedbox",
      runapp: ConstrainedBoxWidget(),
      appbartitle: "ConstrainedBox",
      appbarcolor: Colors.blue,
      url:
          "https://www.youtube.com/watch?v=o2KveVr7adg&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=49"),
  Alldata(
      code: "stack",
      runapp: StackWidget(),
      appbartitle: "Stack",
      appbarcolor: Colors.blue,
      url:
          "https://www.youtube.com/watch?v=liEGSeD3Zt8&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=50"),
  Alldata(
      code: "animatedopacity",
      runapp: AnimatedOpacityWidget(),
      appbartitle: "AnimatedOpacity",
      appbarcolor: Colors.blue,
      url:
          "https://www.youtube.com/watch?v=QZAvjqOqiLY&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=51"),
  Alldata(
      code: "fractionallysizedbox",
      runapp: FractionallySizedBoxWidget(),
      appbartitle: "FractionallySizedBox",
      appbarcolor: Colors.blue,
      url:
          "https://www.youtube.com/watch?v=PEsY654EGZ0&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=52"),
  Alldata(
      code: "listview",
      runapp: ListViewWidget(),
      appbartitle: "ListView",
      appbarcolor: Colors.blue,
      url:
          "https://www.youtube.com/watch?v=KJpkjHGiI5A&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=53"),
//listtile
  Alldata(
      code: "listtile",
      runapp: ListtileWidget(),
      appbartitle: "Listtile",
      appbarcolor: Colors.indigo,
      url:
          "https://www.youtube.com/watch?v=l8dj0yPBvgQ&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=54"),
  Alldata(
      code: "container",
      runapp: ContainerWidget(),
      appbartitle: "Container",
      appbarcolor: Colors.teal,
      url:
          "https://www.youtube.com/watch?v=c1xLMaTUWCY&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=55"),

//selectabletext
  Alldata(
      code: "selectabletext",
      runapp: SelectableWidget(),
      appbartitle: "SelectableText",
      appbarcolor: Colors.indigo,
      url:
          "https://www.youtube.com/watch?v=ZSU3ZXOs6hc&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=56"),
  Alldata(
      code: "datatable",
      runapp: DatatableWidget(),
      appbartitle: "Datatable",
      appbarcolor: Colors.teal,
      url:
          "https://www.youtube.com/watch?v=ktTajqbhIcY&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=57"),
  Alldata(
      code: "slider",
      runapp: SliderWidget(),
      appbartitle: "Slider",
      appbarcolor: Colors.teal,
      url:
          "https://www.youtube.com/watch?v=ufb4gIPDmEs&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=58"),
  Alldata(
      code: "alertdialog",
      runapp: AlertdialogWidget(),
      appbartitle: "Alertdialog",
      appbarcolor: Colors.teal,
      url:
          "https://www.youtube.com/watch?v=75CsnyRXf5I&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=59"),
  Alldata(
      code: "animatedcrossfade",
      runapp: AnimatedCrossFadeWidget(),
      appbartitle: "AnimatedCrossFade",
      appbarcolor: Colors.lime,
      url:
          "https://www.youtube.com/watch?v=PGK2UUAyE54&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=60"),
//dragablescrollsheet
  Alldata(
      code: "draggablescrollablesheet",
      runapp: DraggableScrollSheeetWidget(),
      appbartitle: "DraggableScrollSheeet",
      appbarcolor: Colors.indigo,
      url:
          "https://www.youtube.com/watch?v=Hgw819mL_78&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=61"),
  Alldata(
      code: "colorfiltered",
      runapp: ColorFilteredWidget(),
      appbartitle: "ColorFiltered",
      appbarcolor: Colors.lime,
      url:
          "https://www.youtube.com/watch?v=F7Cll22Dno8&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=62"),
  Alldata(
      code: "togglebuttons",
      runapp: ToggleButtonWidget(),
      appbartitle: "ToggleButton",
      appbarcolor: Colors.lime,
      url:
          "https://www.youtube.com/watch?v=kVEguaQWGAY&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=63"),
  Alldata(
      code: "cupertinoactionsheet",
      runapp: CupertinoActionSheetWidget(),
      appbartitle: "CupertinoActionSheet",
      appbarcolor: Colors.lime,
      url:
          "https://www.youtube.com/watch?v=U-ao8p4A82k&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=64"),
  Alldata(
      code: "tweenanimationbuilder",
      runapp: TweenanimationWidget(),
      appbartitle: "TweenAnimationBuilder",
      appbarcolor: Colors.lime,
      url:
          "https://www.youtube.com/watch?v=l9uHB8VXZOg&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=65"),
  Alldata(
      code: "image",
      runapp: ImageWidget(),
      appbartitle: "Image",
      appbarcolor: Colors.amber,
      url:
          "https://www.youtube.com/watch?v=7oIAs-0G4mw&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=66"),
  Alldata(
      code: "tabs",
      runapp: TabBarWidget(),
      appbartitle: "Tabs",
      appbarcolor: Colors.amber,
      url:
          "https://www.youtube.com/watch?v=POtoEH-5l40&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=67"),
  Alldata(
      code: "drawer",
      runapp: DrawerWidget(),
      appbartitle: "Drawer",
      appbarcolor: Colors.amber,
      url:
          "https://www.youtube.com/watch?v=WRj86iHihgY&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=68"),
  Alldata(
      code: "snackbar",
      runapp: SnackBarWidget(),
      appbartitle: "SnackBar",
      appbarcolor: Colors.amber,
      url:
          "https://www.youtube.com/watch?v=zpO6n_oZWw0&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=69"),
  Alldata(
      code: "listwheelscrollview",
      runapp: ScrollWheelList(),
      appbartitle: "ListWheelScrollview",
      appbarcolor: Colors.amber,
      url:
          "https://www.youtube.com/watch?v=dUhmWAz4C7Y&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=70"),
  Alldata(
      code: "shadermask",
      runapp: ShaderMaskWidget(),
      appbartitle: "ShaderMask",
      appbarcolor: Colors.amber,
      url:
          "https://www.youtube.com/watch?v=7sUL66pTQ7Q&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=71"),
  Alldata(
      code: "notificationlistener",
      runapp: NotificationListenerWidget(),
      appbartitle: "NotificationListener",
      appbarcolor: Colors.blueGrey,
      url:
          "https://www.youtube.com/watch?v=cAnFbFoGM50&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=72"),
//builder
  Alldata(
      code: "clippath",
      runapp: ClipPathWidget(),
      appbartitle: "ClipPath",
      appbarcolor: Colors.blueGrey,
      url:
          "https://www.youtube.com/watch?v=oAUebVIb-7s&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=74"),
  Alldata(
      code: "progressindicator",
      runapp: LinearProgressIndicatorWidget(),
      appbartitle: "ProgressIndicator",
      appbarcolor: Colors.blueGrey,
      url:
          "https://www.youtube.com/watch?v=O-rhXZLtpv0&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=75"),
  Alldata(
      code: "divider",
      runapp: DividerWidget(),
      appbartitle: "Divider",
      appbarcolor: Colors.blueGrey,
      url:
          "https://www.youtube.com/watch?v=_liUC641Nmk&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=76"),
  Alldata(
      code: "ignorepointer",
      runapp: IgnorePointerWidget(),
      appbartitle: "IgnorePointer",
      appbarcolor: Colors.blueGrey,
      url:
          "https://www.youtube.com/watch?v=qV9pqHWxYgI&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=77"),
  Alldata(
      code: "cupertinoactivityindicator",
      runapp: CupertinoActivityIndicatorWidget(),
      appbartitle: "CupertinoActivityIndicator",
      appbarcolor: Colors.blueGrey,
      url:
          "https://www.youtube.com/watch?v=AENVH-ZqKDQ&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=78"),
  Alldata(
      code: "clipoval",
      runapp: ClipOvalWidget(),
      appbartitle: "ClipOval",
      appbarcolor: Colors.blueGrey,
      url:
          "https://www.youtube.com/watch?v=vzWWDO6whIM&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=79"),
  Alldata(
      code: "animatedwidget",
      runapp: AnimatedWidgetWidget(),
      appbartitle: "AnimatedWidget",
      appbarcolor: Colors.blueGrey,
      url:
          "https://www.youtube.com/watch?v=LKKgYpC-EPQ&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=80"),
  Alldata(
      code: "padding",
      runapp: PaddingWidget(),
      appbartitle: "Padding",
      appbarcolor: Colors.blueGrey,
      url:
          "https://www.youtube.com/watch?v=oD5RtLhhubg&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=81")
];
