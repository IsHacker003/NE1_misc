.class Lcom/android/settings/wfd/WifiDisplaySettings$6;
.super Ljava/lang/Object;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wfd/WifiDisplaySettings;->buildCertificationMenu(Landroid/support/v7/preference/PreferenceScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V
    .locals 0

    .line 585
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$6;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 588
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 589
    iget-object p2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$6;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {p2}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$800(Lcom/android/settings/wfd/WifiDisplaySettings;)I

    move-result p2

    if-eq p1, p2, :cond_0

    .line 590
    iget-object p2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$6;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {p2, p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$802(Lcom/android/settings/wfd/WifiDisplaySettings;I)I

    .line 591
    iget-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$6;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-virtual {p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 592
    iget-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$6;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object p2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$6;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {p2}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$700(Lcom/android/settings/wfd/WifiDisplaySettings;)I

    move-result p2

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$6;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$800(Lcom/android/settings/wfd/WifiDisplaySettings;)I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$900(Lcom/android/settings/wfd/WifiDisplaySettings;II)V

    .line 594
    :cond_0
    const/4 p1, 0x1

    return p1
.end method
