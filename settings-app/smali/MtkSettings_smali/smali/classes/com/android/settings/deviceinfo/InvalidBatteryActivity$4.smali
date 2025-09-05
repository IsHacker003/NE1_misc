.class Lcom/android/settings/deviceinfo/InvalidBatteryActivity$4;
.super Ljava/lang/Object;
.source "InvalidBatteryActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/InvalidBatteryActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/InvalidBatteryActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/InvalidBatteryActivity;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/android/settings/deviceinfo/InvalidBatteryActivity$4;->this$0:Lcom/android/settings/deviceinfo/InvalidBatteryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 76
    iget-object p1, p0, Lcom/android/settings/deviceinfo/InvalidBatteryActivity$4;->this$0:Lcom/android/settings/deviceinfo/InvalidBatteryActivity;

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/InvalidBatteryActivity;->finish()V

    .line 77
    return-void
.end method
