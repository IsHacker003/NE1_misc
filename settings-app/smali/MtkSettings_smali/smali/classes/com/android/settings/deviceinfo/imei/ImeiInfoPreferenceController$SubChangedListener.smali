.class Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController$SubChangedListener;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "ImeiInfoPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubChangedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;Landroid/os/Looper;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController$SubChangedListener;->this$0:Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;

    .line 178
    invoke-direct {p0, p2}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>(Landroid/os/Looper;)V

    .line 179
    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 3

    .line 183
    const-string v0, "ImeiInfoPreferenceController"

    const-string v1, "onSubscriptionsChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController$SubChangedListener;->this$0:Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->access$000(Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController$SubChangedListener;->this$0:Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->access$000(Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/Preference;

    .line 186
    iget-object v2, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController$SubChangedListener;->this$0:Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;

    invoke-static {v2, v1, v0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->access$100(Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;Landroid/support/v7/preference/Preference;I)V

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 188
    :cond_0
    return-void
.end method
