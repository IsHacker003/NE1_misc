.class Lcom/android/settings/wfd/WifiDisplaySettings$12;
.super Ljava/lang/Object;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wfd/WifiDisplaySettings;->showWifiDisplayOptionsDialog(Landroid/hardware/display/WifiDisplay;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

.field final synthetic val$display:Landroid/hardware/display/WifiDisplay;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)V
    .locals 0

    .line 717
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$12;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iput-object p2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$12;->val$display:Landroid/hardware/display/WifiDisplay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 720
    iget-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$12;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$000(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/hardware/display/DisplayManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$12;->val$display:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {p2}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/hardware/display/DisplayManager;->forgetWifiDisplay(Ljava/lang/String;)V

    .line 721
    return-void
.end method
