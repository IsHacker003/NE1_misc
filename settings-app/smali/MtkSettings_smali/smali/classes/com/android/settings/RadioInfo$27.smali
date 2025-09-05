.class Lcom/android/settings/RadioInfo$27;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 1477
    iput-object p1, p0, Lcom/android/settings/RadioInfo$27;->this$0:Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1479
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.android.settings.TRIGGER_CARRIER_PROVISIONING"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1480
    const-string v0, "com.android.omadm.service/.DMIntentReceiver"

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 1482
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1483
    iget-object v0, p0, Lcom/android/settings/RadioInfo$27;->this$0:Lcom/android/settings/RadioInfo;

    invoke-virtual {v0, p1}, Lcom/android/settings/RadioInfo;->sendBroadcast(Landroid/content/Intent;)V

    .line 1484
    return-void
.end method
