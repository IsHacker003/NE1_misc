.class Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$2;
.super Ljava/lang/Object;
.source "WifiCallingSettingsForSub.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;
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

    .line 180
    iput-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$2;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    .line 186
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$2;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    invoke-static {p1}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->access$200(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)Landroid/content/Intent;

    move-result-object p1

    .line 187
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 188
    const-string v1, "EXTRA_LAUNCH_CARRIER_APP"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 189
    iget-object v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$2;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    invoke-virtual {v1, p1}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->startActivity(Landroid/content/Intent;)V

    .line 191
    :cond_0
    return v0
.end method
