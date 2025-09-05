.class Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$6;
.super Ljava/lang/Object;
.source "WifiCallingSettingsForSub.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->onSwitchChanged(Landroid/widget/Switch;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)V
    .locals 0

    .line 536
    iput-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$6;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 539
    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    .line 540
    const/4 p1, 0x1

    return p1

    .line 542
    :cond_0
    const/4 p1, 0x0

    return p1
.end method
