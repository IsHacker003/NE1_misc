.class public Lcom/android/settings/deviceinfo/InvalidBatteryActivity;
.super Landroid/app/Activity;
.source "InvalidBatteryActivity.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private enableDialog:Landroid/app/AlertDialog;

.field private mStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 24
    const-string v0, "InvalidBatteryActivity"

    iput-object v0, p0, Lcom/android/settings/deviceinfo/InvalidBatteryActivity;->TAG:Ljava/lang/String;

    .line 28
    new-instance v0, Lcom/android/settings/deviceinfo/InvalidBatteryActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/InvalidBatteryActivity$1;-><init>(Lcom/android/settings/deviceinfo/InvalidBatteryActivity;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/InvalidBatteryActivity;->mStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/InvalidBatteryActivity;)Landroid/app/AlertDialog;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/android/settings/deviceinfo/InvalidBatteryActivity;->enableDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/settings/deviceinfo/InvalidBatteryActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/android/settings/deviceinfo/InvalidBatteryActivity;->enableDialog:Landroid/app/AlertDialog;

    return-object p1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const-string p1, "persist.sys.invalid.battery.activity"

    const-string v0, "1"

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance p1, Landroid/view/ContextThemeWrapper;

    const v0, 0x103013f    # @android:style/Theme.DeviceDefault.Light.DarkActionBar

    invoke-direct {p1, p0, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 47
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 48
    const p1, 0x7f12062b    # @string/fih_invalid_battery_title 'Warning'

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 49
    const p1, 0x7f12120b    # @string/zzz_fih_invalid_battery_charging 'Genuine batteries recommended, unapproved batteries may cause unexpected hazards such as fire or exp ...'

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 50
    new-instance p1, Lcom/android/settings/deviceinfo/InvalidBatteryActivity$2;

    invoke-direct {p1, p0}, Lcom/android/settings/deviceinfo/InvalidBatteryActivity$2;-><init>(Lcom/android/settings/deviceinfo/InvalidBatteryActivity;)V

    const v1, 0x104000a    # @android:string/ok

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 62
    new-instance p1, Lcom/android/settings/deviceinfo/InvalidBatteryActivity$3;

    invoke-direct {p1, p0}, Lcom/android/settings/deviceinfo/InvalidBatteryActivity$3;-><init>(Lcom/android/settings/deviceinfo/InvalidBatteryActivity;)V

    const/high16 v1, 0x1040000    # @android:string/cancel

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 73
    new-instance p1, Lcom/android/settings/deviceinfo/InvalidBatteryActivity$4;

    invoke-direct {p1, p0}, Lcom/android/settings/deviceinfo/InvalidBatteryActivity$4;-><init>(Lcom/android/settings/deviceinfo/InvalidBatteryActivity;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 79
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/InvalidBatteryActivity;->enableDialog:Landroid/app/AlertDialog;

    .line 80
    iget-object p1, p0, Lcom/android/settings/deviceinfo/InvalidBatteryActivity;->enableDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 81
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 99
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 100
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 86
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 87
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 88
    const-string v1, "android.fih.action.invalidbattery"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lcom/android/settings/deviceinfo/InvalidBatteryActivity;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/deviceinfo/InvalidBatteryActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 90
    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 94
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 95
    return-void
.end method
