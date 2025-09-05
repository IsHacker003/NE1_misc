.class Lcom/android/settings/RadioInfo$14;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .line 1234
    iput-object p1, p0, Lcom/android/settings/RadioInfo$14;->this$0:Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1236
    iget-object p1, p0, Lcom/android/settings/RadioInfo$14;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {p1}, Lcom/android/settings/RadioInfo;->access$2600(Lcom/android/settings/RadioInfo;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result p1

    .line 1237
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 1240
    :cond_0
    iget-object p1, p0, Lcom/android/settings/RadioInfo$14;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {p1}, Lcom/android/settings/RadioInfo;->access$3600(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/Phone;->setUserDataEnabled(Z)V

    .line 1241
    goto :goto_0

    .line 1244
    :cond_1
    iget-object p1, p0, Lcom/android/settings/RadioInfo$14;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {p1}, Lcom/android/settings/RadioInfo;->access$3600(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/Phone;->setUserDataEnabled(Z)V

    .line 1245
    nop

    .line 1250
    :goto_0
    return v0
.end method
