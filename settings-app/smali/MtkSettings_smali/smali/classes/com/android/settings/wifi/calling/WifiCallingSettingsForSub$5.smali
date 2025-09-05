.class Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$5;
.super Ljava/lang/Object;
.source "WifiCallingSettingsForSub.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$rememberChoice:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;Landroid/content/Context;Landroid/widget/CheckBox;)V
    .locals 0

    .line 527
    iput-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$5;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    iput-object p2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$5;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$5;->val$rememberChoice:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 529
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$5;->val$context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "wifi_calling_never_show_again"

    .line 530
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$5;->val$rememberChoice:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 529
    invoke-static {p1, p2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 531
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$5;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    invoke-static {p1}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->access$500(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)V

    .line 532
    return-void
.end method
