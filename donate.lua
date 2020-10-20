require "import"
import "loadlayout"
import "android.app.*"
import "android.os.*"
import "android.widget.*"
import "android.view.*"
import "android.graphics.Color"
import "android.support.v7.widget.*"

yejian="/data/data/"..activity.getPackageName().."/yejian.xml"
import "java.io.File"
local aa=(File(yejian).length())
if aa==0 then
  File(yejian).createNewFile()
  io.open(yejian,"w+"):write("关闭"):close()
else
  File(yejian).createNewFile()
  yejian=io.open(yejian):read("*a")
end
if yejian=="开启" then
  color1="#FF212121"
  color2="#FFAAAAAA"
  color3="#60FFFFFF"
  activity.getWindow().addFlags(WindowManager.LayoutParams.FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS).setStatusBarColor(0xff212121);
  if tonumber(Build.VERSION.SDK) >= 23 then
    activity.getWindow().getDecorView().setSystemUiVisibility(0);
  end
else
  color1="#FFFFFFFF"
  color2="#FF000000"
  color3="#60000000"
  activity.getWindow().addFlags(WindowManager.LayoutParams.FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS).setStatusBarColor(0xffffffff);
  if tonumber(Build.VERSION.SDK) >= 23 then
    activity.getWindow().getDecorView().setSystemUiVisibility(View.SYSTEM_UI_FLAG_LIGHT_STATUS_BAR);
  end
end

layout={
  LinearLayout;
  orientation="vertical";
  layout_width="fill";
  layout_height="fill";
  {
    RelativeLayout;
    layout_width="fill";
    paddingBottom="4dp";
    layout_height="48dp";
    paddingTop="4dp";
    gravity="left";
    background=color1;
    {
      ImageButton;
      layout_width="30dp";
      style="?android:attr/buttonBarButtonStyle";
      layout_centerVertical="true";
      padding="0dp";
      id="back";
      layout_marginLeft="10dp";
      paddingRight="2dp";
      layout_marginRight="12dp";
      layout_height="fill";
      paddingLeft="2dp";
      src="back.png";
      background="#00000000";
      colorFilter=color2;
    };
    {
      TextView;
      layout_width="wrap_content";
      text="捐赠";
      layout_centerVertical="true";
      id="title";
      textColor=color2;
      layout_height="fill";
      gravity="center";
      textSize="20dp";
      layout_toRightOf="back";
    };
  };
  {
    ScrollView;
    id="main";
    background=color1;
    {
      LinearLayout;
      orientation="vertical";
      layout_width="fill";
      layout_height="fill";
      {
        CardView;
        layout_width="fill";
        elevation="4dp";
        layout_margin="10dp";
        layout_marginLeft="20dp";
        layout_marginRight="20dp";
        layout_height="wrap";
        id="cardAlipay";
        radius="10dp";
        {
          RelativeLayout;
          background=color1;
          id="cardInnerAlipay";
          {
            RelativeLayout;
            id="imgHolder1";
            layout_width="fill";
            layout_height="wrap";
            {
              ImageView;
              id="img1";
              src="donate1.png";
              layout_width="213dp";
              layout_height="120dp";
              layout_centerInParent="true";
              layout_marginTop="5dp";
            };
          };
          {
            RelativeLayout;
            layout_below="imgHolder1";
            layout_width="fill";
            padding="10dp";
            {
              TextView;
              text="支付宝捐赠";
              textColor=color2;
              textSize="16sp";
              id="title1";
            };
            {
              TextView;
              text="请我喝阔落";
              layout_alignLeft="title1";
              layout_below="title1";
              textColor=color3;
            };
            {
              RelativeLayout;
              layout_alignParentRight="true";
              elevation="0dp";
              layout_height="35dp";
              layout_centerVertical="true";
              background="#FF2C7BF2";
              layout_width="100dp";
              id="buttonCard1";
              {
                Button;
                style="?android:attr/buttonBarButtonStyle";
                layout_width="fill";
                textColor="#FFFFFF";
                layout_height="fill";
                text="立即捐赠";
                padding="5dp";
                background="#00000000";
                id="buttonAlipay";
              };
            };
          };
        };
      };
      {
        CardView;
        layout_width="fill";
        elevation="4dp";
        layout_margin="10dp";
        layout_marginLeft="20dp";
        layout_marginRight="20dp";
        layout_height="wrap";
        id="cardHongbao";
        radius="10dp";
        {
          RelativeLayout;
          background=color1;
          id="cardInnerHongbao";
          {
            RelativeLayout;
            id="imgHolder2";
            layout_width="fill";
            layout_height="wrap";
            {
              ImageView;
              id="img2";
              src="donate2.png";
              layout_width="213dp";
              layout_height="120dp";
              layout_centerInParent="true";
              layout_marginTop="5dp";
            };
          };
          {
            RelativeLayout;
            layout_below="imgHolder2";
            layout_width="fill";
            padding="10dp";
            {
              TextView;
              text="蚂蚁森林";
              textColor=color2;
              textSize="16sp";
              id="title2";
            };
            {
              TextView;
              text="收个能量吧";
              layout_alignLeft="title2";
              layout_below="title2";
              textColor=color3;
            };
            {
              RelativeLayout;
              layout_alignParentRight="true";
              elevation="0dp";
              layout_height="35dp";
              layout_centerVertical="true";
              background="#FF2C7BF2";
              layout_width="100dp";
              id="buttonCard2";
              {
                Button;
                textColor="#FFFFFF";
                layout_width="fill";
                style="?android:attr/buttonBarButtonStyle";
                layout_height="fill";
                text="立即领取";
                padding="5dp";
                background="#00000000";
                id="buttonHongbao";
              };
            };
          };
        };
      };
      {
        CardView;
        layout_width="fill";
        elevation="4dp";
        layout_margin="10dp";
        layout_marginLeft="20dp";
        layout_marginRight="20dp";
        layout_height="wrap";
        id="cardWechat";
        radius="10dp";
        {
          RelativeLayout;
          background=color1;
          id="cardInnerWechat";
          {
            RelativeLayout;
            id="imgHolder3";
            layout_width="fill";
            layout_height="wrap";
            {
              ImageView;
              id="img3";
              src="donate3.png";
              layout_width="213dp";
              layout_height="120dp";
              layout_centerInParent="true";
              layout_marginTop="5dp";
            };
          };
          {
            RelativeLayout;
            layout_below="imgHolder3";
            layout_width="fill";
            padding="10dp";
            {
              TextView;
              text="微信捐赠";
              textColor=color2;
              textSize="16sp";
              id="title3";
            };
            {
              TextView;
              text="请我喝咖啡";
              layout_alignLeft="title3";
              layout_below="title3";
              textColor=color3;
            };
            {
              RelativeLayout;
              layout_alignParentRight="true";
              elevation="0dp";
              layout_height="35dp";
              layout_centerVertical="true";
              background="#FF2C7BF2";
              layout_width="100dp";
              id="buttonCard3";
              {
                Button;
                style="?android:attr/buttonBarButtonStyle";
                layout_width="fill";
                textColor="#FFFFFF";
                layout_height="fill";
                text="立即捐赠";
                padding="5dp";
                background="#00000000";
                id="buttonWechat";
              };
            };
          };
        };
      };
    };
  };
};

function CircleButton(view,InsideColor,radiu)
  import "android.graphics.drawable.GradientDrawable"
  drawable = GradientDrawable() 
  drawable.setShape(GradientDrawable.RECTANGLE) 
  drawable.setColor(InsideColor)
  drawable.setCornerRadii({radiu,radiu,radiu,radiu,radiu,radiu,radiu,radiu});
  view.setBackgroundDrawable(drawable)
end
activity.setContentView(loadlayout(layout))

CircleButton(cardAlipay,Color.parseColor(color1),30)
CircleButton(cardInnerAlipay,Color.parseColor(color1),30)

CircleButton(cardHongbao,Color.parseColor(color1),30)
CircleButton(cardInnerHongbao,Color.parseColor(color1),30)

CircleButton(cardWechat,Color.parseColor(color1),30)
CircleButton(cardInnerWechat,Color.parseColor(color1),30)

--[[
drawable1 = RoundedBitmapDrawableFactory.create(this.getContext().getResources(),loadbitmap("donate1.png"))
drawable1.setCornerRadius(30)
img1.setBackground(drawable1)

drawable2 = RoundedBitmapDrawableFactory.create(this.getContext().getResources(),loadbitmap("donate2.png"))
drawable2.setCornerRadius(30)
img2.setBackground(drawable2)

drawable3 = RoundedBitmapDrawableFactory.create(this.getContext().getResources(),loadbitmap("donate3.png"))
drawable3.setCornerRadius(30)
img3.setBackground(drawable3)
]]--
btnDrawable = GradientDrawable(GradientDrawable.Orientation.TL_BR,{0xFF3DA3DF,0xFF2C7BF2});
btnDrawable.setShape(GradientDrawable.RECTANGLE)
btnDrawable.setCornerRadii({500,500,500,500,500,500,500,500});
buttonCard1.setBackground(btnDrawable);
buttonCard2.setBackground(btnDrawable);
buttonCard3.setBackground(btnDrawable);
buttonAlipay.onClick=function()
  print("正在启动支付宝")
  import "android.content.Intent"
  import "android.net.Uri"
  xpcall(function() 
    local url="alipayqr://platformapi/startapp?saId=10000007&qrcode=https://qr.alipay.com/fkx12363svtgb3knkkrl7ab"
    activity.startActivity(Intent(Intent.ACTION_VIEW, Uri.parse(url)));
  end,
  function()
    local url = "https://qr.alipay.com/fkx12363svtgb3knkkrl7ab";
    activity.startActivity(Intent(Intent.ACTION_VIEW, Uri.parse(url)));
  end)
end
buttonHongbao.onClick=function()
  print("正在启动支付宝")
  import "android.content.Intent"
  import "android.net.Uri"
  xpcall(function() 
    local url="alipayqr://platformapi/startapp?saId=60000002&qrcode=https://qr.alipay.com/"
    activity.startActivity(Intent(Intent.ACTION_VIEW, Uri.parse(url)));
  end,
  function()
    local url = "https://qr.alipay.com/";
    activity.startActivity(Intent(Intent.ACTION_VIEW, Uri.parse(url)));
  end)
end
function DialogButtonFilter(dialog,button,WidgetColor)
  if Build.VERSION.SDK_INT >= 21 then
    import "android.graphics.PorterDuffColorFilter"
    import "android.graphics.PorterDuff"
    if button==1 then
      dialog.getButton(dialog.BUTTON_POSITIVE).setTextColor(WidgetColor)
    elseif button==2 then
      dialog.getButton(dialog.BUTTON_NEGATIVE).setTextColor(WidgetColor)
    elseif button==3 then
      dialog.getButton(dialog.BUTTON_NEUTRAL).setTextColor(WidgetColor)
    end
  end
end
buttonWechat.onClick=function()
  qrcodeImg = ImageView(this)
  qrcodeImg.setImageBitmap(loadbitmap("wechat_donate_qrcode.png"))
  qrcodeImg.setScaleType(ImageView.ScaleType.CENTER)
  print("由于微信限制，请手动截图")
  dl=AlertDialog.Builder(this)
  .setView(qrcodeImg)
  .setTitle("捐赠二维码")
  .setPositiveButton("打开微信",{onClick=function(v)
  xpcall(function()
      packageName="com.tencent.mm"
      import "android.content.Intent"
      import "android.content.pm.PackageManager"
      manager = activity.getPackageManager()
      open = manager.getLaunchIntentForPackage(packageName)
      this.startActivity(open)
      end,
      function()
        print("未安装微信")
      end)
    end})
  .setNegativeButton("关闭",nil)
  imgDia=dl.show()
  DialogButtonFilter(imgDia,1,0xFF2C7BF2)
  DialogButtonFilter(imgDia,2,0xFF2C7BF2)
end
back.onClick=function()
  activity.finish()
  end
